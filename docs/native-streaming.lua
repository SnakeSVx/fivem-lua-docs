
--- ClearHdArea
---
--- @hash 0xCE58B1CFB9290813
---
--- @return void
function ClearHdArea() end

    
--- ```
--- x1, y1, z1 -- Coords of your ped model  
--- x2, y2, z2 -- Coords of the ped you want to switch to  
--- ```
---
--- @hash 0xB5D7B26B45720E05
--- @param x1 number (float)
--- @param y1 number (float)
--- @param z1 number (float)
--- @param x2 number (float)
--- @param y2 number (float)
--- @param z2 number (float)
--- @return number (int)
function GetIdealPlayerSwitchType(x1, y1, z1, x2, y2, z2) end

    
--- ```
--- Checks if the specified model has loaded into memory.  
--- ```
---
--- @hash 0x98A4EB5D89A0C952
--- @param model Hash
--- @return boolean
function HasModelLoaded(model) end

    
--- AddModelToCreatorBudget
---
--- @hash 0x0BC3144DEB678666
--- @param modelHash Hash
--- @return boolean
function AddModelToCreatorBudget(modelHash) end

    
--- IsNewLoadSceneLoaded
---
--- @hash 0x01B8247A7A8B9AD1
---
--- @return boolean
function IsNewLoadSceneLoaded() end

    
--- GetPlayerSwitchInterpOutDuration
---
--- @hash 0x08C2D6C52A3104BB
---
--- @return number (int)
function GetPlayerSwitchInterpOutDuration() end

    
--- GetPlayerSwitchJumpCutIndex
---
--- @hash 0x78C0D93253149435
---
--- @return number (int)
function GetPlayerSwitchJumpCutIndex() end

    
--- ```
--- Loads "common:/data/missioncreatordata" data and sets some values.  
--- ```
---
--- @hash 0xB5A4DB34FE89B88A
---
--- @return void
function InitCreatorBudget() end

    
--- BeginSrl
---
--- @hash 0x9BADDC94EF83B823
---
--- @return void
function BeginSrl() end

    
--- ```
--- Alias for HAS_ANIM_SET_LOADED.  
--- ```
---
--- @hash 0x318234F4F3738AF3
--- @param clipSet string (char*)
--- @return boolean
function HasClipSetLoaded(clipSet) end

    
--- EnableSwitchPauseBeforeDescent
---
--- @hash 0xD4793DFF3AF2ABCD
---
--- @return void
function EnableSwitchPauseBeforeDescent() end

    
--- LoadScene
---
--- @hash 0x4448EB75B4904BDB
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @return void
function LoadScene(x, y, z) end

    
--- ```
--- Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  
--- Animation set and clip set are synonymous.  
--- ```
---
--- @hash 0xC4EA073D86FB29B0
--- @param animSet string (char*)
--- @return boolean
function HasAnimSetLoaded(animSet) end

    
--- ```
--- Check if model is in cdimage(rpf)  
--- ```
---
--- @hash 0x35B9E0803292B641
--- @param model Hash
--- @return boolean
function IsModelInCdimage(model) end

    
--- GetPlayerShortSwitchState
---
--- @hash 0x20F898A5D9782800
---
--- @return number (int)
function GetPlayerShortSwitchState() end

    
--- N_0x1e9057a74fd73e23
---
--- @hash 0x1E9057A74FD73E23
---
--- @return void
function N_0x1e9057a74fd73e23() end

    
--- Clear the current srl and stop rendering the area selected by PrefetchSrl and started with BeginSrl.
---
--- @hash 0x0A41540E63C9EE17
---
--- @return void
function EndSrl() end

    
--- Returns true when the srl from BeginSrl is loaded.
---
--- @hash 0xD0263801A4C5B0BB
---
--- @return boolean
function IsSrlLoaded() end

    
--- DisableSwitchOutroFx
---
--- @hash 0xBD605B8E0E18B3BB
---
--- @return void
function DisableSwitchOutroFx() end

    
--- GetPlayerSwitchType
---
--- @hash 0xB3C94A90D9FC9E62
---
--- @return number (int)
function GetPlayerSwitchType() end

    
--- IsNetworkLoadingScene
---
--- @hash 0x41CA5A33160EA4AB
---
--- @return boolean
function IsNetworkLoadingScene() end

    
--- N_0x0ad9710cee2f590f
---
--- @hash 0x0AD9710CEE2F590F
--- @param p0 number (float)
--- @param p1 number (float)
--- @param p2 number (float)
--- @param p3 number (float)
--- @param p4 number (float)
--- @param p5 number (float)
--- @param p6 any
--- @return any
function N_0x0ad9710cee2f590f(p0, p1, p2, p3, p4, p5, p6) end

    
--- ```
--- Returns whether the specified model represents a vehicle.  
--- ```
---
--- @hash 0x19AAC8F07BFEC53E
--- @param model Hash
--- @return boolean
function IsModelAVehicle(model) end

    
--- N_0x5068f488ddb54dd8
---
--- @hash 0x5068F488DDB54DD8
---
--- @return any
function N_0x5068f488ddb54dd8() end

    
--- **This native does absolutely nothing, just a nullsub**
---
--- @hash 0x4E52E752C76E7E7A
--- @param p0 any
--- @return void
function N_0x4e52e752c76e7e7a(p0) end

    
--- HasCollisionForModelLoaded
---
--- @hash 0x22CCA434E368F03A
--- @param model Hash
--- @return boolean
function HasCollisionForModelLoaded(model) end

    
--- N_0xbeb2d9a1d9a8f55a
---
--- @hash 0xBEB2D9A1D9A8F55A
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return void
function N_0xbeb2d9a1d9a8f55a(p0, p1, p2, p3) end

    
--- N_0x07c313f94746702c
---
--- @hash 0x07C313F94746702C
--- @param p0 any
--- @return any
function N_0x07c313f94746702c(p0) end

    
--- ```
--- assetName = For example "core"  
--- ```
---
--- @hash 0x8702416E512EC454
--- @param assetName string (char*)
--- @return boolean
function HasNamedPtfxAssetLoaded(assetName) end

    
--- ```
--- Returns whether the specified model exists in the game.  
--- ```
---
--- @hash 0xC0296A2EDF545E92
--- @param model Hash
--- @return boolean
function IsModelValid(model) end

    
--- ClearFocus
---
--- @hash 0x31B73D1EA9F01DA2
---
--- @return void
function ClearFocus() end

    
--- ```
--- 1  
--- ```
---
--- @hash 0xBD6E84632DD4CB3F
---
--- @return void
function LoadAllObjectsNow() end

    
--- ```
--- List of all IPLs: pastebin.com/iNGLY32D  
--- ```
---
--- @hash 0x88A741E44A2B3495
--- @param iplName string (char*)
--- @return boolean
function IsIplActive(iplName) end

    
--- N_0x8e2a065abdae6994
---
--- @hash 0x8E2A065ABDAE6994
---
--- @return void
function N_0x8e2a065abdae6994() end

    
--- FormatFocusHeading
---
--- @hash 0x219C7B8D53E429FD
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @param rad number (float)
--- @param p4 any
--- @param p5 any
--- @return any
function FormatFocusHeading(x, y, z, rad, p4, p5) end

    
--- N_0x7d41e9d2d17c5b2d
---
--- @hash 0x7D41E9D2D17C5B2D
--- @param p0 any
--- @return any
function N_0x7d41e9d2d17c5b2d(p0) end

    
--- IsModelAPed
---
--- @hash 0x75816577FEA6DAD5
--- @param model Hash
--- @return boolean
function IsModelAPed(model) end

    
--- ```
--- 0.0 = no memory used
--- 1.0 = all memory used
--- 
--- Maximum model memory (as defined in common\data\missioncreatordata.meta) is 100 MiB
--- 
--- GET_*
--- ```
---
--- @hash 0x3D3D8B3BE5A83D35
---
--- @return number (float)
function GetUsedCreatorModelMemoryPercentage() end

    
--- N_0x472397322e92a856
---
--- @hash 0x472397322E92A856
---
--- @return void
function N_0x472397322e92a856() end

    
--- N_0xef39ee20c537e98c
---
--- @hash 0xEF39EE20C537E98C
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @return void
function N_0xef39ee20c537e98c(p0, p1, p2, p3, p4, p5) end

    
--- N_0x5b48a06dd0e792a5
---
--- @hash 0x5B48A06DD0E792A5
---
--- @return any
function N_0x5b48a06dd0e792a5() end

    
--- IsNewLoadSceneActive
---
--- @hash 0xA41A05B6CB741B85
---
--- @return boolean
function IsNewLoadSceneActive() end

    
--- HasAnimDictLoaded
---
--- @hash 0xD031A9162D01088C
--- @param animDict string (char*)
--- @return boolean
function HasAnimDictLoaded(animDict) end

    
--- ```
--- NativeDB Return Type: BOOL
--- ```
---
--- @hash 0x5B74EA8CFD5E3E7E
---
--- @return any
function IsSwitchSkippingDescent() end

    
--- HasPtfxAssetLoaded
---
--- @hash 0xCA7D9B86ECA7481B
---
--- @return boolean
function HasPtfxAssetLoaded() end

    
--- N_0x71e7b2e657449aad
---
--- @hash 0x71E7B2E657449AAD
---
--- @return any
function N_0x71e7b2e657449aad() end

    
--- N_0x0811381ef5062fec
---
--- @hash 0x0811381EF5062FEC
--- @param p0 Entity
--- @return void
function N_0x0811381ef5062fec(p0) end

    
--- RemovePtfxAsset
---
--- @hash 0x88C6814073DD4A73
---
--- @return void
function RemovePtfxAsset() end

    
--- N_0xbc9823ab80a3dcac
---
--- @hash 0xBC9823AB80A3DCAC
---
--- @return any
function N_0xbc9823ab80a3dcac() end

    
--- IsSwitchReadyForDescent
---
--- @hash 0xDFA80CB25D0A19B3
---
--- @return boolean
function IsSwitchReadyForDescent() end

    
--- GetNumberOfStreamingRequests
---
--- @hash 0x4060057271CEBC89
---
--- @return number (int)
function GetNumberOfStreamingRequests() end

    
--- N_0xf4a0dadb70f57fa6
---
--- @hash 0xF4A0DADB70F57FA6
---
--- @return void
function N_0xf4a0dadb70f57fa6() end

    
--- DoesAnimDictExist
---
--- @hash 0x2DA49C3B79856961
--- @param animDict string (char*)
--- @return boolean
function DoesAnimDictExist(animDict) end

    
--- NetworkStopLoadScene
---
--- @hash 0x64E630FAF5F60F44
---
--- @return void
function NetworkStopLoadScene() end

    
--- N_0x20c6c7e4eb082a7f
---
--- @hash 0x20C6C7E4EB082A7F
--- @param p0 boolean
--- @return void
function N_0x20c6c7e4eb082a7f(p0) end

    
--- ```
--- IPL list: pastebin.com/iNGLY32D  
--- ```
---
--- @hash 0xEE6C5AD3ECE0A82D
--- @param iplName string (char*)
--- @return void
function RemoveIpl(iplName) end

    
--- N_0xfb199266061f820a
---
--- @hash 0xFB199266061F820A
---
--- @return boolean
function N_0xfb199266061f820a() end

    
--- ```
--- Returns true if the player is currently switching, false otherwise.  
--- (When the camera is in the sky moving from Trevor to Franklin for example)  
--- ```
---
--- @hash 0xD9D2CFFF49FAB35F
---
--- @return boolean
function IsPlayerSwitchInProgress() end

    
--- ```
--- Alias for REMOVE_ANIM_SET.  
--- ```
---
--- @hash 0x01F73A131C18CD94
--- @param clipSet string (char*)
--- @return void
function RemoveClipSet(clipSet) end

    
--- This native is used to attribute the SRL that BeginSrl is going to load. This is usually used for 'in-game' cinematics (not cutscenes but camera stuff) instead of SetFocusArea because it loads a specific area of the map which is pretty useful when the camera moves from distant areas.
--- For instance, GTA:O opening cutscene.
--- 
--- https://pastebin.com/2EeKVeLA : a list of SRL found in srllist.meta
--- https://pastebin.com/zd9XYUWY : here is the content of a SRL file opened with codewalker.
--- @usage PrefetchSrl('GTAO_INTRO_MALE')
--- while not IsSrlLoaded() do
--- 	Citizen.Wait(100)
--- end
--- BeginSrl(
--- @hash 0x3D245789CE12982C
--- @param srl string (char*)
--- @return void
function PrefetchSrl(srl) end

    
--- ```
--- NativeDB Return Type: BOOL
--- ```
---
--- @hash 0xC4582015556D1C46
---
--- @return void
function NetworkUpdateLoadScene() end

    
--- N_0x0c15b0e443b2349d
---
--- @hash 0x0C15B0E443B2349D
---
--- @return number (float)
function N_0x0c15b0e443b2349d() end

    
--- NewLoadSceneStop
---
--- @hash 0xC197616D221FF4A4
---
--- @return void
function NewLoadSceneStop() end

    
--- GetPlayerSwitchState
---
--- @hash 0x470555300D10B2A5
---
--- @return number (int)
function GetPlayerSwitchState() end

    
--- RequestCollisionForModel
---
--- @hash 0x923CB32A3B874FCB
--- @param model Hash
--- @return void
function RequestCollisionForModel(model) end

    
--- SetGamePausesForStreaming
---
--- @hash 0x717CD6E6FAEBBEDC
--- @param toggle boolean
--- @return void
function SetGamePausesForStreaming(toggle) end

    
--- N_0x95a7dabddbb78ae7
---
--- @hash 0x95A7DABDDBB78AE7
--- @param iplName1 string (char*)
--- @param iplName2 string (char*)
--- @return void
function N_0x95a7dabddbb78ae7(iplName1, iplName2) end

    
--- N_0x1ee7d8df4425f053
---
--- @hash 0x1EE7D8DF4425F053
--- @param p0 any
--- @return void
function N_0x1ee7d8df4425f053(p0) end

    
--- N_0xbed8ca5ff5e04113
---
--- @hash 0xBED8CA5FF5E04113
--- @param p0 number (float)
--- @param p1 number (float)
--- @param p2 number (float)
--- @param p3 number (float)
--- @return void
function N_0xbed8ca5ff5e04113(p0, p1, p2, p3) end

    
--- N_0x03f1a106bda7dd3e
---
--- @hash 0x03F1A106BDA7DD3E
---
--- @return void
function N_0x03f1a106bda7dd3e() end

    
--- N_0x1f3f018bc3afa77c
---
--- @hash 0x1F3F018BC3AFA77C
--- @param p0 number (float)
--- @param p1 number (float)
--- @param p2 number (float)
--- @param p3 number (float)
--- @param p4 number (float)
--- @param p5 number (float)
--- @param p6 number (float)
--- @param p7 any
--- @param p8 any
--- @return any
function N_0x1f3f018bc3afa77c(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

    
--- N_0x43d1680c6d19a8e9
---
--- @hash 0x43D1680C6D19A8E9
---
--- @return void
function N_0x43d1680c6d19a8e9() end

    
--- N_0x40aefd1a244741f2
---
--- @hash 0x40AEFD1A244741F2
--- @param p0 boolean
--- @return void
function N_0x40aefd1a244741f2(p0) end

    
--- ```
--- SET_PLAYERS_*  
--- ```
---
--- @hash 0x5F2013F8BC24EE69
--- @param p0 number (int)
--- @return void
function N_0x5f2013f8bc24ee69(p0) end

    
--- ```
--- NativeDB Parameter 0: Hash modelHash
--- ```
---
--- @hash 0xF086AD9354FAC3A3
--- @param modelHash any
--- @return void
function RemoveModelFromCreatorBudget(modelHash) end

    
--- ```
--- streaming::request_menu_ped_model(joaat("player_zero"));  
--- iVar0 = ped::create_ped(25, joaat("player_zero"), cam::_get_gameplay_cam_coords(), 0f, 0, false);  
--- entity::freeze_entity_position(iVar0, true);  
--- ped::_0x4668d80430d6c299(iVar0);  
--- ui::give_ped_to_pause_menu(iVar0, 1);  
--- ```
---
--- @hash 0xA0261AEF7ACFC51E
--- @param model Hash
--- @return void
function RequestMenuPedModel(model) end

    
--- RequestAnimDict
---
--- @hash 0xD3BD40951412FEF6
--- @param animDict string (char*)
--- @return void
function RequestAnimDict(animDict) end

    
--- ```
--- Request a model to be loaded into memory  
--- ```
---
--- @hash 0x963D27A58DF860AC
--- @param model Hash
--- @return void
function RequestModel(model) end

    
--- N_0xa76359fc80b2438e
---
--- @hash 0xA76359FC80B2438E
--- @param p0 number (float)
--- @return void
function N_0xa76359fc80b2438e(p0) end

    
--- ```
--- All names can be found in playerswitchestablishingshots.meta
--- ```
---
--- @hash 0x0FDE9DBFC0A6BC65
--- @param name string (char*)
--- @return void
function SetPlayerSwitchEstablishingShot(name) end

    
--- ```
--- It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.  
--- ```
---
--- @hash 0x198F77705FA0931D
--- @param entity Entity
--- @return void
function SetFocusEntity(entity) end

    
--- IsEntityFocus
---
--- @hash 0x2DDFF3FB9075D747
--- @param entity Entity
--- @return boolean
function IsEntityFocus(entity) end

    
--- N_0x74de2e8739086740
---
--- @hash 0x74DE2E8739086740
---
--- @return void
function N_0x74de2e8739086740() end

    
--- SetPlayerSwitchOutro
---
--- @hash 0xC208B673CE446B61
--- @param p0 number (float)
--- @param p1 number (float)
--- @param p2 number (float)
--- @param p3 number (float)
--- @param p4 number (float)
--- @param p5 number (float)
--- @param p6 number (float)
--- @param p7 number (float)
--- @param p8 any
--- @return void
function SetPlayerSwitchOutro(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

    
--- N_0xad5fdf34b81bfe79
---
--- @hash 0xAD5FDF34B81BFE79
---
--- @return void
function N_0xad5fdf34b81bfe79() end

    
--- ```
--- NativeDB Return Type: void
--- ```
---
--- @hash 0x07503F7948F491A7
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @return any
function RequestCollisionAtCoord(x, y, z) end

    
--- ```
--- Possible p0 values:  
--- "prologue"  
--- "Prologue_Main"  
--- ```
---
--- @hash 0xAF12610C644A35C9
--- @param name string (char*)
--- @param toggle boolean
--- @return void
function SetMapdatacullboxEnabled(name, toggle) end

    
--- ```
--- Override the area where the camera will render the terrain.
--- p3, p4 and p5 are usually set to 0.0
--- ```
---
--- @hash 0xBB7454BAFF08FE25
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @param offsetX number (float)
--- @param offsetY number (float)
--- @param offsetZ number (float)
--- @return void
function SetFocusPosAndVel(x, y, z, offsetX, offsetY, offsetZ) end

    
--- SetReducePedModelBudget
---
--- @hash 0x77B5F9A36BF96710
--- @param toggle boolean
--- @return void
function SetReducePedModelBudget(toggle) end

    
--- ```
--- // this enum comes directly from R* so don't edit this  
--- enum ePlayerSwitchType  
--- {  
--- 	SWITCH_TYPE_AUTO,  
--- 	SWITCH_TYPE_LONG,  
--- 	SWITCH_TYPE_MEDIUM,  
--- 	SWITCH_TYPE_SHORT  
--- };  
--- Use GET_IDEAL_PLAYER_SWITCH_TYPE for the best switch type. Or just auto, because it calls the same function in executable.  
--- ----------------------------------------------------  
--- Examples from the decompiled scripts:  
--- STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 0, 3);  
--- STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 2050, 3);  
--- STREAMING::START_PLAYER_SWITCH(PLAYER::PLAYER_PED_ID(), l_832._f3, 1024, 3);  
--- STREAMING::START_PLAYER_SWITCH(g_141F27, PLAYER::PLAYER_PED_ID(), 513, v_14);  
--- Note: DO NOT, use SWITCH_TYPE_LONG with flag 513. It leaves you stuck in the clouds. You'll have to call STOP_PLAYER_SWITCH() to return to your ped.  
--- Flag 8 w/ SWITCH_TYPE_LONG will zoom out 3 steps, then zoom in 2/3 steps and stop on the 3rd and just hang there.  
--- Flag 8 w/ SWITCH_TYPE_MEDIUM will zoom out 1 step, and just hang there.  
--- ```
---
--- @hash 0xFAA23F2CBA159D67
--- @param from Ped
--- @param to Ped
--- @param flags number (int)
--- @param switchType number (int)
--- @return void
function StartPlayerSwitch(from, to, flags, switchType) end

    
--- ```
--- assetName = For example "core"   
--- From the b678d decompiled scripts:  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("core_snow");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("fm_mission_controler");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("proj_xmas_firework");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_apartment_mp");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_biolab_heist");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_parachute");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_cig_plane");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_creator");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_tankbattle");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_ornate_heist");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_prison_break_heist_station");  
--- ```
---
--- @hash 0xB80D8756B4668AB6
--- @param assetName string (char*)
--- @return void
function RequestNamedPtfxAsset(assetName) end

    
--- ```
--- Probably IS_SWITCH_*
--- ```
---
--- @hash 0x933BBEEB8C61B5F4
---
--- @return boolean
function N_0x933bbeeb8c61b5f4() end

    
--- N_0xf8155a7f03ddfc8e
---
--- @hash 0xF8155A7F03DDFC8E
--- @param p0 any
--- @return void
function N_0xf8155a7f03ddfc8e(p0) end

    
--- ```
--- Unloads the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  
--- Animation set and clip set are synonymous.  
--- ```
---
--- @hash 0x16350528F93024B3
--- @param animSet string (char*)
--- @return void
function RemoveAnimSet(animSet) end

    
--- ShutdownCreatorBudget
---
--- @hash 0xCCE26000E9A6FAD7
---
--- @return void
function ShutdownCreatorBudget() end

    
--- ```
--- if (!sub_8f12("START LOAD SCENE SAFE")) {  
--- if (CUTSCENE::GET_CUTSCENE_TIME() > 4178) {  
---     STREAMING::_ACCFB4ACF53551B0(1973.845458984375, 3818.447265625, 32.43629837036133, 15.0, 2);  
---     sub_8e9e("START LOAD SCENE SAFE", 1);  
--- }  
--- 		}  
--- 		(Previously known as STREAMING::_NEW_LOAD_SCENE_START_SAFE)  
--- ```
---
--- @hash 0xACCFB4ACF53551B0
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @param radius number (float)
--- @param p4 any
--- @return boolean
function NewLoadSceneStartSphere(x, y, z, radius, p4) end

    
--- SetStreaming
---
--- @hash 0x6E0C692677008888
--- @param toggle boolean
--- @return void
function SetStreaming(toggle) end

    
--- Control how many new (ambient?) peds will spawn in the game world.
--- Range for p0 seems to be 0-3, where 0 is none and 3 is the normal level.
---
--- @hash 0x8C95333CFC3340F3
--- @param p0 number (int)
--- @return void
function SetPedPopulationBudget(p0) end

    
--- RequestAdditionalCollisionAtCoord
---
--- @hash 0xC9156DC11411A9EA
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @return void
function RequestAdditionalCollisionAtCoord(x, y, z) end

    
--- ```
--- Harcoded limit for radius is 30.0f  
--- ```
---
--- @hash 0xB85F26619073E775
--- @param x number (float)
--- @param y number (float)
--- @param z number (float)
--- @param radius number (float)
--- @return void
function SetHdArea(x, y, z, radius) end

    
--- SetVehiclePopulationBudget
---
--- @hash 0xCB9E1EB3BE2AF4E9
--- @param p0 number (int)
--- @return void
function SetVehiclePopulationBudget(p0) end

    
--- ```
--- Starts loading the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  
--- ```
---
--- @hash 0x6EA47DAE7FAD0EED
--- @param animSet string (char*)
--- @return void
function RequestAnimSet(animSet) end

    
--- ```
--- Something to do with interiors that have been loaded.  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "V_FIB01_cur_elev");  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "limbo");  
--- STREAMING::_8A7A40100EDFEC58(l_13BB, "V_Office_gnd_lifts");  
--- STREAMING::_8A7A40100EDFEC58(l_13BB, "limbo");  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "v_fib01_jan_elev");  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "limbo");  
--- ```
---
--- @hash 0x8A7A40100EDFEC58
--- @param interiorID number (int)
--- @param roomName string (char*)
--- @return void
function RequestModelsInRoom(interiorID, roomName) end

    
--- N_0x63eb2b972a218cac
---
--- @hash 0x63EB2B972A218CAC
---
--- @return void
function N_0x63eb2b972a218cac() end

    
--- RemoveAnimDict
---
--- @hash 0xF66A602F829E2A06
--- @param animDict string (char*)
--- @return void
function RemoveAnimDict(animDict) end

    
--- ```
--- maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty  
--- ```
--- 
--- ```
--- NativeDB Return Type: void
--- ```
---
--- @hash 0x944955FB2A3935C8
---
--- @return any
function RequestPtfxAsset() end

    
--- NewLoadSceneStart
--- @usage function func_8(vParam0)
---     return (-(Sin(vParam0.z)) * Cos(vParam0.x)), (Cos(vParam0.z) * Cos(vParam0.x)), Sin(vParam0.x)
--- end
--- 
--- Citizen.CreateThread(function()
---     local vLocal_43 = vector3(1691.228, 3251.785, 44.2574)
---     local vLocal_44 = vector3(2.5652, 0, -4.1481)
--- 
---     if NewLoadSceneStart(vLocal_43.x, vLocal_43.y, vLocal_43.z, func_8(vLocal_44), 4500.0, 0)) then
---           SetPlayerControl(PlayerId(), false, 0)
---           local gameTimer = GetGameTimer()
--- 
---           while not IsNewLoadSceneLoaded() and (GetGameTimer() - gameTimer < 20) do
---               Citizen.Wait(0)
---           end
--- 
---           NewLoadSceneStop()
---           SetFocusPosAndVel(vLocal_43.x, vLocal_43.y, vLocal_43.z, func_8(vLocal_44))
---     end
--- end
--- @hash 0x212A8D0D2BABFAC2
--- @param posX number (float)
--- @param posY number (float)
--- @param posZ number (float)
--- @param offsetX number (float)
--- @param offsetY number (float)
--- @param offsetZ number (float)
--- @param radius number (float)
--- @param p7 number (int)
--- @return boolean
function NewLoadSceneStart(posX, posY, posZ, offsetX, offsetY, offsetZ, radius, p7) end

    
--- RequestClipSet
---
--- @hash 0xD2A71E1A77418A49
--- @param clipSet string (char*)
--- @return void
function RequestClipSet(clipSet) end

    
--- ```
--- Unloads model from memory  
--- ```
---
--- @hash 0xE532F5D78798DAAB
--- @param model Hash
--- @return void
function SetModelAsNoLongerNeeded(model) end

    
--- ```
--- IPL list: pastebin.com/iNGLY32D
--- IPL list + Coords: https://pastebin.com/FyV5mMma  
--- ```
---
--- @hash 0x41B4893843BBDB74
--- @param iplName string (char*)
--- @return void
function RequestIpl(iplName) end

    
--- StopPlayerSwitch
---
--- @hash 0x95C0A5BBDC189AA1
---
--- @return void
function StopPlayerSwitch() end

    
--- SetReduceVehicleModelBudget
---
--- @hash 0x80C527893080CCF3
--- @param toggle boolean
--- @return void
function SetReduceVehicleModelBudget(toggle) end

    
--- SetSrlTime
---
--- @hash 0xA74A541C6884E7B8
--- @param p0 number (float)
--- @return void
function SetSrlTime(p0) end

    
--- SetInteriorActive
---
--- @hash 0xE37B76C387BE28ED
--- @param interiorID number (int)
--- @param toggle boolean
--- @return void
function SetInteriorActive(interiorID, toggle) end

    
--- ```
--- This is a NOP function. It does nothing at all.  
--- ```
---
--- @hash 0x42CBE54462D92634
--- @param toggle boolean
--- @return void
function SetDitchPoliceModels(toggle) end

    
--- Use after using \_SWITCH_OUT_PLAYER to swoop the camera back down to the player's ped.
---
--- @hash 0xD8295AF639FD9CB8
--- @param ped Ped
--- @return void
function SwitchInPlayer(ped) end

    
--- ```
--- assetName = For example "core"  
--- ```
---
--- @hash 0x5F61EBBE1A00F96D
--- @param fxName string (char*)
--- @return void
function RemoveNamedPtfxAsset(fxName) end

    
--- ```
--- doesn't act normally when used on mount chilliad
--- 
--- flags:
--- 
--- 0: normal
--- 1: no transition
--- 255: switch IN
--- 
--- switchType: 0 - 3
--- 
--- 0: 1 step towards ped
--- 1: 3 steps out from ped
--- 2: 1 step out from ped
--- 3: 1 step towards ped
--- ```
---
--- @hash 0xAAB3200ED59016BC
--- @param ped Ped
--- @param flags number (int)
--- @param switchType number (int)
--- @return void
function SwitchOutPlayer(ped, flags, switchType) end

    