local E, L, V, P, G = unpack(select(2, ...));
local S = E:GetModule('Skins')

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.binding ~= true then return end
	local buttons = {
		"KeyBindingFrameDefaultButton",
		"KeyBindingFrameUnbindButton",
		"KeyBindingFrameOkayButton",
		"KeyBindingFrameCancelButton",
	}
	
	for _, v in pairs(buttons) do
		_G[v]:StripTextures()
		_G[v]:SetTemplate("Default", true)
	end
	
	S:HandleScrollBar(KeyBindingFrameScrollFrameScrollBar)
	S:HandleCheckBox(KeyBindingFrameCharacterButton)
	KeyBindingFrameHeaderText:ClearAllPoints()
	KeyBindingFrameHeaderText:Point("TOP", KeyBindingFrame, "TOP", 0, -4)
	KeyBindingFrame:StripTextures()
	KeyBindingFrame:CreateBackdrop("Transparent")
	KeyBindingFrame.backdrop:Point("TOPLEFT", 2, 0)
	KeyBindingFrame.backdrop:Point("BOTTOMRIGHT", -42, 12)
	
	for i = 1, KEY_BINDINGS_DISPLAYED  do
		local button1 = _G["KeyBindingFrameBinding"..i.."Key1Button"]
		local button2 = _G["KeyBindingFrameBinding"..i.."Key2Button"]
		button1:StripTextures(true)
		button1:StyleButton(false)
		button1:SetTemplate("Default", true)
		button2:StripTextures(true)
		button2:StyleButton(false)
		button2:SetTemplate("Default", true)
	end
	
	KeyBindingFrameUnbindButton:Point("RIGHT", KeyBindingFrameOkayButton, "LEFT", -3, 0)
	KeyBindingFrameOkayButton:Point("RIGHT", KeyBindingFrameCancelButton, "LEFT", -3, 0)
end

S:RegisterSkin("Blizzard_BindingUI", LoadSkin)