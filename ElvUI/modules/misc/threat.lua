local E, L, V, P, G = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local THREAT = E:NewModule('Threat', 'AceEvent-3.0');
local LSM = LibStub("LibSharedMedia-3.0")

E.Threat = THREAT
THREAT.list = {};

local twipe = table.wipe

function THREAT:UpdatePosition()
	if self.db.position == 'RIGHTCHAT' then
		self.bar:SetInside(RightChatDataPanel)
		self.bar:SetParent(RightChatDataPanel)
	else
		self.bar:SetInside(LeftChatDataPanel)
		self.bar:SetParent(LeftChatDataPanel)	
	end
	local fontTemplate = LSM:Fetch("font", self.db.textfont)
	self.bar.text:FontTemplate(fontTemplate, self.db.textSize, self.db.textOutline)
	self.bar:SetFrameStrata('MEDIUM')
end

function THREAT:GetLargestThreatOnList(percent)
	local largestValue, largestUnit = 0, nil
	for unit, threatPercent in pairs(self.list) do
		if threatPercent > largestValue then
			largestValue = threatPercent
			largestUnit = unit
		end
	end
	
	return (percent - largestValue), largestUnit
end

function THREAT:GetColor(unit)
	local unitReaction = UnitReaction(unit, 'player')
	local _, unitClass = UnitClass(unit)
	if (UnitIsPlayer(unit)) then
		local class = RAID_CLASS_COLORS[unitClass]
		if not class then return 194, 194, 194 end
		return class.r*255, class.g*255, class.b*255
	elseif (unitReaction) then
		local reaction = ElvUF['colors'].reaction[unitReaction]
		return reaction[1]*255, reaction[2]*255, reaction[3]*255
	else
		return 194, 194, 194
	end
end

function THREAT:Update()
	local Party = GetNumPartyMembers()
	local Raid = GetNumRaidMembers()
	local Pet = select(1, HasPetUI())
	local _, status, percent = UnitDetailedThreatSituation('player', 'target')
	if percent and percent > 0 and (Party or Pet) then
		local name = UnitName('target')
		self.bar:Show()
		if percent == 100 then
			--Build threat list
			if Pet then
				self.list['pet'] = select(3, UnitDetailedThreatSituation('pet', 'target'))
			end
			
			if Raid then
				for i=1, 40 do
					if UnitExists('raid'..i) and not UnitIsUnit('raid'..i, 'player') then
						self.list['raid'..i] = select(3, UnitDetailedThreatSituation('raid'..i, 'target'))
					end
				end
			else
				for i=1, 4 do
					if UnitExists('party'..i) then
						self.list['party'..i] = select(3, UnitDetailedThreatSituation('party'..i, 'target'))
					end			
				end
			end
			
			local leadPercent, largestUnit = self:GetLargestThreatOnList(percent)
			if leadPercent > 0 and largestUnit ~= nil then
				local r, g, b = self:GetColor(largestUnit)
				self.bar.text:SetFormattedText(L['ABOVE_THREAT_FORMAT'], name, percent, leadPercent, r, g, b, UnitName(largestUnit) or UNKNOWN)
				
				if E.Role == 'Tank' then
					self.bar:SetStatusBarColor(0, 0.839, 0)
					self.bar:SetValue(leadPercent)
				else
					self.bar:SetStatusBarColor(GetThreatStatusColor(status))
					self.bar:SetValue(percent)
				end
			else
				self.bar:SetStatusBarColor(GetThreatStatusColor(status))
				self.bar.text:SetFormattedText('%s: %.0f%%', name, percent)
				self.bar:SetValue(percent)
			end
		else
			self.bar:SetStatusBarColor(GetThreatStatusColor(status))
			self.bar.text:SetFormattedText('%s: %.0f%%', name, percent)
			self.bar:SetValue(percent)
		end
	else
		self.bar:Hide()
	end
	
	twipe(self.list)
end

function THREAT:ToggleEnable()
	if self.db.enable then
		self:RegisterEvent('PLAYER_TARGET_CHANGED', 'Update')
		self:RegisterEvent('UNIT_THREAT_LIST_UPDATE', 'Update')
		self:RegisterEvent('GROUP_ROSTER_UPDATE', 'Update')
		self:RegisterEvent('UNIT_PET', 'Update')
		self:Update()
	else
		self.bar:Hide()
		self:UnregisterEvent('PLAYER_TARGET_CHANGED')
		self:UnregisterEvent('UNIT_THREAT_LIST_UPDATE')
		self:UnregisterEvent('GROUP_ROSTER_UPDATE')
		self:UnregisterEvent('UNIT_PET')
	end
end

function THREAT:Initialize()
	self.db = E.db.general.threat
	
	self.bar = CreateFrame('StatusBar', 'ElvUI_ThreatBar', UIParent)
	self.bar:SetStatusBarTexture(E['media'].normTex)
	self.bar:SetMinMaxValues(0, 100)
	self.bar:CreateBackdrop('Default')
	
	self.bar.text = self.bar:CreateFontString(nil, 'OVERLAY')
	self.bar.text:FontTemplate(self.db.textfont, self.db.textSize, self.db.textOutline)
	self.bar.text:SetPoint('CENTER', self.bar, 'CENTER')
	
	self:UpdatePosition()
	self:ToggleEnable()
end

E:RegisterModule(THREAT:GetName())