﻿-- English localization file for enUS and enGB.
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("ElvUI", "enUS", true, true);
if not L then return; end

--TEMP
L["A taint has occured that is preventing you from using the queue system. Please reload your user interface and try again."] = true;

--*_ADDON locales
L["INCOMPATIBLE_ADDON"] = "The addon %s is not compatible with ElvUI's %s module. Please select either the addon or the ElvUI module to disable."

--*_MSG locales
L['LOGIN_MSG'] = "Welcome to %sElvUI|r version %s%s|r, type /ec to access the in-game configuration menu. If you are in need of technical support you can visit us at http://www.tukui.org"

-- Action Bars
L["Binding"] = true;
L["Key"] = true;
L['KEY_ALT'] = "A"
L['KEY_CTRL'] = "C"
L['KEY_DELETE'] = "Del"
L['KEY_HOME'] = "Hm"
L['KEY_INSERT'] = "Ins"
L['KEY_MOUSEBUTTON'] = "M"
L['KEY_MOUSEWHEELDOWN'] = "MwD"
L['KEY_MOUSEWHEELUP'] = "MwU"
L['KEY_NUMPAD'] = "N"
L['KEY_PAGEDOWN'] = "PD"
L['KEY_PAGEUP'] = "PU"
L['KEY_SHIFT'] = "S"
L['KEY_SPACE'] = "SpB"
L["No bindings set."] = true;

--Bags
L['Delete Grays'] = true;
L['Hold Control + Right Click:'] = true;
L['Hold Shift + Drag:'] = true;
L['Hold Shift:'] = true;
L['Purchase'] = true;
L['Reset Position'] = true;
L['Sort Bags'] = true;
L['Sort Tab'] = true; --Not used, yet?
L['Stack Bags to Bank'] = true;
L['Stack Bank to Bags'] = true;
L['Stack Items'] = true;
L['Temporary Move'] = true;
L['Toggle Bags'] = true;
L['Vendor Grays'] = true;

--Chat
L['AFK'] = true; --Also used in datatexts and tooltip
L['DND'] = true; --Also used in datatexts and tooltip
L['G'] = true;
L['I'] = true;
L['IL'] = true;
L['Invalid Target'] = true;
L['O'] = true;
L['P'] = true;
L['PL'] = true;
L['R'] = true;
L['RL'] = true;
L['RW'] = true;
L['says'] = true;
L['whispers'] = true;
L['yells'] = true;

--DataTexts
L['(Hold Shift) Memory Usage'] = true;
L['Alterac Valley'] = true;
L['Arathi Basin'] = true;
L["Avoidance Breakdown"] = true;
L['Bandwidth'] = true;
L['Bases Assaulted'] = true;
L['Bases Defended'] = true;
L["Battleground datatexts temporarily hidden, to show type /bgstats or right click the 'C' icon near the minimap."] = true;
L['Carts Controlled'] = true;
L['Character: '] = true;
L['Combat Time'] = true;
L['copperabbrev'] = '|cffeda55fc|r'; -- Also used in Bags
L['Defeated'] = true;
L['Deficit:'] = true;
L['Demolishers Destroyed'] = true;
L["DPS"] = true;
L['Earned:'] = true;
L['Feet'] = true;
L['Eye of the Storm'] = true;
L['Flags Captured'] = true;
L['Flags Returned'] = true;
L['Friends List'] = true;
L['Friends'] = true; -- Also in Skins
L['Gates Destroyed'] = true;
L['goldabbrev'] = '|cffffd700g|r'; -- Also used in Bags
L['Gold'] = true;
L['Graveyards Assaulted'] = true;
L['Graveyards Defended'] = true;
L['Hit'] = true;
L['Home Latency:'] = true;
L['HP'] = true;
L["HPS"] = true;
L['Legs'] = true;
L['lvl'] = true;
L['Isle of Conquest'] = true;
L['MISS_CHANCE'] = 'Miss Chance';
L['Mitigation By Level: '] = true;
L['Nalak'] = true;
L['No Guild'] = true;
L['Oondasta'] = true;
L['Orb Possessions'] = true;
L['Profit:'] = true;
L['Reset Data: Hold Shift + Right Click'] = true;
L["Saved Raid(s)"] = true;
L['Server: '] = true;
L['Session:'] = true;
L['Sha of Anger'] = true;
L['Shoulder'] = true;
L['silverabbrev'] = '|cffc7c7cfs|r'; --Also used in Bags
L['SP'] = true;
L["Spent:"] = true;
L['Stats For:'] = true;
L['Strand of the Ancients'] = true;
L['System'] = true;
L['Total CPU:'] = true;
L['Total Memory:'] = true;
L['Total: '] = true;
L['Towers Assaulted'] = true;
L['Towers Defended'] = true;
L['Unhittable:'] = true;
L['Warsong Gulch'] = true;
L['Wintergrasp'] = true;

--DebugTools
L["%s: %s tried to call the protected function '%s'."] = true;
L["No locals to dump"] = true;

--Distributor
L['%s is attempting to share his filters with you. Would you like to accept the request?'] = true;
L['%s is attempting to share the profile %s with you. Would you like to accept the request?'] = true;
L["Data From: %s"] = true;
L['Filter download complete from %s, would you like to apply changes now?'] = true;
L["Lord! It's a miracle! The download up and vanished like a fart in the wind! Try Again!"] = true;
L['Profile download complete from %s, but the profile %s already exists. Change the name or else it will overwrite the existing profile.'] = true;
L['Profile download complete from %s, would you like to load the profile %s now?'] = true;
L['Profile request sent. Waiting for response from player.'] = true;
L['Request was denied by user.'] = true;
L['Your profile was successfully recieved by the player.'] = true;

--Install
L["Auras Set"] = true;
L["Auras System"] = true;
L['Caster DPS'] = true;
L["Chat Set"] = true;
L["Chat"] = true;
L['Choose a theme layout you wish to use for your initial setup.'] = true;
L["Classic"] = true;
L["Click the button below to resize your chat frames, unitframes, and reposition your actionbars."] = true;
L['Config Mode:'] = true;
L["CVars Set"] = true;
L["CVars"] = true;
L['Dark'] = true;
L['Disable'] = true;
L["ElvUI Installation"] = true;
L["Finished"] = true;
L['Grid Size:'] = true;
L['Healer'] = true;
L["High Resolution"] = true;
L["high"] = true;
L['Icons Only'] = true; --Also used in Bags
L["If you have an icon or aurabar that you don't want to display simply hold down shift and right click the icon for it to disapear."] = true;
L["Importance: |cff07D400High|r"] = true;
L["Importance: |cffD3CF00Medium|r"] = true;
L["Importance: |cffFF0000Low|r"] = true;
L["Installation Complete"] = true;
L['Integrated'] = true;
L["Layout Set"] = true;
L["Layout"] = true;
L["Lock"] = true;
L['Low Resolution'] = true;
L["low"] = true;
L["Movers unlocked. Move them now and click Lock when you are done."] = true;
L['Nudge'] = true;
L['Physical DPS'] = true;
L["Pixel Perfect Set"] = true;
L["Pixel Perfect"] = true;
L["Please click the button below so you can setup variables and ReloadUI."] = true;
L["Please click the button below to setup your CVars."] = true;
L["Please press the continue button to go onto the next step."] = true;
L["Resolution Style Set"] = true;
L["Resolution"] = true;
L["Select the type of aura system you want to use with ElvUI's unitframes. The integrated system utilizes both aura-bars and aura-icons. The icons only system will display only icons and aurabars won't be used. The classic system will configure your auras to be default."] = true;
L["Setup Chat"] = true;
L["Setup CVars"] = true;
L["Skip Process"] = true;
L["Sticky Frames"] = true;
L['Tank'] = true;
L["The chat windows function the same as Blizzard standard chat windows, you can right click the tabs and drag them around, rename, etc. Please click the button below to setup your chat windows."] = true;
L["The in-game configuration menu can be accesses by typing the /ec command or by clicking the 'C' button on the minimap. Press the button below if you wish to skip the installation process."] = true;
L['The Pixel Perfect option will change the overall apperance of your UI. Using Pixel Perfect is a slight performance increase over the traditional layout.'] = true;
L["Theme Set"] = true;
L['Theme Setup'] = true;
L["This install process will help you learn some of the features in ElvUI has to offer and also prepare your user interface for usage."] = true;
L["This is completely optional."] = true;
L["This part of the installation process sets up your chat windows names, positions and colors."] = true;
L["This part of the installation process sets up your World of Warcraft default options it is recommended you should do this step for everything to behave properly."] = true;
L["This resolution doesn't require that you change settings for the UI to fit on your screen."] = true;
L["This resolution requires that you change some settings to get everything to fit on your screen."] = true;
L["This will change the layout of your unitframes, raidframes, and datatexts."] = true;
L['Trade'] = true;
L['Using this option will cause your borders around frames to be 1 pixel wide instead of 3 pixel. You may have to finish the installation to notice a differance. By default this is enabled.'] = true;
L["Welcome to ElvUI version %s!"] = true;
L["You are now finished with the installation process. If you are in need of technical support please visit us at http://www.tukui.org."] = true;
L['You can always change fonts and colors of any element of elvui from the in-game configuration.'] = true;
L["You can now choose what layout you wish to use based on your combat role."] = true;
L["You may need to further alter these settings depending how low you resolution is."] = true;
L["Your current resolution is %s, this is considered a %s resolution."] = true;

--Misc
L['Bars'] = true; --Also used in UnitFrames
L['Calendar'] = true;
L["Can't Roll"] = true;
L['Disband Group'] = true;
L['Empty Slot'] = true;
L["Enable"] = true; --Doesn't fit a section since it's used a lot of places
L['Experience'] = true;
L['Fishy Loot'] = true;
L['Left Click:'] = true; --layout\layout.lua
L['Raid Menu'] = true;
L['Remaining:'] = true;
L['Rested:'] = true;
L['Right Click:'] = true; --layout\layout.lua
L['Show BG Texts'] = true; --layout\layout.lua
L['Toggle Chat Frame'] = true; --layout\layout.lua
L['Toggle Configuration'] = true; --layout\layout.lua
L['XP:'] = true;
L["You don't have permission to mark targets."] = true;
L['ABOVE_THREAT_FORMAT'] = '%s: %.0f%% [%.0f%% above |cff%02x%02x%02x%s|r]'

L[' [Grow Down]'] = true; -- Movers
L[' [Grow Up]'] = true;
L[' Frames'] = true;
L['Arena Frames'] = true;
L["Auras Frame"] = true;
L['Bags'] = true;
L['Bar 1'] = true;
L['Bar 2'] = true;
L['Bar 3'] = true;
L['Bar 4'] = true;
L['Bar 5'] = true;
L['BNet Frame'] = true;
L['Boss Frames'] = true;
L["Experience Bar"] = true;
L['Focus Castbar'] = true;
L['Focus Frame'] = true;
L['FocusTarget Frame'] = true;
L["GM Ticket Frame"] = true;
L["Left Chat"] = true;
L["Loot / Alert Frames"] = true;
L["Loot Frame"] = true;
L['MA Frames'] = true;
L['Micro Bar'] = true;
L['Minimap'] = true;
L['MT Frames'] = true;
L['Party Frames'] = true;
L['Pet Bar'] = true;
L['Pet Frame'] = true;
L['PetTarget Frame'] = true;
L['Player Castbar'] = true;
L['Player Frame'] = true;
L['Raid 1-'] = true;
L['Reputation Bar'] = true;
L["Right Chat"] = true;
L['Stance Bar'] = true;
L['Target Castbar'] = true;
L['Target Frame'] = true;
L['TargetTarget Frame'] = true;
L['Tooltip'] = true;
L['Totems'] = true;
L["Vehicle Seat Frame"] = true;
L['Watch Frame'] = true;
L['Weapons'] = true;

--Prints
L[" |cff00ff00bound to |r"] = true;
L["%s frame(s) has a conflicting anchor point, please change either the buff or debuff anchor point so they are not attached to each other. Forcing the debuffs to be attached to the main unitframe until fixed."] = true;
L["All keybindings cleared for |cff00ff00%s|r."] = true;
L['Already Running.. Bailing Out!'] = true;
L['Battleground datatexts temporarily hidden, to show type /bgstats or right click the "C" icon near the minimap.'] = true;
L['Battleground datatexts will now show again if you are inside a battleground.'] = true;
L['Binds Discarded'] = true;
L['Binds Saved'] = true;
L['Confused.. Try Again!'] = true;
L['Deleted %d gray items. Total Worth: %s'] = true;
L['No gray items to delete.'] = true;
L['No gray items to sell.'] = true;
L['The spell "%s" has been added to the Blacklist unitframe aura filter.'] = true;
L['Vendored gray items for:'] = true;
L["You don't have enough money to repair."] = true;
L['You must be at a vendor.'] = true;
L['Your items have been repaired for: '] = true;
L['Your items have been repaired using guild bank funds for: '] = true;
L["Your version of ElvUI is out of date. You can download the latest version from http://www.tukui.org"] = true;
L['|cFFE30000Lua error recieved. You can view the error message when you exit combat.'] = true;

--Static Popups
L["A setting you have changed will change an option for this character only. This setting that you have changed will be uneffected by changing user profiles. Changing this setting requires that you reload your User Interface."] = true;
L["Are you sure you want to delete all your gray items?"] = true;
L["Are you sure you want to disband the group?"] = true;
L["Are you sure you want to reset every mover back to it's default position?"] = true;
L["Because of the mass confusion caused by the new aura system I've implemented a new step to the installation process. This is optional. If you like how your auras are setup go to the last step and click finished to not be prompted again. If for some reason you are prompted repeatedly please restart your game."] = true;
L["Can't buy anymore slots!"] = true;
L['Disable Warning'] = true;
L['Discard'] = true;
L['Do you swear not to post in technical support about something not working without first disabling the addon/module combination first?'] = true;
L["Hover your mouse over any actionbutton or spellbook button to bind it. Press the escape key or right click to clear the current actionbutton's keybinding."] = true;
L['I Swear'] = true;
L['Oh lord, you have got ElvUI and Tukui both enabled at the same time. Select an addon to disable.'] = true;
L["One or more of the changes you have made require a ReloadUI."] = true;
L["One or more of the changes you have made will effect all characters using this addon. You will have to reload the user interface to see the changes you have made."] = true;
L['Save'] = true;
L["Using the healer layout it is highly recommended you download the addon Clique if you wish to have the click-to-heal function."] = true;
L["You have changed the pixel perfect option. You will have to complete the installation process to remove any graphical bugs."] = true;
L['You have changed your UIScale, however you still have the AutoScale option enabled in ElvUI. Press accept if you would like to disable the Auto Scale option.'] = true;
L['You must purchase a bank slot first!'] = true;

--Tooltip
L['Count'] = true;
L['Targeted By:'] = true;

--Tutorials
L["Nearby questgivers that are awaiting your return are shown as a question mark on your mini-map."] = true;
L["Your spell casting can be cancelled by moving, jumping or hitting the escape key."] = true;
L["Clicking on a player name in the chat window lets you send a private message to them."] = true;
L["If you <Shift>Click on a player name in the chat window it tells you additional information about them."] = true;
L["You can <Control>Click on an item to see how you would look wearing that item."] = true;
L["An item with its name in gray is a poor quality item and generally can be sold to a vendor."] = true;
L["An item with its name in white is useful to players in some way and can be used or sold at the auction house."] = true;
L["You can send mail to other players or even to your other characters from any mailbox in game."] = true;
L["You can <Shift>Click on an item to place an item link into a chat message."] = true;
L["You can remove a friendly spell enhancement on yourself by right-clicking on the spell effect icon."] = true;
L["When you learn a profession or secondary skill the button that allows you to perform that skill is found in the general tab of your spellbook."] = true;
L["All of your action bars can have their hotkeys remapped in the key bindings interface."] = true;
L["On your character sheet is a reputation tab that tells you your status with different groups."] = true;
L["You can use the Tab key to select nearby enemies in front of you."] = true;
L["If you are having trouble finding something in a capital city, try asking a guard for directions."] = true;
L["You can use the V key to show enemy name plates above the enemy's head.  Name plates may help you keep track of enemy health or spell casting, or may make it easier to quickly change targets."] = true;
L["You can track many things, such as low-level quests or vendors by clicking on the magnifying glass near your mini map."] = true;
L["You can perform many fun actions with the emote system, for instance you can type /dance to dance."] = true;
L["A Blizzard employee will NEVER ask for your password."] = true;
L["You can only know two professions at a time, but you can learn all of the secondary skills (fishing, cooking and first-aid)."] = true;
L["The interface options menu <ESC> has lots of ways to customize your game play."] = true;
L["You can turn on slow scrolling of quest text in the interface options menu."] = true;
L["Spend your talent points carefully as once your talents are chosen, you must spend gold to unlearn them."] = true;
L["A mail icon next to the minimap means you have new mail.  Visit a mailbox to retrieve it."] = true;
L["You can add additional action bars to your game interface from the interface options menu."] = true;
L["If you hold down <Shift> while right-clicking on a target to loot, you will automatically loot all items on the target."] = true;
L["Your character can eat and drink at the same time."] = true;
L["If you enjoyed playing with someone from your realm, put them on your friends list!"] = true;
L["Use the Dungeon Finder tool to quickly travel to dungeons or to find more players for your dungeon group."] = true;
L["There are a number of different loot options when in a group. The group leader can right-click their own portrait to change the options."] = true;
L["If you never want to hear from another player again, you can /ignore them. You can always change your mind later."] = true;
L["You can target members of your party with the function keys.  F1 targets you; F2 targets the second party member."] = true;
L["Being polite while in a group with others will get you invited back!"] = true;
L["Remember to take all things in moderation (even World of Warcraft!)"] = true;
L["You can click on a faction in the reputation pane to get additional information and options about that faction."] = true;
L["A monster with a silver dragon around its portrait is a rare monster with better than average treasure."] = true;
L["If you mouse over a chat pane it will become visible and you can Right Click on the chat pane tab for options."] = true;
L["Sharing an account with someone else can compromise its security."] = true;
L["You can display the duration of beneficial spells on you from the interface options menu."] = true;
L["You can lock your action bar so you don't accidentally move spells. This is done using the interface options menu."] = true;
L["You can change which buffs or debuffs are displayed on yourself or targets in order to get the information you need."] = true;
L["You can cast a spell on yourself without deselecting your current target by holding down <Alt> while pressing your hotkey."] = true;
L["Ensure that all party members are on the same stage of an escort quest before beginning it."] = true;
L["You're much less likely to encounter wandering monsters while following a road."] = true;
L["Killing guards gives no honor."] = true;
L["You can hide your interface with <Alt>Z and take screenshots with <Print Screen>."] = true;
L["Typing /macro will bring up the interface to create macros."] = true;
L["Enemy players whose names appear in gray are much lower level than you are and will not give honor when killed."] = true;
L["From the Raid UI you can drag a player to the game field to see their status or drag a class icon to see all members of that class."] = true;
L["A blue question mark above a quest giver means the quest is repeatable."] = true;
L["Use the assist button (F key) while targeting another player, and it will target the same target as that player."] = true;
L["<Shift>Clicking on an item being sold by a vendor will let you select how many of that item you wish to purchase."] = true;
L["Playing in a battleground on its holiday weekend increases your honor gained."] = true;
L["If you are having trouble fishing in an area, try attaching a lure to your fishing pole."] = true;
L["You can view messages you previously sent in chat by pressing <Alt> and the up arrow key."] = true;
L["You can Shift-Click on an item stack to split it into smaller stacks."] = true;
L["Pressing both mouse buttons simultaneously will make your character run."] = true;
L["When replying to a tell from a player (Default 'R'), the <TAB> key cycles through people you have recently replied to."] = true;
L["Clicking an item name that appears bracketed in chat will tell you more about the item."] = true;
L["It's considered polite to talk to someone before inviting them into a group, or opening a trade window."] = true;
L["Your items do not suffer durability damage when you are killed by an enemy player."] = true;
L["<Shift>click on a quest in your quest log to toggle quest tracking for that quest."] = true;
L["The auction houses in each of your faction's major cities are linked together."] = true;
L["Nearby questgivers that are awaiting your return are shown as a yellow question mark on your mini-map."] = true;
L["Quests completed at maximum level award money instead of experience."] = true;
L["<Shift>-B will open all your bags at once."] = true;
L["When interacting with other players a little kindness goes a long way!"] = true;
L["Bring your friends to Azeroth, but don't forget to go outside Azeroth with them as well."] = true;
L["If you keep an empty mailbox, the mail icon will let you know when you have new mail waiting!"] = true;
L["Never give another player your account information."] = true;
L["When a player not in your group damages a monster before you do, it will display a gray health bar and you will get no loot or experience from killing it."] = true;
L["You can see the spell that your current target is casting by turning on the 'Cast Bars' options in the combat interface options tab."] = true;
L["You can access the map either by clicking the map button in the upper right of the mini-map or by hitting the 'M' key. The map can help you locate where you need to go to complete a quest."] = true;
L["Many high level dungeons have a heroic mode setting. Heroic mode dungeons are tuned for higher level players and have improved loot."] = true;
L["Spend your honor points for powerful rewards at the Champion's Hall (Alliance) or Hall of Legends (Horde)."] = true;
L["The honor points you earn each day become available immediately. Check the PvP interface to see how many points you have to spend."] = true;
L["You can turn these tips off in the Interface menu."] = true;
L["Dungeon meeting stones can be used to summon absent party members.  It requires two players at the stone to do a summoning."] = true;
L["The Parental Controls section of the Account Management site offers tools to help you manage your play time."] = true;
L["Quest items that are in the bank cannot be used to complete quests."] = true;
L["A quest marked as (Failed) in the quest log can be reacquired from the quest giver."] = true;
L["The number next to the quest name in your log is how many other party members are on that quest."] = true;
L["You cannot advance quests other than (Raid) quests while you are in a raid group."] = true;
L["You cannot cancel your bids in the auction house so bid carefully."] = true;
L["To enter a chat channel, type /join [channel name] and /leave [channel name] to exit."] = true;
L["Mail will be kept for a maximum of 30 days before it disappears."] = true;
L["Once you get a key, they can be found in a special key ring bag that is to the left of your bags."] = true;
L["City Guards will often give you directions to other locations of note in the city."] = true;
L["You can repurchase items you have recently sold to a vendor from the buyback tab."] = true;
L["A group leader can reset their instances or change dungeon difficulty by Right Clicking on their character portrait."] = true;
L["You can always get a new hearthstone from any innkeeper."] = true;
L["You can open a small map of the current zone either with Shift-M or as an option from the world map."] = true;
L["Players cannot dodge, parry, or block attacks that come from behind them."] = true;
L["You can replace a gem that is already socketed into your item by dropping a new gem on top of it in the socketing interface."] = true;
L["If you Right Click on a name in the combat log a list of options will appear."] = true;
L["You can only have one Battle Elixir and one Guardian Elixir on you at a time."] = true;
L["When you are mousing over an item, you can hold down the shift key and it will also show you the item of that type you have equipped."] = true;
L["You can have up to 10 characters per realm, with a maximum of 50 characters total across all realms."] = true;
L["You can reuse text that you have recently typed. Press Enter, then use <Alt> + Up Arrow to scroll through your previous messages."] = true;
L["You can use the Calendar to see upcoming holidays or plan events with your guild or friends."] = true;
L["You can Right Click on the Clock to set an alarm or display a stopwatch."] = true;
L["Your mounts and non-combat companions can be accessed from the Pets tab on your character page."] = true;
L["Currencies, such as the ones collected from Battlegrounds or Heroic dungeons, are stored in the Currency Page."] = true;
L["Some vehicles can carry multiple passengers."] = true;
L["Characters with the Inscription profession can inscribe glyphs to improve some of your favorite spells and abilities."] = true;
L["If you're looking for something different to do, try to complete some of the more unusual Achievements."] = true;
L["You can link quests, items, spells and achievements to chat messages by Shift-Left Clicking in your log."] = true;
L["You can track progress on current quests or achievements."] = true;
L["Flying mounts can be used in Outland once you attain the appropriate skill level of Riding and in Northrend after training Cold Weather Flying."] = true;
L["Completing some Achievements may grant unique non-combat items as rewards."] = true;
L["Items with bonus spell power improve both spell damage and healing."] = true;
L["Dealing damage, healing or casting spells can generate Threat against a creature.  Most creatures will attack the player with the highest Threat against them."] = true;
L["Creatures four levels above you can hit you with a Crushing Blow for extra damage."] = true;
L["Statistics track some interesting numbers related to your character, such as total food eaten and highest critical hit."] = true;
L["You can have your hair cut, colored or styled in a Barber Shop located in many cities."] = true;
L["Recruiting a friend to World of Warcraft can provide rewards for both of you."] = true;
L["You can set a Focus Frame by Right Clicking on a unit frame.  You can unlock a Focus Frame to move it anywhere around your screen."] = true;
L["You can compare your Achievements to those of another player."] = true;
L["You can set an option to cast spells on yourself or on your Focus target by looking in Interface Options, Combat."] = true;
L["A sanctuary is a town in which Player vs. Player combat is prohibited, such as Shattrath and Dalaran."] = true;
L["Improving your reputation with a faction can grant access to new quests or items."] = true;
L["The Calendar can tell you when raids reset."] = true;
L["Creatures cannot make critical hits with spells, but players can."] = true;
L["Creatures can dodge attacks from behind, but players cannot.  Neither creatures nor players can parry attacks from behind."] = true;
L["You can activate the Equipment Manager feature under Interface Controls to let you quickly swap to sets of gear that you find yourself using often."] = true;
L["Once you reach level 40, your class trainer can instruct you in Dual Talent Specialization. This feature allows you to swap out your talents, glyphs and action bars between two commonly used configurations."] = true;
L["You can enable Arena Enemy Frames to display the unit frames of the enemy team when in Arena matches."] = true;
L["Under Interface Display is an option to Preview Talent Changes. If you select this option, you can try out various ways to spend talent points before saving the changes."] = true;
L["If you press <Alt> while your cursor is over an item slot on your character, you can produce a list of items that can be equipped in that slot."] = true;
L["If an enemy cast bar has a shield icon around it, that means you cannot interrupt the spell with your abilities."] = true;
L["Your guild can schedule Guild Events using the in-game calendar. You choose to sign up for these events rather than waiting for an invitation."] = true;
L["When the autocomplete feature suggests character names, you can use Tab or <Shift> Tab to select a name from the list."] = true;
L["Always verify that you are accessing an official Blizzard website whenever submitting account information."] = true;
L["Emails from Blizzard will always end in either blizzard.com or battle.net."] = true;
L["You can download free programs to regularly scan your machine for malicious software including keyloggers."] = true;
L["For additional features and functionality, merge your World of Warcraft account into a Blizzard Battle.net account."] = true;
L["Using a Blizzard Authenticator or Battle.net Mobile Authenticator will help protect your World of Warcraft account from theft."] = true;
L["To avoid account theft, do not login to World of Warcraft on a computer that is shared with the general public. These machines can be infected with malicious software."] = true;
L["Be wary of unofficial sites advertising paid World of Warcraft services. These may contain malicious software that can lead to account theft."] = true;
L["To avoid account theft, do not use browser add-ons or features that allow scripts to be run in the background."] = true;
L["Quest locations and questgivers can be seen on your map."] = true;
L["You can earn rewards for running random dungeons using the Dungeon Finder tool. You can go with a group of friends or use Dungeon Finder to find a dungeon group."] = true;

--UnitFrames
L['Ghost'] = true;
L['Offline'] = true;