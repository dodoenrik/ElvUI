local E, L, V, P, G = unpack(select(2, ...));
local S = E:GetModule('Skins');

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.worldmap ~= true then return end
	
	S:HandleScrollBar(WorldMapQuestScrollFrameScrollBar)
	S:HandleScrollBar(WorldMapQuestDetailScrollFrameScrollBar, 4)
	S:HandleScrollBar(WorldMapQuestRewardScrollFrameScrollBar, 4)
	
	WorldMapFrame:CreateBackdrop("Transparent")
	WorldMapDetailFrame.backdrop = CreateFrame("Frame", nil, WorldMapFrame)
	WorldMapDetailFrame.backdrop:SetTemplate("Default")
	WorldMapDetailFrame.backdrop:SetOutside(WorldMapDetailFrame)
	WorldMapDetailFrame.backdrop:SetFrameLevel(WorldMapDetailFrame:GetFrameLevel() - 2)

	S:HandleCloseButton(WorldMapFrameCloseButton)
	S:HandleCloseButton(WorldMapFrameSizeDownButton, nil, '-')
	S:HandleCloseButton(WorldMapFrameSizeUpButton, nil, '+')
	
	S:HandleDropDownBox(WorldMapLevelDropDown)
	S:HandleDropDownBox(WorldMapZoneMinimapDropDown)
	S:HandleDropDownBox(WorldMapContinentDropDown)
	S:HandleDropDownBox(WorldMapZoneDropDown)

	S:HandleButton(WorldMapZoomOutButton)
	
	S:HandleCheckBox(WorldMapTrackQuest)
	S:HandleCheckBox(WorldMapQuestShowObjectives);
	--Mini
	local function SmallSkin()
		WorldMapFrame.backdrop:ClearAllPoints()
		
		if not WORLDMAP_SETTINGS.advanced then
			WorldMapFrame.backdrop:SetPoint('TOPLEFT', 12, -12);
			WorldMapFrame.backdrop:SetPoint('BOTTOMRIGHT', -20, -10);
		else
			WorldMapFrame.backdrop:SetPoint('TOPLEFT', 0, 2);
			WorldMapFrame.backdrop:SetPoint('BOTTOMRIGHT', 0, 2);
		end
	end
	
	--Large
	local function LargeSkin()
		WorldMapFrame.backdrop:ClearAllPoints()
		WorldMapFrame.backdrop:Point("TOPLEFT", WorldMapDetailFrame, "TOPLEFT", -10, 69)
		WorldMapFrame.backdrop:Point("BOTTOMRIGHT", WorldMapDetailFrame, "BOTTOMRIGHT", 13, -30)    
	end
	
	local function QuestSkin()
		WorldMapFrame.backdrop:ClearAllPoints()
		WorldMapFrame.backdrop:Point("TOPLEFT", WorldMapDetailFrame, "TOPLEFT", -10, 69)
		WorldMapFrame.backdrop:Point("BOTTOMRIGHT", WorldMapDetailFrame, "BOTTOMRIGHT", 322, -235)  
		
		if not WorldMapQuestDetailScrollFrame.backdrop then
			WorldMapQuestDetailScrollFrame:CreateBackdrop("Default")
			WorldMapQuestDetailScrollFrame.backdrop:Point("TOPLEFT", -22, 2)
			WorldMapQuestDetailScrollFrame.backdrop:Point("BOTTOMRIGHT", 23, -4)		
		end
		
		if not WorldMapQuestRewardScrollFrame.backdrop then
			WorldMapQuestRewardScrollFrame:CreateBackdrop("Default")
			WorldMapQuestRewardScrollFrame.backdrop:Point("BOTTOMRIGHT", 22, -4)			
		end
		
		if not WorldMapQuestScrollFrame.backdrop then
			WorldMapQuestScrollFrame:CreateBackdrop("Default")
			WorldMapQuestScrollFrame.backdrop:Point("TOPLEFT", 0, 2)
			WorldMapQuestScrollFrame.backdrop:Point("BOTTOMRIGHT", 25, -3)					
		end
	end			
	
	local function FixSkin()
		WorldMapFrame:StripTextures()
		if not E.db.general.tinyWorldMap then
			BlackoutWorld:SetTexture(0, 0, 0, 1)
		end
		
		if WORLDMAP_SETTINGS.size == WORLDMAP_FULLMAP_SIZE then
			LargeSkin()
		elseif WORLDMAP_SETTINGS.size == WORLDMAP_WINDOWED_SIZE then
			SmallSkin()
		elseif WORLDMAP_SETTINGS.size == WORLDMAP_QUESTLIST_SIZE then
			QuestSkin()
		end
		
		WorldMapFrameAreaLabel:FontTemplate(nil, 50, "OUTLINE")
		WorldMapFrameAreaLabel:SetShadowOffset(2, -2)
		WorldMapFrameAreaLabel:SetTextColor(0.90, 0.8294, 0.6407)	
		
		WorldMapFrameAreaDescription:FontTemplate(nil, 40, "OUTLINE")
		WorldMapFrameAreaDescription:SetShadowOffset(2, -2)
		
		WorldMapZoneInfo:FontTemplate(nil, 27, "OUTLINE")
		WorldMapZoneInfo:SetShadowOffset(2, -2)		
		
		if InCombatLockdown() then return end
		WorldMapFrame:SetFrameLevel(3)
		WorldMapDetailFrame:SetFrameLevel(WorldMapFrame:GetFrameLevel() + 1)
		WorldMapFrame:SetFrameStrata('HIGH')			
	end
	
	WorldMapFrame:HookScript("OnShow", FixSkin)
	hooksecurefunc("WorldMapFrame_SetFullMapView", LargeSkin)
	hooksecurefunc("WorldMapFrame_SetQuestMapView", QuestSkin)
	hooksecurefunc("WorldMap_ToggleSizeUp", FixSkin)
	BlackoutWorld:SetParent(WorldMapFrame.backdrop)
end

S:RegisterSkin('ElvUI', LoadSkin)