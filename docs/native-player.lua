
--- AssistedMovementCloseRoute
---
--- @hash 0xAEBF081FFC0A0E5E
---
--- @return void
function AssistedMovementCloseRoute() end

    
--- ```
--- Inhibits the player from using any method of combat including melee and firearms.  
--- NOTE: Only disables the firing for one frame  
--- ```
---
--- @hash 0x5E6CC07646BBEAB8
--- @param player Player
--- @param toggle boolean
--- @return void
function DisablePlayerFiring(player, toggle) end

    
--- ```
--- b2 and/or b3 maybe got something to do with keeping values from the last ped. Both of them set to 1 works great. <br/><br/>Examples from the decompiled scripts:<br/><br/>PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), l_5C0[4/*14*/], 0, 1);<br/>PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), a_0[a_0._f7/*1*/], a_2, 0);<br/><br/><br/>===========================================================<br/>The only way I ever got this to work in GTA Online once is by setting both to 0, 0. However, when you switch from your online character to whomever, your character will start walking away 'as if you left the game.' If from there you attempt to call this native once more to switch back to you online ped. You will freeze or if you try changing to another ped. I've tried all posibilities so far.<br/>1, 1 (Freeze), 0, 0(Works Once), 1, 0 & 0, 1 (Freeze). Note of course trying to call this on another online player will crash. Anyone have any idea if implementing a blr within the xex itself on a possible check if it would prevent this freezing?<br/>===========================================================  
--- ```
---
--- @hash 0x048189FAC643DEEE
--- @param player Player
--- @param ped Ped
--- @param b2 boolean
--- @param resetDamage boolean
--- @return void
function ChangePlayerPed(player, ped, b2, resetDamage) end

    
--- ArePlayerFlashingStarsAboutToDrop
---
--- @hash 0xAFAF86043E5874E9
--- @param player Player
--- @return boolean
function ArePlayerFlashingStarsAboutToDrop(player) end

    
--- ```
--- Seems to do something with network (?)  
--- PLAYER::_56105E599CAB0EFA(NETWORK::NETWORK_GET_PLAYER_INDEX_FROM_PED(ped))  
--- ```
---
--- @hash 0x56105E599CAB0EFA
--- @param player Player
--- @return number (int)
function GetPlayerFakeWantedLevel(player) end

    
--- ForceCleanupForThreadWithThisId
---
--- @hash 0xF745B37630DF176B
--- @param id number (int)
--- @param cleanupFlags number (int)
--- @return void
function ForceCleanupForThreadWithThisId(id, cleanupFlags) end

    
--- ClearPlayerHasDamagedAtLeastOneNonAnimalPed
---
--- @hash 0x4AACB96203D11A31
--- @param player Player
--- @return void
function ClearPlayerHasDamagedAtLeastOneNonAnimalPed(player) end

    
--- ```
--- Returns the Player's Invincible status.  
--- This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:  
--- 	bool IsPlayerInvincible(Player player)  
--- 	{  
--- auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player));	  
--- if (addr)  
--- {  
--- 	DWORD flag = *(DWORD *)(addr + 0x188);  
--- 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
--- }  
--- return false;  
--- 	}  
--- ============================================================  
--- This has bothered me for too long, whoever may come across this, where did anyone ever come up with this made up hash? 0x733A643B5B0C53C1 I've looked all over old hash list, and this nativedb I can not find that PC hash anywhere. What native name is it now or was it?  
--- ```
---
--- @hash 0xB721981B2B939E07
--- @param player Player
--- @return boolean
function GetPlayerInvincible(player) end

    
--- ClearPlayerParachuteModelOverride
---
--- @hash 0x8753997EB5F6EE3F
--- @param player Player
--- @return void
function ClearPlayerParachuteModelOverride(player) end

    
--- ```
--- Gets the number of players in the current session.
--- If not multiplayer, always returns 1.
--- ```
---
--- @hash 0x407C7F91DDB46C16
---
--- @return number (int)
function GetNumberOfPlayers() end

    
--- ```
--- Returns the same as PLAYER_ID and NETWORK_PLAYER_ID_TO_INT  
--- ```
---
--- @hash 0xA5EDC40EF369B48D
---
--- @return Player
function GetPlayerIndex() end

    
--- EnableSpecialAbility
---
--- @hash 0x181EC197DAEFE121
--- @param player Player
--- @param toggle boolean
--- @return void
function EnableSpecialAbility(player, toggle) end

    
--- DisablePlayerVehicleRewards
---
--- @hash 0xC142BE3BB9CE125F
--- @param player Player
--- @return void
function DisablePlayerVehicleRewards(player) end

    
--- ```
--- Will change world AABB so that given point will be inside of the world limits.  
--- Example:  
--- You want world limits to be -9000<X<10000 -11000<Y<12000 and leave Z limits as is.  
--- You should call this function two times:  
--- _EXPAND_WORLD_LIMITS(-9000.0,-11000.0,30.0)  
--- _EXPAND_WORLD_LIMITS(10000.0,12000.0,30.0)  
--- Appears only 3 times in the scripts, more specifically in michael1.ysc  
--- -  
--- This can be used to prevent dying if you are "out of the world"  
--- ```
---
--- @hash 0x5006D96C995A5827
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @return void
function ExtendWorldBoundaryForPlayer(x, y, z) end

    
--- AssistedMovementFlushRoute
---
--- @hash 0x8621390F0CDCFE1F
---
--- @return void
function AssistedMovementFlushRoute() end

    
--- ```
--- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);  
--- PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.  
--- ```
---
--- @hash 0xB302540597885499
--- @param player Player
--- @return void
function ClearPlayerWantedLevel(player) end

    
--- CanPedHearPlayer
---
--- @hash 0xF297383AA91DCA29
--- @param player Player
--- @param ped Ped
--- @return boolean
function CanPedHearPlayer(player, ped) end

    
--- ```
--- PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation  
--- ```
---
--- @hash 0x4C68DDDDF0097317
--- @param name string (char*)
--- @param cleanupFlags number (int)
--- @return void
function ForceCleanupForAllThreadsWithThisName(name, cleanupFlags) end

    
--- ArePlayerStarsGreyedOut
---
--- @hash 0x0A6EB355EE14A2DB
--- @param player Player
--- @return boolean
function ArePlayerStarsGreyedOut(player) end

    
--- ```
--- used with 1,2,8,64,128 in the scripts  
--- ```
---
--- @hash 0xBC8983F38F78ED51
--- @param cleanupFlags number (int)
--- @return void
function ForceCleanup(cleanupFlags) end

    
--- ```
--- Returns the group ID the player is member of.  
--- ```
---
--- @hash 0x0D127585F77030AF
--- @param player Player
--- @return number (int)
function GetPlayerGroup(player) end

    
--- ```
--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- ```
---
--- @hash 0xD5A016BC3C09CF40
--- @param player Player
--- @param index table (int*)
--- @return void
function GetPlayerReserveParachuteTintIndex(player, index) end

    
--- ```
--- Gets the maximum wanted level the player can get.  
--- Ranges from 0 to 5.  
--- ```
---
--- @hash 0x462E0DB9B137DC5F
---
--- @return number (int)
function GetMaxWantedLevel() end

    
--- ```
--- Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.  
--- Returns false if no entity found.  
--- ```
---
--- @hash 0x2975C866E6713290
--- @param player Player
--- @param entity Entity (Entity*)
--- @return boolean
function GetEntityPlayerIsFreeAimingAt(player, entity) end

    
--- ```
--- Returns the time since the character died in (ms) milliseconds.  
--- example  
--- var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_DEATH();  
--- UI.DrawSubtitle(time.ToString());  
--- if player has not died, the int returned will be -1.  
--- ```
---
--- @hash 0xC7034807558DDFCA
---
--- @return number (int)
function GetTimeSinceLastDeath() end

    
--- GetPlayerParachutePackTintIndex
---
--- @hash 0x6E9C742F340CE5A2
--- @param player Player
--- @param tintIndex table (int*)
--- @return void
function GetPlayerParachutePackTintIndex(player, tintIndex) end

    
--- GetAchievementProgression
---
--- @hash 0x1C186837D0619335
--- @param achievement number (int)
--- @return number (int)
function GetAchievementProgression(achievement) end

    
--- ClearPlayerHasDamagedAtLeastOnePed
---
--- @hash 0xF0B67A4DE6AB5F98
--- @param player Player
--- @return void
function ClearPlayerHasDamagedAtLeastOnePed(player) end

    
--- ```
--- NativeDB Introduced: v1180
--- ```
---
--- @hash 0x1FC200409F10E6F1
--- @param team number (int)
--- @return number (int)
function GetNumberOfPlayersInTeam(team) end

    
--- ```
--- Returns RGB color of the player  
--- ```
---
--- @hash 0xE902EF951DCE178F
--- @param player Player
--- @param r table (int*)
--- @param g table (int*)
--- @param b table (int*)
--- @return void
function GetPlayerRgbColour(player, r, g, b) end

    
--- ```
--- Achievements from 0-57  
--- more achievements came with update 1.29 (freemode events update), I'd say that they now go to 60, but I'll need to check.  
--- ```
--- 
--- ```
--- NativeDB Return Type: BOOL
--- ```
---
--- @hash 0xBEC7076D64130195
--- @param achievement number (int)
--- @return any
function GiveAchievementToPlayer(achievement) end

    
--- GetPlayerSprintStaminaRemaining
---
--- @hash 0x3F9F16F8E65A7ED7
--- @param player Player
--- @return number (float)
function GetPlayerSprintStaminaRemaining(player) end

    
--- ```
--- Remnant from GTA IV. Does nothing in GTA V.  
--- ```
--- 
--- ```
--- NativeDB Return Type: float
--- ```
---
--- @hash 0x085DEB493BE80812
--- @param player Player
--- @return any
function GetWantedLevelRadius(player) end

    
--- HasPlayerDamagedAtLeastOneNonAnimalPed
---
--- @hash 0xE4B90F367BD81752
--- @param player Player
--- @return boolean
function HasPlayerDamagedAtLeastOneNonAnimalPed(player) end

    
--- ```
--- Gets the player's team.  
--- Does nothing in singleplayer.  
--- ```
---
--- @hash 0x37039302F4E0A008
--- @param player Player
--- @return number (int)
function GetPlayerTeam(player) end

    
--- GetPlayerCurrentStealthNoise
---
--- @hash 0x2F395D61F3A1F877
--- @param player Player
--- @return number (float)
function GetPlayerCurrentStealthNoise(player) end

    
--- GetPlayerMaxArmour
---
--- @hash 0x92659B4CE1863CB3
--- @param player Player
--- @return number (int)
function GetPlayerMaxArmour(player) end

    
--- GetPlayerWantedLevel
---
--- @hash 0xE28E54788CE8F12D
--- @param player Player
--- @return number (int)
function GetPlayerWantedLevel(player) end

    
--- ClearPlayerParachutePackModelOverride
---
--- @hash 0x10C54E4389C12B42
--- @param player Player
--- @return void
function ClearPlayerParachutePackModelOverride(player) end

    
--- GivePlayerRagdollControl
---
--- @hash 0x3C49C870E66F0A28
--- @param player Player
--- @param toggle boolean
--- @return void
function GivePlayerRagdollControl(player, toggle) end

    
--- ```
--- Purpose of the BOOL currently unknown.  
--- Both, true and false, work  
--- ```
---
--- @hash 0x94DD7888C10A979E
--- @param unk boolean
--- @return void
function DisplaySystemSigninUi(unk) end

    
--- CanPlayerStartMission
---
--- @hash 0xDE7465A27D403C06
--- @param player Player
--- @return boolean
function CanPlayerStartMission(player) end

    
--- GetPlayerSprintTimeRemaining
---
--- @hash 0x1885BC9B108B4C99
--- @param player Player
--- @return number (float)
function GetPlayerSprintTimeRemaining(player) end

    
--- GetTimeSincePlayerHitPed
---
--- @hash 0xE36A25322DC35F42
--- @param player Player
--- @return number (int)
function GetTimeSincePlayerHitPed(player) end

    
--- ClearPlayerParachuteVariationOverride
---
--- @hash 0x0F4CC924CF8C7B21
--- @param player Player
--- @return void
function ClearPlayerParachuteVariationOverride(player) end

    
--- ```
--- Assigns the handle of locked-on melee target to *entity that you pass it.  
--- Returns false if no entity found.  
--- ```
---
--- @hash 0x13EDE1A5DBF797C9
--- @param player Player
--- @param entity Entity (Entity*)
--- @return boolean
function GetPlayerTargetEntity(player, entity) end

    
--- ```
--- Drft  
--- ```
---
--- @hash 0xFDD179EAF45B556C
--- @param wantedLevel number (int)
--- @return number (int)
function GetWantedLevelThreshold(wantedLevel) end

    
--- GetPlayerHealthRechargeLimit
---
--- @hash 0x8BC515BAE4AAF8FF
--- @param player Player
--- @return number (float)
function GetPlayerHealthRechargeLimit(player) end

    
--- ```
--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- ```
---
--- @hash 0x75D3F7A1B0D9B145
--- @param player Player
--- @param tintIndex table (int*)
--- @return void
function GetPlayerParachuteTintIndex(player, tintIndex) end

    
--- Gets the ped for a specified player index.
--- @usage local playerIdx = GetPlayerFromServerId(source)
--- local ped = GetPlayerPed(playerIdx)
--- 
--- -- act on the pe
--- @hash 0x43A66C31C68491C0
--- @param playerId Player
--- @return Ped
function GetPlayerPed(playerId) end

    
--- ```
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- --------------------------------------------------------  
--- if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))  
--- ```
---
--- @hash 0x9EC6603812C24710
--- @param value number (int)
--- @return number (int)
function IntToParticipantindex(value) end

    
--- GetPlayerWantedCentrePosition
---
--- @hash 0x0C92BA89F1AF26F8
--- @param player Player
--- @return Vector3
function GetPlayerWantedCentrePosition(player) end

    
--- HasPlayerBeenSpottedInStolenVehicle
---
--- @hash 0xD705740BB0A1CF4C
--- @param player Player
--- @return boolean
function HasPlayerBeenSpottedInStolenVehicle(player) end

    
--- GetPlayerHasReserveParachute
---
--- @hash 0x5DDFE2FF727F3CA3
--- @param player Player
--- @return boolean
function GetPlayerHasReserveParachute(player) end

    
--- ```
--- Checks whether the specified player has a Ped, the Ped is not dead, is not injured and is not arrested.  
--- ```
---
--- @hash 0x5E9564D8246B909A
--- @param player Player
--- @return boolean
function IsPlayerPlaying(player) end

    
--- ```
--- Gets the player's info and calls a function that checks the player's ped position.  
--- Here's the decompiled function that checks the position: pastebin.com/ZdHG2E7n  
--- ```
---
--- @hash 0xD55DDFB47991A294
--- @param player Player
--- @return boolean
function HasPlayerLeftTheWorld(player) end

    
--- ```
--- Alternative: GET_VEHICLE_PED_IS_IN(PLAYER_PED_ID(), 1);  
--- ```
---
--- @hash 0xB6997A7EB3F5C8C0
---
--- @return Vehicle
function GetPlayersLastVehicle() end

    
--- IsPlayerDead
---
--- @hash 0x424D4687FA1E5652
--- @param player Player
--- @return boolean
function IsPlayerDead(player) end

    
--- ```
--- Returns true if the player is riding a train.  
--- ```
---
--- @hash 0x4EC12697209F2196
--- @param player Player
--- @return boolean
function IsPlayerRidingTrain(player) end

    
--- ```
--- this function is hard-coded to always return 0.  
--- ```
---
--- @hash 0x74556E1420867ECA
---
--- @return boolean
function IsPlayerLoggingInNp() end

    
--- ```
--- Returns TRUE if the game is in online mode and FALSE if in offline mode.  
--- This is an alias for NETWORK_IS_SIGNED_ONLINE.  
--- ```
---
--- @hash 0xF25D331DC2627BBC
---
--- @return boolean
function IsPlayerOnline() end

    
--- HasAchievementBeenPassed
---
--- @hash 0x867365E111A3B6EB
--- @param achievement number (int)
--- @return boolean
function HasAchievementBeenPassed(achievement) end

    
--- ```
--- Returns true if an unk value is greater than 0.0f  
--- ```
---
--- @hash 0x38D28DA81E4E9BF9
--- @param player Player
--- @return boolean
function IsPlayerBattleAware(player) end

    
--- IsPlayerTargettingAnything
---
--- @hash 0x78CFE51896B6B8A4
--- @param player Player
--- @return boolean
function IsPlayerTargettingAnything(player) end

    
--- ```
--- Returns the players name  
--- ```
---
--- @hash 0x6D0DE6A7B5DA71F8
--- @param player Player
--- @return string (char*)
function GetPlayerName(player) end

    
--- GetTimeSincePlayerDroveOnPavement
---
--- @hash 0xD559D2BE9E37853B
--- @param player Player
--- @return number (int)
function GetTimeSincePlayerDroveOnPavement(player) end

    
--- IsPlayerPressingHorn
---
--- @hash 0xFA1E2BF8B10598F9
--- @param player Player
--- @return boolean
function IsPlayerPressingHorn(player) end

    
--- HasPlayerDamagedAtLeastOnePed
---
--- @hash 0x20CE80B0C2BF4ACC
--- @param player Player
--- @return boolean
function HasPlayerDamagedAtLeastOnePed(player) end

    
--- GetCauseOfMostRecentForceCleanup
---
--- @hash 0x9A41CF4674A12272
---
--- @return number (int)
function GetCauseOfMostRecentForceCleanup() end

    
--- GetPlayerUnderwaterTimeRemaining
---
--- @hash 0xA1FCF8E6AF40B731
--- @param player Player
--- @return number (float)
function GetPlayerUnderwaterTimeRemaining(player) end

    
--- ```
--- Returns TRUE if the player ('s ped) is climbing at the moment.  
--- ```
---
--- @hash 0x95E8F73DC65EFB9C
--- @param player Player
--- @return boolean
function IsPlayerClimbing(player) end

    
--- GetPlayerParachuteSmokeTrailColor
---
--- @hash 0xEF56DBABD3CD4887
--- @param player Player
--- @param r table (int*)
--- @param g table (int*)
--- @param b table (int*)
--- @return void
function GetPlayerParachuteSmokeTrailColor(player, r, g, b) end

    
--- GetTimeSincePlayerDroveAgainstTraffic
---
--- @hash 0xDB89591E290D9182
--- @param player Player
--- @return number (int)
function GetTimeSincePlayerDroveAgainstTraffic(player) end

    
--- N_0x2382ab11450ae7ba
---
--- @hash 0x2382AB11450AE7BA
--- @param p0 any
--- @param p1 any
--- @return void
function N_0x2382ab11450ae7ba(p0, p1) end

    
--- IsSpecialAbilityUnlocked
---
--- @hash 0xC6017F6A6CDFA694
--- @param playerModel Hash
--- @return boolean
function IsSpecialAbilityUnlocked(playerModel) end

    
--- GetTimeSincePlayerHitVehicle
---
--- @hash 0x5D35ECF3A81A0EE0
--- @param player Player
--- @return number (int)
function GetTimeSincePlayerHitVehicle(player) end

    
--- HasPlayerTeleportFinished
---
--- @hash 0xE23D5873C2394C61
--- @param player Player
--- @return boolean
function HasPlayerTeleportFinished(player) end

    
--- N_0x31e90b8873a4cd3b
---
--- @hash 0x31E90B8873A4CD3B
--- @param p0 any
--- @param p1 any
--- @return void
function N_0x31e90b8873a4cd3b(p0, p1) end

    
--- ```
--- Can the player control himself, used to disable controls for player for things like a cutscene.  
--- ---  
--- You can't disable controls with this, use SET_PLAYER_CONTROL(...) for this.  
--- ```
---
--- @hash 0x49C32D60007AFA47
--- @param player Player
--- @return boolean
function IsPlayerControlOn(player) end

    
--- ```
--- Does the same like PLAYER::GET_PLAYER_PED<br/>  
--- ```
---
--- @hash 0x50FAC3A3E030A6E1
--- @param player Player
--- @return Ped
function GetPlayerPedScriptIndex(player) end

    
--- IsSpecialAbilityEnabled
---
--- @hash 0xB1D200FE26AEF3CB
--- @param player Player
--- @return boolean
function IsSpecialAbilityEnabled(player) end

    
--- ```
--- 2 matches in 1 script   
--- Used in multiplayer scripts?  
--- ```
---
--- @hash 0x0032A6DBA562C518
---
--- @return void
function N_0x0032a6dba562c518() end

    
--- N_0xa0d3e4f7aafb7e78
---
--- @hash 0xA0D3E4F7AAFB7E78
--- @param p0 any
--- @param p1 any
--- @return any
function N_0xa0d3e4f7aafb7e78(p0, p1) end

    
--- ```
--- Gets a value indicating whether the specified player is currently aiming freely.  
--- ```
---
--- @hash 0x2E397FD2ECD37C87
--- @param player Player
--- @return boolean
function IsPlayerFreeAiming(player) end

    
--- ```
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- ```
---
--- @hash 0x41BD2A6B006AF756
--- @param value number (int)
--- @return Player
function IntToPlayerindex(value) end

    
--- ```
--- This has been found in use in the decompiled files.  
--- ```
---
--- @hash 0xAD73CE5A09E42D12
--- @param player Player
--- @return void
function N_0xad73ce5a09e42d12(player) end

    
--- IsSpecialAbilityMeterFull
---
--- @hash 0x05A1FE504B7F2587
--- @param player Player
--- @return boolean
function IsSpecialAbilityMeterFull(player) end

    
--- HasForceCleanupOccurred
---
--- @hash 0xC968670BFACE42D9
--- @param cleanupFlags number (int)
--- @return boolean
function HasForceCleanupOccurred(cleanupFlags) end

    
--- IsSystemUiBeingDisplayed
---
--- @hash 0x5D511E3867C87139
---
--- @return boolean
function IsSystemUiBeingDisplayed() end

    
--- ```
--- Name between DISABLE_ALL_CONTROL_ACTIONS and DISABLE_CONTROL_ACTION
--- ```
---
--- @hash 0x5501B7A5CDB79D37
--- @param player Player
--- @return void
function N_0x5501b7a5cdb79d37(player) end

    
--- N_0x7e07c78925d5fd96
---
--- @hash 0x7E07C78925D5FD96
--- @param p0 any
--- @return any
function N_0x7e07c78925d5fd96(p0) end

    
--- IsPlayerWantedLevelGreater
---
--- @hash 0x238DB2A2C23EE9EF
--- @param player Player
--- @param wantedLevel number (int)
--- @return boolean
function IsPlayerWantedLevelGreater(player, wantedLevel) end

    
--- IsPlayerBluetoothEnable
---
--- @hash 0x65FAEE425DE637B0
--- @param player Player
--- @return boolean
function IsPlayerBluetoothEnable(player) end

    
--- ```
--- Return true while player is being arrested / busted.  
--- If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)  
--- If atArresting is set to 0, this function will return 1 only when the busted screen is shown.  
--- ```
---
--- @hash 0x388A47C51ABDAC8E
--- @param player Player
--- @param atArresting boolean
--- @return boolean
function IsPlayerBeingArrested(player, atArresting) end

    
--- ```
--- Order of player1 and player2 are not interchangable, it was called for both orders.  
--- ```
---
--- @hash 0x55FCC0C390620314
--- @param player1 Player
--- @param player2 Player
--- @param toggle boolean
--- @return void
function N_0x55fcc0c390620314(player1, player2, toggle) end

    
--- ```
--- Returns the time since the character was arrested in (ms) milliseconds.  
--- example  
--- var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();  
--- UI.DrawSubtitle(time.ToString());  
--- if player has not been arrested, the int returned will be -1.  
--- ```
---
--- @hash 0x5063F92F07C2A316
---
--- @return number (int)
function GetTimeSinceLastArrest() end

    
--- N_0x36f1b38855f2a8df
---
--- @hash 0x36F1B38855F2A8DF
--- @param player Player
--- @return void
function N_0x36f1b38855f2a8df(player) end

    
--- ```
--- Returns true when the player is not able to control the cam i.e. when running a benchmark test, switching the player or viewing a cutscene.  
--- Note: I am not 100% sure if the native actually checks if the cam control is disabled but it seems promising.  
--- ```
---
--- @hash 0x7C814D2FB49F40C0
---
--- @return boolean
function IsPlayerCamControlDisabled() end

    
--- ```
--- NativeDB Introduced: v1290
--- ```
---
--- @hash 0x7BAE68775557AE0B
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @return void
function N_0x7bae68775557ae0b(p0, p1, p2, p3, p4, p5) end

    
--- IsPlayerTeleportActive
---
--- @hash 0x02B15662D7F8886F
---
--- @return boolean
function IsPlayerTeleportActive() end

    
--- N_0xd821056b9acf8052
---
--- @hash 0xD821056B9ACF8052
--- @param p0 any
--- @param p1 any
--- @return void
function N_0xd821056b9acf8052(p0, p1) end

    
--- ```
--- NativeDB Introduced: v1604
--- ```
---
--- @hash 0x7148E0F43D11F0D9
---
--- @return void
function N_0x7148e0f43d11f0d9() end

    
--- IsPlayerFreeForAmbientTask
---
--- @hash 0xDCCFD3F106C36AB4
--- @param player Player
--- @return boolean
function IsPlayerFreeForAmbientTask(player) end

    
--- IsPlayerTargettingEntity
---
--- @hash 0x7912F7FC4F6264B6
--- @param player Player
--- @param entity Entity
--- @return boolean
function IsPlayerTargettingEntity(player, entity) end

    
--- ```
--- Appears once in "re_dealgonewrong"  
--- ```
---
--- @hash 0x5FC472C501CCADB3
--- @param player Player
--- @return boolean
function N_0x5fc472c501ccadb3(player) end

    
--- ```
--- Found in "director_mode", "fm_bj_race_controler", "fm_deathmatch_controler", "fm_impromptu_dm_controler", "fm_race_controler", "gb_deathmatch".  
--- ```
---
--- @hash 0xCAC57395B151135F
--- @param player Player
--- @param p1 boolean
--- @return void
function N_0xcac57395b151135f(player, p1) end

    
--- IsSpecialAbilityActive
---
--- @hash 0x3E5F7FC85D854E15
--- @param player Player
--- @return boolean
function IsSpecialAbilityActive(player) end

    
--- N_0xffee8fa29ab9a18e
---
--- @hash 0xFFEE8FA29AB9A18E
--- @param player Player
--- @return void
function N_0xffee8fa29ab9a18e(player) end

    
--- N_0x690a61a6d13583f6
---
--- @hash 0x690A61A6D13583F6
--- @param player Player
--- @return boolean
function N_0x690a61a6d13583f6(player) end

    
--- ```
--- SET_PLAYER_MAX_*
--- ```
---
--- @hash 0x8D768602ADEF2245
--- @param player Player
--- @param p1 number (float)
--- @return void
function N_0x8d768602adef2245(player, p1) end

    
--- ```
--- NativeDB Return Type: void
--- ```
---
--- @hash 0xF3AC26D3CC576528
--- @param player Player
--- @param p2 boolean
--- @return any
function RemovePlayerHelmet(player, p2) end

    
--- ```
--- NativeDB Introduced: v1604
--- ```
---
--- @hash 0x70A382ADEC069DD3
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return void
function N_0x70a382adec069dd3(p0, p1, p2) end

    
--- ```
--- Returns current player ped  
--- ```
---
--- @hash 0xD80958FC74E988A6
---
--- @return Ped
function PlayerPedId() end

    
--- N_0xde45d1a1ef45ee61
---
--- @hash 0xDE45D1A1EF45EE61
--- @param player Player
--- @param toggle boolean
--- @return void
function N_0xde45d1a1ef45ee61(player, toggle) end

    
--- ```
--- Seems to only appear in scripts used in Singleplayer.  
--- Always used like this in scripts  
--- PLAYER::_BC9490CA15AEA8FB(PLAYER::PLAYER_ID());  
--- ```
---
--- @hash 0xBC9490CA15AEA8FB
--- @param player Player
--- @return void
function N_0xbc9490ca15aea8fb(player) end

    
--- ```
--- Used with radios:  
--- void sub_cf383(auto _a0) {  
---     if ((a_0)==1) {  
---         if (GAMEPLAY::IS_BIT_SET((g_240005._f1), 3)) {  
---             PLAYER::_2F7CEB6520288061(0);  
---             AUDIO::SET_AUDIO_FLAG("AllowRadioDuringSwitch", 0);  
---             AUDIO::SET_MOBILE_PHONE_RADIO_STATE(0);  
---             AUDIO::SET_AUDIO_FLAG("MobileRadioInGame", 0);  
---         }  
---         sub_cf3f6(1);  
---     } else {   
---         if (GAMEPLAY::IS_BIT_SET((g_240005._f1), 3)) {  
---             PLAYER::_2F7CEB6520288061(1);  
---             AUDIO::SET_AUDIO_FLAG("AllowRadioDuringSwitch", 1);  
---             AUDIO::SET_MOBILE_PHONE_RADIO_STATE(1);  
---             AUDIO::SET_AUDIO_FLAG("MobileRadioInGame", 1);  
---         }  
---         sub_cf3f6(0);  
---     }  
--- }  
--- SET_PLAYER_S*  
--- ```
---
--- @hash 0x2F7CEB6520288061
--- @param p0 boolean
--- @return void
function N_0x2f7ceb6520288061(p0) end

    
--- ```
--- GET_*
--- ```
---
--- @hash 0xCB645E85E97EA48B
---
--- @return boolean
function N_0xcb645e85e97ea48b() end

    
--- N_0xfac75988a7d078d3
---
--- @hash 0xFAC75988A7D078D3
--- @param player Player
--- @return void
function N_0xfac75988a7d078d3(player) end

    
--- ```
--- 2 occurrences in agency_heist3a. p1 was 0.7f then 0.4f.  
--- ```
---
--- @hash 0xDD2620B7B9D16FF1
--- @param player Player
--- @param p1 number (float)
--- @return boolean
function N_0xdd2620b7b9d16ff1(player, p1) end

    
--- ```
--- NativeDB Introduced: v1290
--- ```
---
--- @hash 0x237440E46D918649
--- @param p0 any
--- @return void
function N_0x237440e46d918649(p0) end

    
--- N_0x6e4361ff3e8cd7ca
---
--- @hash 0x6E4361FF3E8CD7CA
--- @param p0 any
--- @return any
function N_0x6e4361ff3e8cd7ca(p0) end

    
--- IsPlayerScriptControlOn
---
--- @hash 0x8A876A65283DD7D7
--- @param player Player
--- @return boolean
function IsPlayerScriptControlOn(player) end

    
--- N_0x9edd76e87d5d51ba
---
--- @hash 0x9EDD76E87D5D51BA
--- @param player Player
--- @return void
function N_0x9edd76e87d5d51ba(player) end

    
--- ResetPlayerInputGait
---
--- @hash 0x19531C47A2ABD691
--- @param player Player
--- @return void
function ResetPlayerInputGait(player) end

    
--- IsPlayerReadyForCutscene
---
--- @hash 0x908CBECC2CAA3690
--- @param player Player
--- @return boolean
function IsPlayerReadyForCutscene(player) end

    
--- RestorePlayerStamina
---
--- @hash 0xA352C1B864CAFD33
--- @param player Player
--- @param p1 number (float)
--- @return void
function RestorePlayerStamina(player, p1) end

    
--- ```
--- Does exactly the same thing as PLAYER_ID()  
--- ```
---
--- @hash 0xEE68096F9F37341E
---
--- @return number (int)
function NetworkPlayerIdToInt() end

    
--- ```
--- Only 1 match. ob_sofa_michael.  
--- PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- ```
---
--- @hash 0xED51733DC73AED51
--- @param p0 number (float)
--- @param p1 number (float)
--- @param p2 number (float)
--- @param p3 number (float)
--- @param p4 number (float)
--- @param p5 number (float)
--- @param p6 number (float)
--- @param p7 number (float)
--- @return void
function PlayerAttachVirtualBound(p0, p1, p2, p3, p4, p5, p6, p7) end

    
--- ReportPoliceSpottedPlayer
---
--- @hash 0xDC64D2C53493ED12
--- @param player Player
--- @return void
function ReportPoliceSpottedPlayer(player) end

    
--- N_0xb9cf1f793a9f1bf1
---
--- @hash 0xB9CF1F793A9F1BF1
---
--- @return boolean
function N_0xb9cf1f793a9f1bf1() end

    
--- SetMaxWantedLevel
---
--- @hash 0xAA5F02DB48D704B9
--- @param maxWantedLevel number (int)
--- @return void
function SetMaxWantedLevel(maxWantedLevel) end

    
--- ```
--- var num3 = PLAYER::GET_PLAYER_PED(l_2171); // proof l_2171 is a player  
--- var num17 = PLAYER::0x9DF75B2A(l_2171, 100, 0); // l_2171  
--- .ysc:  
---     if (PLAYER::GET_PLAYER_WANTED_LEVEL(l_6EF) < v_4) { // l_6EF is a player  
---         PLAYER::SET_PLAYER_WANTED_LEVEL(l_6EF, v_4, 0); // l_6EF  
---         PLAYER::SET_PLAYER_WANTED_LEVEL_NOW(l_6EF, 0); // l_6EF  
---     } else {   
---         PLAYER::_4669B3ED80F24B4E(l_6EF); // l_6EF  
---         UI::_BA8D65C1C65702E5(1);  
---         a_0 = 1;  
---     }  
---         if (l_4B24[l_6F2/*156*/]._f8C != PLAYER::_BC0753C9CA14B506(l_6EF, 100, 0)) { // l_6EF  
---             l_4B24[l_6F2/*156*/]._f8C = PLAYER::_BC0753C9CA14B506(l_6EF, 100, 0); // l_6EF  
---         }  
--- Both was taken from fm_mission_controller  
--- GET_PLAYER_*  
--- ```
---
--- @hash 0xBC0753C9CA14B506
--- @param player Player
--- @param p1 number (int)
--- @param p2 boolean
--- @return boolean
function N_0xbc0753c9ca14b506(player, p1, p2) end

    
--- ResetPlayerStamina
---
--- @hash 0xA6F312FCCE9C1DFE
--- @param player Player
--- @return void
function ResetPlayerStamina(player) end

    
--- ResetWantedLevelDifficulty
---
--- @hash 0xB9D0DD990DC141DD
--- @param player Player
--- @return void
function ResetWantedLevelDifficulty(player) end

    
--- ```
--- Gets a value indicating whether the specified player is currently aiming freely at the specified entity.  
--- ```
---
--- @hash 0x3C06B5C839B38F7B
--- @param player Player
--- @param entity Entity
--- @return boolean
function IsPlayerFreeAimingAtEntity(player, entity) end

    
--- ```
--- 6 matches across 4 scripts. 5 occurrences were 240. The other was 255.  
--- ```
---
--- @hash 0x14D913B777DFF5DA
--- @param value number (int)
--- @return void
function SetPlayerClothLockCounter(value) end

    
--- SetAllRandomPedsFlee
---
--- @hash 0x056E0FE8534C2949
--- @param player Player
--- @param toggle boolean
--- @return void
function SetAllRandomPedsFlee(player, toggle) end

    
--- ```
--- This can be between 1.0f - 14.9f   
--- You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.  
--- On PC the multiplier can be between 0.0f and 50.0f (inclusive).  
--- ```
---
--- @hash 0xCA7DC8329F0A1E9E
--- @param player Player
--- @param multiplier number (float)
--- @return void
function SetAirDragMultiplierForPlayersVehicle(player, multiplier) end

    
--- SetAutoGiveParachuteWhenEnterPlane
---
--- @hash 0x9F343285A00B4BB6
--- @param player Player
--- @param toggle boolean
--- @return void
function SetAutoGiveParachuteWhenEnterPlane(player, toggle) end

    
--- ```
--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));  
--- From am_armybase.ysc.c4:  
--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));  
--- -----  
--- This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7   
--- -----  
--- crimeType:  
--- 1: Firearms possession  
--- 2: Person running a red light ("5-0-5")  
--- 3: Reckless driver  
--- 4: Speeding vehicle (a "5-10")  
--- 5: Traffic violation (a "5-0-5")  
--- 6: Motorcycle rider without a helmet  
--- 7: Vehicle theft (a "5-0-3")  
--- 8: Grand Theft Auto  
--- 9: ???  
--- 10: ???  
--- 11: Assault on a civilian (a "2-40")  
--- 12: Assault on an officer  
--- 13: Assault with a deadly weapon (a "2-45")  
--- 14: Officer shot (a "2-45")  
--- 15: Pedestrian struck by a vehicle  
--- 16: Officer struck by a vehicle  
--- 17: Helicopter down (an "AC"?)  
--- 18: Civilian on fire (a "2-40")  
--- 19: Officer set on fire (a "10-99")  
--- 20: Car on fire  
--- 21: Air unit down (an "AC"?)  
--- 22: An explosion (a "9-96")  
--- 23: A stabbing (a "2-45") (also something else I couldn't understand)  
--- 24: Officer stabbed (also something else I couldn't understand)  
--- 25: Attack on a vehicle ("MDV"?)  
--- 26: Damage to property  
--- 27: Suspect threatening officer with a firearm  
--- 28: Shots fired  
--- 29: ???  
--- 30: ???  
--- 31: ???  
--- 32: ???  
--- 33: ???  
--- 34: A "2-45"  
--- 35: ???  
--- 36: A "9-25"  
--- 37: ???  
--- 38: ???  
--- 39: ???  
--- 40: ???  
--- 41: ???  
--- 42: ???  
--- 43: Possible disturbance  
--- 44: Civilian in need of assistance  
--- 45: ???  
--- 46: ???  
--- ```
---
--- @hash 0xE9B09589827545E7
--- @param player Player
--- @param crimeType number (int)
--- @param wantedLvlThresh number (int)
--- @return void
function ReportCrime(player, crimeType, wantedLvlThresh) end

    
--- ```
--- - This is called after SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME  
--- 0xc3376f42b1faccc6, 0xd5d0d2853191399c, // set_areas_generator_orientation  
--- ```
---
--- @hash 0xC3376F42B1FACCC6
--- @param player Player
--- @return void
function N_0xc3376f42b1faccc6(player) end

    
--- SetAllRandomPedsFleeThisFrame
---
--- @hash 0x471D2FF42A94B4F2
--- @param player Player
--- @return void
function SetAllRandomPedsFleeThisFrame(player) end

    
--- ```
--- Old Gen: 0x47D6004E  
--- Disables something. Used only once in R* scripts (freemode.ysc).  
--- ```
---
--- @hash 0xB885852C39CC265D
---
--- @return void
function N_0xb885852c39cc265d() end

    
--- ```
--- 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- ```
---
--- @hash 0x1DD5897E2FA6E7C9
---
--- @return void
function PlayerDetachVirtualBound() end

    
--- ```
--- This returns YOUR 'identity' as a Player type.  
--- Always returns 0 in story mode.  
--- ```
---
--- @hash 0x4F8644AF03D0E0D6
---
--- @return Player
function PlayerId() end

    
--- ```
--- Flags used in the scripts: 0,4,16,24,32,56,60,64,128,134,256,260,384,512,640,768,896,900,952,1024,1280,2048,2560  
--- Note to people who needs this with camera mods, etc.:   
--- Flags(0, 4, 16, 24, 32, 56, 60, 64, 128, 134, 512, 640, 1024, 2048, 2560)  
--- - Disables camera rotation as well.  
--- Flags(256, 260, 384, 768, 896, 900, 952, 1280)  
--- 
--- cameraRotation = flags & (1 << 8)
--- ```
---
--- @hash 0x8D32347D6D4C40A2
--- @param player Player
--- @param bHasControl boolean
--- @param flags number (int)
--- @return void
function SetPlayerControl(player, bHasControl, flags) end

    
--- SetDisableAmbientMeleeMove
---
--- @hash 0x2E8AABFA40A84F8C
--- @param player Player
--- @param toggle boolean
--- @return void
function SetDisableAmbientMeleeMove(player, toggle) end

    
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- @hash 0xDA1DF03D5A315F4E
---
--- @return void
function ResetWorldBoundaryForPlayer() end

    
--- ```
--- Every occurrence was either 0 or 2.  
--- ```
---
--- @hash 0x9F7BBA2EA6372500
--- @param index number (int)
--- @return void
function SetPlayerClothPackageIndex(index) end

    
--- Hardcoded to always return false in the retail version.
---
--- @hash 0xC2AFFFDABBDC2C5C
--- @param achievement number (int)
--- @param progress number (int)
--- @return boolean
function SetAchievementProgression(achievement, progress) end

    
--- SetPlayerForcedZoom
---
--- @hash 0x75E7D505F2B15902
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerForcedZoom(player, toggle) end

    
--- ```
--- This has been found in use in the decompiled files.  
--- ```
---
--- @hash 0x4669B3ED80F24B4E
--- @param player Player
--- @return void
function N_0x4669b3ed80f24b4e(player) end

    
--- SetPlayerHealthRechargeLimit
---
--- @hash 0xC388A0F065F5BC34
--- @param player Player
--- @param limit number (float)
--- @return void
function SetPlayerHealthRechargeLimit(player, limit) end

    
--- N_0x2f41a3bae005e5fa
---
--- @hash 0x2F41A3BAE005E5FA
--- @param p0 any
--- @param p1 any
--- @return void
function N_0x2f41a3bae005e5fa(p0, p1) end

    
--- ```
--- PLAYER::0xBF6993C7(rPtr((&l_122) + 71)); // Found in decompilation  
--- ***  
--- In "am_hold_up.ysc" used once:  
--- l_8d._f47 = GAMEPLAY::GET_RANDOM_FLOAT_IN_RANGE(18.0, 28.0);  
--- PLAYER::_B45EFF719D8427A6((l_8d._f47));  
--- ```
---
--- @hash 0xB45EFF719D8427A6
--- @param p0 number (float)
--- @return void
function N_0xb45eff719d8427a6(p0) end

    
--- ```
--- 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- ```
---
--- @hash 0xD2B315B6689D537D
--- @param player Player
--- @param toggle boolean
--- @return void
function SetAutoGiveScubaGearWhenExitVehicle(player, toggle) end

    
--- SetPlayerForcedAim
---
--- @hash 0x0FEE4F80AC44A726
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerForcedAim(player, toggle) end

    
--- SetPlayerHasReserveParachute
---
--- @hash 0x7DDAB28D31FAC363
--- @param player Player
--- @return void
function SetPlayerHasReserveParachute(player) end

    
--- SetDispatchCopsForPlayer
---
--- @hash 0xDB172424876553F4
--- @param player Player
--- @param toggle boolean
--- @return void
function SetDispatchCopsForPlayer(player, toggle) end

    
--- ```
--- Example from fm_mission_controler.ysc.c4:  
--- PLAYER::SET_PLAYER_LOCKON(PLAYER::PLAYER_ID(), 1);  
--- All other decompiled scripts using this seem to be using the player id as the first parameter, so I feel the need to confirm it as so.  
--- No need to confirm it says PLAYER_ID() so it uses PLAYER_ID() lol.  
--- ```
---
--- @hash 0x5C8B2F450EE4328E
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerLockon(player, toggle) end

    
--- ```
--- NativeDB Parameter 0: Player player
--- NativeDB Parameter 1: BOOL state
--- ```
---
--- @hash 0x5DC40A8869C22141
--- @param player boolean
--- @param state table (ScrHandle)
--- @return void
function SetPlayerBluetoothState(player, state) end

    
--- SetPlayerNoiseMultiplier
---
--- @hash 0xDB89EF50FF25FCE9
--- @param player Player
--- @param multiplier number (float)
--- @return void
function SetPlayerNoiseMultiplier(player, multiplier) end

    
--- SetPlayerParachutePackModelOverride
---
--- @hash 0xDC80A4C2F18A2B64
--- @param player Player
--- @param model Hash
--- @return void
function SetPlayerParachutePackModelOverride(player, model) end

    
--- ```
--- Sets whether this player can be hassled by gangs.  
--- ```
---
--- @hash 0xD5E460AD7020A246
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerCanBeHassledByGangs(player, toggle) end

    
--- ```
--- Set whether this player should be able to do drive-bys.  
--- "A drive-by is when a ped is aiming/shooting from vehicle. This includes middle finger taunts. By setting this value to false I confirm the player is unable to do all that. Tested on tick."  
--- ```
---
--- @hash 0x6E8834B52EC20C77
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerCanDoDriveBy(player, toggle) end

    
--- ```
--- p1 was always 5.  
--- p4 was always false.  
--- ```
---
--- @hash 0xD9284A8C0D48352C
--- @param player Player
--- @param p1 number (int)
--- @param p2 any
--- @param p3 any
--- @param p4 boolean
--- @return void
function SetPlayerParachuteVariationOverride(player, p1, p2, p3, p4) end

    
--- ```
--- Simply sets you as invincible (Health will not deplete).  
--- Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:  
--- *(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);  
--- ```
---
--- @hash 0x239528EACDC3E7DE
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerInvincible(player, toggle) end

    
--- ```
--- NativeDB Introduced: v1180
--- ```
---
--- @hash 0xEE4EBDD2593BA844
--- @param player Player
--- @param p1 boolean
--- @return void
function SetPlayerHomingRocketDisabled(player, p1) end

    
--- SetPlayerMayOnlyEnterThisVehicle
---
--- @hash 0x8026FF78F208978A
--- @param player Player
--- @param vehicle Vehicle
--- @return void
function SetPlayerMayOnlyEnterThisVehicle(player, vehicle) end

    
--- ```
--- Values around 1.0f to 2.0f used in game scripts.  
--- ```
---
--- @hash 0xB2C1A29588A9F47C
--- @param player Player
--- @param multiplier number (float)
--- @return void
function SetPlayerSneakingNoiseMultiplier(player, multiplier) end

    
--- SetPlayerForceSkipAimIntro
---
--- @hash 0x7651BC64AE59E128
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerForceSkipAimIntro(player, toggle) end

    
--- SetPlayerWeaponDefenseModifier
---
--- @hash 0x2D83BC011CA14A3C
--- @param player Player
--- @param modifier number (float)
--- @return void
function SetPlayerWeaponDefenseModifier(player, modifier) end

    
--- ```
--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- ```
---
--- @hash 0xA3D0E54541D9A5E5
--- @param player Player
--- @param tintIndex number (int)
--- @return void
function SetPlayerParachuteTintIndex(player, tintIndex) end

    
--- ```
--- Every occurrence of p1 I found was true.1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- ```
---
--- @hash 0x749FADDF97DFE930
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerClothPinFrames(player, toggle) end

    
--- ResetPlayerArrestState
---
--- @hash 0x2D03E13C460760D6
--- @param player Player
--- @return void
function ResetPlayerArrestState(player) end

    
--- ```
--- # Predominant call signatures  
--- PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));  
--- # Parameter value ranges  
--- P0: PLAYER::PLAYER_ID()  
--- P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)  
--- P2: Not set by any call  
--- ```
--- 
--- ```
--- NativeDB Parameter 1: Vector3* position
--- NativeDB Parameter 2: BOOL y
--- NativeDB Parameter 3: BOOL z
--- ```
---
--- @hash 0x520E541A97A13354
--- @param player Player
--- @param position number (float)
--- @param y number (float)
--- @param z number (float)
--- @return void
function SetPlayerWantedCentrePosition(player, position, y, z) end

    
--- ```
--- NativeDB Added Parameter 3: BOOL p2
--- ```
---
--- @hash 0x4A3DC7ECCC321032
--- @param player Player
--- @param modifier number (float)
--- @return void
function SetPlayerMeleeWeaponDamageModifier(player, modifier) end

    
--- ```
--- Affects the range of auto aim target.  
--- ```
---
--- @hash 0x29961D490E5814FD
--- @param player Player
--- @param range number (float)
--- @return void
function SetPlayerLockonRangeOverride(player, range) end

    
--- ```
--- Only 1 occurrence. p1 was 2.  
--- ```
---
--- @hash 0xF10B44FD479D69F3
--- @param player Player
--- @param p1 number (int)
--- @return boolean
function N_0xf10b44fd479d69f3(player, p1) end

    
--- SetPlayerCanLeaveParachuteSmokeTrail
---
--- @hash 0xF401B182DBA8AF53
--- @param player Player
--- @param enabled boolean
--- @return void
function SetPlayerCanLeaveParachuteSmokeTrail(player, enabled) end

    
--- ```
--- example:  
--- PLAYER::SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER::PLAYER_ID(), 0x73268708);  
--- ```
---
--- @hash 0x977DB4641F6FC3DB
--- @param player Player
--- @param model Hash
--- @return void
function SetPlayerParachuteModelOverride(player, model) end

    
--- ```
--- p2 is always false in R* scripts  
--- ```
---
--- @hash 0x340E61DE7F471565
--- @param player Player
--- @param wantedLevel number (int)
--- @param p2 boolean
--- @return void
function SetPlayerWantedLevelNoDrop(player, wantedLevel, p2) end

    
--- SetPlayerHealthRechargeMultiplier
--- @usage -- To disable the health recharge completely:
--- SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
--- 
--- -- To reset it back to the normal recharge speed:
--- SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0
--- @hash 0x5DB660B38DD98A31
--- @param player Player
--- @param regenRate number (float)
--- @return void
function SetPlayerHealthRechargeMultiplier(player, regenRate) end

    
--- SetIgnoreLowPriorityShockingEvents
---
--- @hash 0x596976B02B6B5700
--- @param player Player
--- @param toggle boolean
--- @return void
function SetIgnoreLowPriorityShockingEvents(player, toggle) end

    
--- SetPlayerInvincibleKeepRagdollEnabled
---
--- @hash 0x6BC97F4F4BB3C04B
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerInvincibleKeepRagdollEnabled(player, toggle) end

    
--- SetPlayerTargetLevel
---
--- @hash 0x5702B917B99DB1CD
--- @param targetLevel number (int)
--- @return void
function SetPlayerTargetLevel(targetLevel) end

    
--- ```
--- gets byte at offset 0x862 in the specified players data (ped data + 0xbd0) and stores the bool p1 in it.  
--- lwz       r3, 0xBD0(r3) ;r3 is player data  
--- lbz       r4, 0x862(r3) ;r4 is now the byte  
--- insrwi    r4, r31, 1,28 ;stores p1 as a bit in place 28 idk  
--- stb       r4, 0x862(r3) ; puts the newly modified one back in  
--- ```
---
--- @hash 0xFF300C7649724A0B
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerLeavePedBehind(player, toggle) end

    
--- ```
--- example:  
--- flags: 0-6  
--- PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);  
--- wouldnt the flag be the seatIndex?  
--- ```
---
--- @hash 0x11D5F725F0E780E0
--- @param player Player
--- @param flags number (int)
--- @return void
function SetPlayerResetFlagPreferRearSeats(player, flags) end

    
--- SetSpecialAbilityMultiplier
---
--- @hash 0xA49C426ED0CA4AB7
--- @param multiplier number (float)
--- @return void
function SetSpecialAbilityMultiplier(multiplier) end

    
--- SetEveryoneIgnorePlayer
---
--- @hash 0x8EEDA153AD141BA4
--- @param player Player
--- @param toggle boolean
--- @return void
function SetEveryoneIgnorePlayer(player, toggle) end

    
--- SetPlayerSimulateAiming
---
--- @hash 0xC54C95DA968EC5B5
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerSimulateAiming(player, toggle) end

    
--- ```
--- Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect  
--- wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files  
--- disableNoMission-  Disables When Off Mission- appears to always be false  
--- ```
---
--- @hash 0x39FF19C64EF7DA5B
--- @param player Player
--- @param wantedLevel number (int)
--- @param disableNoMission boolean
--- @return void
function SetPlayerWantedLevel(player, wantedLevel, disableNoMission) end

    
--- SpecialAbilityActivate
---
--- @hash 0x821FDC827D6F4090
--- @param player Player
--- @return void
function SpecialAbilityActivate(player) end

    
--- ```
--- This is to make the player walk without accepting input from INPUT.  
--- gaitType is in increments of 100s. 2000, 500, 300, 200, etc.  
--- p4 is always 1 and p5 is always 0.  
--- C# Example :  
--- Function.Call(Hash.SIMULATE_PLAYER_INPUT_GAIT, Game.Player, 1.0f, 100, 1.0f, 1, 0); //Player will go forward for 100ms  
--- ```
---
--- @hash 0x477D5D63E63ECA5D
--- @param player Player
--- @param amount number (float)
--- @param gaitType number (int)
--- @param speed number (float)
--- @param p4 boolean
--- @param p5 boolean
--- @return void
function SimulatePlayerInputGait(player, amount, gaitType, speed, p4, p5) end

    
--- SetSpecialAbility
---
--- @hash 0xB214D570EAD7F81A
--- @param player Player
--- @param p1 number (int)
--- @return void
function SetSpecialAbility(player, p1) end

    
--- ```
--- tints 0  
--- 1   
--- 2   
--- 3   
--- 4  
--- ```
---
--- @hash 0x93B0FB27C9A04060
--- @param player Player
--- @param tintIndex number (int)
--- @return void
function SetPlayerParachutePackTintIndex(player, tintIndex) end

    
--- SetWantedLevelMultiplier
---
--- @hash 0x020E5F00CDA207BA
--- @param multiplier number (float)
--- @return void
function SetWantedLevelMultiplier(multiplier) end

    
--- ```
--- modifier's min value is 0.1
--- ```
---
--- @hash 0x4C60E6EFDAFF2462
--- @param player Player
--- @param modifier number (float)
--- @return void
function SetPlayerVehicleDefenseModifier(player, modifier) end

    
--- ```
--- Swim speed multiplier.  
--- Multiplier goes up to 1.49  
--- Just call it one time, it is not required to be called once every tick. - Note copied from below native.  
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
--- ```
---
--- @hash 0xA91C6F0FF7D16A13
--- @param player Player
--- @param multiplier number (float)
--- @return void
function SetSwimMultiplierForPlayer(player, multiplier) end

    
--- ```
--- Minimum distance from the ground to enable in-air ragdoll
--- ```
---
--- @hash 0xEFD79FA81DFBA9CB
--- @param player Player
--- @param distance number (float)
--- @return void
function SetPlayerFallDistance(player, distance) end

    
--- SetPlayerWeaponDefenseModifier_2
---
--- @hash 0xBCFDE9EDE4CF27DC
--- @param player Player
--- @param modifier number (float)
--- @return void
function SetPlayerWeaponDefenseModifier_2(player, modifier) end

    
--- SpecialAbilityDeactivate
---
--- @hash 0xD6A953C6D1492057
--- @param player Player
--- @return void
function SpecialAbilityDeactivate(player) end

    
--- Set the model for a specific Player. Be aware that this will destroy the current Ped for the Player and create a new one, any
--- reference to the old ped should be reset (by using the GetPlayerPed native).
--- 
--- ```
--- Make sure to request the model first and wait until it has loaded.  
--- ```
---
--- @hash 0x00A1CADD00108836
--- @param player Player
--- @param model Hash
--- @return void
function SetPlayerModel(player, model) end

    
--- ```
--- modifier's min value is 0.1
--- ```
---
--- @hash 0xA50E117CDDF82F0C
--- @param player Player
--- @param modifier number (float)
--- @return void
function SetPlayerVehicleDamageModifier(player, modifier) end

    
--- ```
--- p1 appears to always be 1 (only comes up twice)  
--- ```
---
--- @hash 0xED481732DFF7E997
--- @param player Player
--- @param p2 Ped
--- @return void
function SpecialAbilityChargeContinuous(player, p2) end

    
--- ```
--- If toggle is set to false:  
--- The police won't be shown on the (mini)map  
--- 		If toggle is set to true:  
--- The police will be shown on the (mini)map  
--- ```
---
--- @hash 0x43286D561B72B8BF
--- @param toggle boolean
--- @return void
function SetPoliceRadarBlips(toggle) end

    
--- ```
--- Default is 100. Use player id and not ped id. For instance: PLAYER::SET_PLAYER_MAX_ARMOUR(PLAYER::PLAYER_ID(), 100); // main_persistent.ct4  
--- ```
---
--- @hash 0x77DFCCF5948B8C71
--- @param player Player
--- @param value number (int)
--- @return void
function SetPlayerMaxArmour(player, value) end

    
--- ```
--- Only 1 match. Both p1 & p2 were true.  
--- ```
---
--- @hash 0xF113E3AA9BC54613
--- @param player Player
--- @param p1 boolean
--- @param p2 boolean
--- @return void
function SpecialAbilityChargeMedium(player, p1, p2) end

    
--- SetPlayerParachuteSmokeTrailColor
---
--- @hash 0x8217FD371A4625CF
--- @param player Player
--- @param r number (int)
--- @param g number (int)
--- @param b number (int)
--- @return void
function SetPlayerParachuteSmokeTrailColor(player, r, g, b) end

    
--- SpecialAbilityUnlock
---
--- @hash 0xF145F3BE2EFA9A3B
--- @param playerModel Hash
--- @return void
function SpecialAbilityUnlock(playerModel) end

    
--- ```
--- Sets your targeting mode.  
--- 0 = Traditional GTA  
--- 1 = Assisted Aiming  
--- 2 = Free Aim  
--- Even tho gtaforums nor Alexander B supports this, if you're online in freemode already it's nice to have this since retail or otherwise you have to go to SP to change it.  
--- ```
---
--- @hash 0xB1906895227793F3
--- @param targetMode number (int)
--- @return void
function SetPlayerTargetingMode(targetMode) end

    
--- SetPlayerStealthPerceptionModifier
---
--- @hash 0x4E9021C1FCDD507A
--- @param player Player
--- @param value number (float)
--- @return void
function SetPlayerStealthPerceptionModifier(player, value) end

    
--- ```
--- 77  
--- ```
---
--- @hash 0xA01B8075D8B92DF4
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPlayerSprint(player, toggle) end

    
--- SetPlayerMayNotEnterAnyVehicle
---
--- @hash 0x1DE37BBF9E9CC14A
--- @param player Player
--- @return void
function SetPlayerMayNotEnterAnyVehicle(player) end

    
--- SpecialAbilityLock
---
--- @hash 0x6A09D0D590A47D13
--- @param playerModel Hash
--- @return void
function SpecialAbilityLock(playerModel) end

    
--- ```
--- Forces any pending wanted level to be applied to the specified player immediately.  
--- Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.  
--- Second parameter is unknown (always false).  
--- ```
---
--- @hash 0xE0A7D1E497FFCD6F
--- @param player Player
--- @param p1 boolean
--- @return void
function SetPlayerWantedLevelNow(player, p1) end

    
--- ```
--- normalizedValue is from 0.0 - 1.0  
--- p2 is always 1  
--- ```
---
--- @hash 0xA0696A65F009EE18
--- @param player Player
--- @param normalizedValue number (float)
--- @param p2 boolean
--- @return void
function SpecialAbilityChargeNormalized(player, normalizedValue, p2) end

    
--- SetPlayerMeleeWeaponDefenseModifier
---
--- @hash 0xAE540335B4ABC4E2
--- @param player Player
--- @param modifier number (float)
--- @return void
function SetPlayerMeleeWeaponDefenseModifier(player, modifier) end

    
--- ```
--- The player will be ignored by the police if toggle is set to true  
--- ```
---
--- @hash 0x32C62AA929C2DA6A
--- @param player Player
--- @param toggle boolean
--- @return void
function SetPoliceIgnorePlayer(player, toggle) end

    
--- SpecialAbilityReset
---
--- @hash 0x375F0E738F861A94
--- @param player Player
--- @return void
function SpecialAbilityReset(player) end

    
--- ```
--- Every occurrence of p1 & p2 were both true.  
--- ```
---
--- @hash 0x2E7B9B683481687D
--- @param player Player
--- @param p1 boolean
--- @param p2 boolean
--- @return void
function SpecialAbilityChargeSmall(player, p1, p2) end

    
--- ```
--- Also known as _RECHARGE_SPECIAL_ABILITY  
--- ```
---
--- @hash 0x3DACA8DDC6FD4980
--- @param player Player
--- @param p1 boolean
--- @return void
function SpecialAbilityFillMeter(player, p1) end

    
--- ```
--- Sets whether this player can take cover.  
--- ```
--- 
--- ```
--- NativeDB Return Type: void
--- ```
---
--- @hash 0xD465A8599DFF6814
--- @param player Player
--- @param toggle boolean
--- @return any
function SetPlayerCanUseCover(player, toggle) end

    
--- SpecialAbilityDeactivateFast
---
--- @hash 0x9CB5CE07A3968D5A
--- @param player Player
--- @return void
function SpecialAbilityDeactivateFast(player) end

    
--- ```
--- Set player team on deathmatch and last team standing..  
--- ```
---
--- @hash 0x0299FA38396A4940
--- @param player Player
--- @param team number (int)
--- @return void
function SetPlayerTeam(player, team) end

    
--- ```
--- 2 matches. p1 was always true.  
--- ```
---
--- @hash 0xF733F45FA4497D93
--- @param player Player
--- @param p1 boolean
--- @param p2 boolean
--- @return void
function SpecialAbilityChargeLarge(player, p1, p2) end

    
--- ```
--- p1 appears as 5, 10, 15, 25, or 30. p2 is always true.  
--- ```
---
--- @hash 0xB7B0870EB531D08D
--- @param player Player
--- @param p1 number (int)
--- @param p2 boolean
--- @return void
function SpecialAbilityChargeAbsolute(player, p1, p2) end

    
--- ```
--- Max value is 1.0  
--- ```
---
--- @hash 0x9B0BB33B04405E7A
--- @param player Player
--- @param difficulty number (float)
--- @return void
function SetWantedLevelDifficulty(player, difficulty) end

    
--- ```
--- p1 was always true.  
--- ```
---
--- @hash 0x1D506DBBBC51E64B
--- @param player Player
--- @param p1 boolean
--- @return void
function SpecialAbilityDepleteMeter(player, p1) end

    
--- ```
--- Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.  
--- Just call it one time, it is not required to be called once every tick.  
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
--- It is not possible to "decrease" speed. Anything below 1 will be ignored.  
--- ```
---
--- @hash 0x6DB47AA77FD94E09
--- @param player Player
--- @param multiplier number (float)
--- @return void
function SetRunSprintMultiplierForPlayer(player, multiplier) end

    
--- ```
--- Disables the player's teleportation  
--- ```
---
--- @hash 0xC449EDED9D73009C
---
--- @return void
function StopPlayerTeleport() end

    
--- SpecialAbilityDeplete
---
--- @hash 0x17F7471EACA78290
--- @param p0 any
--- @return void
function SpecialAbilityDeplete(p0) end

    
--- ```
--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- ```
---
--- @hash 0xAF04C87F5DC1DF38
--- @param player Player
--- @param index number (int)
--- @return void
function SetPlayerReserveParachuteTintIndex(player, index) end

    
--- StartFiringAmnesty
---
--- @hash 0xBF9BD71691857E48
--- @param duration number (int)
--- @return void
function StartFiringAmnesty(duration) end

    
--- ```
--- Seems to be called before SPECIAL_ABILITY_DEACTIVATE. Needs more research.
--- 
--- 
--- SPECIAL_ABILITY_CHARGE_ON_MISSION_FAILED ?
--- ```
--- 
--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
---
--- @hash 0xC9A763D8FE87436A
--- @param player Player
--- @return void
function SpecialAbilityChargeOnMissionFailed(player) end

    
--- ```
--- This modifies the damage value of your weapon. Whether it is a multiplier or base damage is unknown.   
--- Based on tests, it is unlikely to be a multiplier.  
--- ```
---
--- @hash 0xCE07B9F7817AADA3
--- @param player Player
--- @param modifier number (float)
--- @return void
function SetPlayerWeaponDamageModifier(player, modifier) end

    
--- StartPlayerTeleport
---
--- @hash 0xAD15F075A4DA0FDE
--- @param player Player
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @param heading number (float)
--- @param p5 boolean
--- @param findCollisionLand boolean
--- @param p7 boolean
--- @return void
function StartPlayerTeleport(player, x, y, z, heading, p5, findCollisionLand, p7) end

    
--- ```
--- This was previously named as "RESERVE_ENTITY_EXPLODES_ON_HIGH_EXPLOSION_COMBO"  
--- which is obviously incorrect.  
--- Seems to only appear in scripts used in Singleplayer. p1 ranges from 2 - 46.  
--- I assume this switches the crime type  
--- ```
---
--- @hash 0x9A987297ED8BD838
--- @param player Player
--- @param p1 number (int)
--- @return void
function SwitchCrimeType(player, p1) end

    