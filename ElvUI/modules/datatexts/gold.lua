local E, L, V, P, G = unpack(select(2, ...));
local DT = E:GetModule('DataTexts');

local floor = math.floor;
local abs = math.abs;
local format = string.format;
local join = string.join;

local Profit = 0;
local Spent = 0;

local function FormatMoney(money)
	local gold, silver, copper = floor(abs(money / 10000)), abs(mod(money / 100, 100)), abs(mod(money, 100));
	
	if ( gold ~= 0 ) then
		return format(join('', "%s", L.goldabbrev, ' %.2d', L.silverabbrev, ' %.2d', L.copperabbrev), gold, silver, copper);
	elseif ( silver ~= 0 ) then
		return format(join('', '%d', L.silverabbrev, ' %.2d', L.copperabbrev), silver, copper);
	else
		return format(join('', '%d', L.copperabbrev), copper);
	end
end

local function FormatTooltipMoney(money)
	if ( not money ) then return; end
	
	local gold, silver, copper = floor(abs(money / 10000)), abs(mod(money / 100, 100)), abs(mod(money, 100));
	
	return format(join('', '%s', L.goldabbrev, ' %.2d', L.silverabbrev, ' %.2d', L.copperabbrev), gold, silver, copper);
end

local function OnEvent(self, event, ...)
	if ( not IsLoggedIn() ) then return; end
	
	local NewMoney = GetMoney();
	
	ElvDB = ElvDB or { };
	ElvDB['gold'] = ElvDB['gold'] or {};
	ElvDB['gold'][E.myrealm] = ElvDB['gold'][E.myrealm] or {};
	ElvDB['gold'][E.myrealm][E.myname] = ElvDB['gold'][E.myrealm][E.myname] or NewMoney;

	local OldMoney = ElvDB['gold'][E.myrealm][E.myname] or NewMoney;

	local Change = NewMoney-OldMoney;
	
	if ( OldMoney > NewMoney ) then
		Spent = Spent - Change;
	else
		Profit = Profit + Change;
	end

	self.text:SetText(FormatMoney(NewMoney));

	ElvDB['gold'][E.myrealm][E.myname] = NewMoney;
end

local function Click(self, btn)
	if ( btn == 'RightButton' and IsShiftKeyDown() ) then
		ElvDB.gold = nil;
		OnEvent(self);
		DT.tooltip:Hide();
	else
		OpenAllBags();
	end
end

local function OnEnter(self)
	DT:SetupTooltip(self);

	DT.tooltip:AddLine(L['Session:']);
	DT.tooltip:AddDoubleLine(L['Earned:'], FormatMoney(Profit), 1, 1, 1, 1, 1, 1);
	DT.tooltip:AddDoubleLine(L['Spent:'], FormatMoney(Spent), 1, 1, 1, 1, 1, 1);
	
	if ( Profit < Spent ) then
		DT.tooltip:AddDoubleLine(L['Deficit:'], FormatMoney(Profit-Spent), 1, 0, 0, 1, 1, 1);
	elseif ( ( Profit - Spent ) > 0 ) then
		DT.tooltip:AddDoubleLine(L['Profit:'], FormatMoney(Profit-Spent), 0, 1, 0, 1, 1, 1);
	end
	
	DT.tooltip:AddLine(' ');

	local totalGold = 0;
	
	DT.tooltip:AddLine(L['Character: ']);

	for k,_ in pairs(ElvDB['gold'][E.myrealm]) do
		if ElvDB['gold'][E.myrealm][k] then
			DT.tooltip:AddDoubleLine(k, FormatTooltipMoney(ElvDB['gold'][E.myrealm][k]), 1, 1, 1, 1, 1, 1);
			totalGold = totalGold+ElvDB['gold'][E.myrealm][k];
		end
	end

	DT.tooltip:AddLine(' ');
	DT.tooltip:AddLine(L['Server: ']);
	DT.tooltip:AddDoubleLine(L['Total: '], FormatTooltipMoney(totalGold), 1, 1, 1, 1, 1, 1);

	for i = 1, MAX_WATCHED_TOKENS do
		local name, count, extraCurrencyType, icon, itemID = GetBackpackCurrencyInfo(i);
		
		if ( name and i == 1 ) then
			DT.tooltip:AddLine(' ');
			DT.tooltip:AddLine(CURRENCY);
		end
		
		if ( name and count ) then DT.tooltip:AddDoubleLine(name, count, 1, 1, 1); end
	end
	
	DT.tooltip:AddLine(' ');
	DT.tooltip:AddLine(join('', '|cffaaaaaa', L['Reset Data: Hold Shift + Right Click'], '|r'));

	DT.tooltip:Show();
end

DT:RegisterDatatext(L['Gold'], { 'PLAYER_ENTERING_WORLD', 'PLAYER_MONEY', 'SEND_MAIL_MONEY_CHANGED', 'SEND_MAIL_COD_CHANGED', 'PLAYER_TRADE_MONEY', 'TRADE_MONEY_CHANGED' }, OnEvent, nil, Click, OnEnter);