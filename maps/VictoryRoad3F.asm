	object_const_def
	const VICTORYROAD3F_RIVAL
	const VICTORYROAD3F_BOULDER1
	const VICTORYROAD3F_BOULDER2
	const VICTORYROAD3F_BOULDER3
	const VICTORYROAD3F_BOULDER4
	const VICTORYROAD3F_POKE_BALL1
	const VICTORYROAD3F_POKE_BALL2

VictoryRoad3F_MapScripts:
	def_scene_scripts
	scene_script VictoryRoad3FNoop1Scene, SCENE_VICTORYROAD3F_RIVAL_BATTLE
	scene_script VictoryRoad3FNoop2Scene, SCENE_VICTORYROAD3F_NOOP
		
	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, VictoryRoad3FSetUpStoneTableCallback
	
VictoryRoad3FNoop1Scene:
	end

VictoryRoad3FNoop2Scene:
	end

VictoryRoad3FRivalLeft:
	moveobject VICTORYROAD3F_RIVAL, 25, 15
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD3F_RIVAL
	applymovement VICTORYROAD3F_RIVAL, VictoryRoad3FRivalBattleApproachMovement
	scall VictoryRoad3FRivalNext
	applymovement VICTORYROAD3F_RIVAL, VictoryRoad3FRivalBattleExitMovement
	disappear VICTORYROAD3F_RIVAL
	setscene SCENE_VICTORYROAD3F_NOOP
	playmapmusic
	end

VictoryRoad3FRivalMiddle:
	moveobject VICTORYROAD3F_RIVAL, 27, 15
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD3F_RIVAL
	applymovement VICTORYROAD3F_RIVAL, VictoryRoad3FRivalBattleApproachMovement
	scall VictoryRoad3FRivalNext
	applymovement VICTORYROAD3F_RIVAL, VictoryRoad3FRivalBattleExitMovement
	disappear VICTORYROAD3F_RIVAL
	setscene SCENE_VICTORYROAD3F_NOOP
	playmapmusic
	end

VictoryRoad3FRivalRight:
	moveobject VICTORYROAD3F_RIVAL, 28, 15
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD3F_RIVAL
	applymovement VICTORYROAD3F_RIVAL, VictoryRoad3FRivalBattleApproachMovement
	scall VictoryRoad3FRivalNext
	applymovement VICTORYROAD3F_RIVAL, VictoryRoad3FRivalBattleExitMovement
	disappear VICTORYROAD3F_RIVAL
	setscene SCENE_VICTORYROAD3F_NOOP
	playmapmusic
	end

VictoryRoad3FRivalNext:
	turnobject PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext VictoryRoad3FRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_VICTORY_ROAD_3F
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GotTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GotChikorita
	winlosstext VictoryRoad3FRivalDefeatText, VictoryRoad3FRivalVictoryText
	setlasttalked VICTORYROAD3F_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotTotodile:
	winlosstext VictoryRoad3FRivalDefeatText, VictoryRoad3FRivalVictoryText
	setlasttalked VICTORYROAD3F_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotChikorita:
	winlosstext VictoryRoad3FRivalDefeatText, VictoryRoad3FRivalVictoryText
	setlasttalked VICTORYROAD3F_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext VictoryRoad3FRivalAfterText
	waitbutton
	closetext
	end

VictoryRoad3FMaxRevive:
	itemball MAX_REVIVE

VictoryRoad3FHPUp:
	itemball HP_UP

VictoryRoad3FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_3F_HIDDEN_MAX_POTION

VictoryRoad3FRivalBattleApproachMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

VictoryRoad3FRivalBattleExitMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

VictoryRoad3FRivalBeforeText:
	text "Hold it."

	para "…Are you going to"
	line "take the #MON"
	cont "LEAGUE challenge?"

	para "…Don't make me"
	line "laugh."

	para "You're so much"
	line "weaker than I am."

	para "I'm not like I was"
	line "before."

	para "I now have the"
	line "best and strongest"

	para "#MON with me."
	line "I'm invincible!"

	para "<PLAYER>!"
	line "I challenge you!"
	done

VictoryRoad3FRivalDefeatText:
	text "…I couldn't win…"

	para "I gave it every-"
	line "thing I had…"

	para "What you possess,"
	line "and what I lack…"

	para "I'm beginning to"
	line "understand what"

	para "that dragon master"
	line "said to me…"
	done

VictoryRoad3FRivalAfterText:
	text "…I haven't given up"
	line "on becoming the"
	cont "greatest trainer…"

	para "I'm going to find"
	line "out why I can't"

	para "win and become"
	line "stronger…"

	para "When I do, I will"
	line "challenge you."

	para "And I'll beat you"
	line "down with all my"
	cont "power."

	para "…Humph! You keep"
	line "at it until then."
	done

VictoryRoad3FRivalVictoryText:
	text "…Humph!"

	para "When it comes down"
	line "to it, nothing can"
	cont "beat power."

	para "I don't need any-"
	line "thing else."
	done

VictoryRoad3FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback
	
.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 5, VICTORYROAD3F_BOULDER1, .Boulder1
	db -1 ; end
	
.Boulder1:
	disappear VICTORYROAD3F_BOULDER1
	clearevent EVENT_BOULDER_IN_VICTORY_ROAD_1A
	sjump .FinishBoulder
	
.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext VictoryRoad3FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

VictoryRoad3FBoulder:
	jumpstd StrengthBoulderScript

VictoryRoad3FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

VictoryRoad3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  23,  7, VICTORY_ROAD_2F, 2
	warp_event   2,  0, VICTORY_ROAD_2F, 3
	warp_event  27, 15, VICTORY_ROAD_2F, 4
	warp_event  26,  8, VICTORY_ROAD_2F, 5
	warp_event  23, 15, VICTORY_ROAD_2F, 8 ; pit

	def_coord_events
	coord_event 25, 10, SCENE_VICTORYROAD3F_RIVAL_BATTLE, VictoryRoad3FRivalLeft
	coord_event 27, 10, SCENE_VICTORYROAD3F_RIVAL_BATTLE, VictoryRoad3FRivalMiddle
	coord_event 28, 10, SCENE_VICTORYROAD3F_RIVAL_BATTLE, VictoryRoad3FRivalRight

	def_bg_events
	bg_event  7,  8, BGEVENT_ITEM, VictoryRoad3FHiddenMaxPotion
	
	def_object_events
	object_event 25, 15, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD_3F
	object_event 22, 15, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, EVENT_BOULDER_IN_VICTORY_ROAD_1
	object_event 13, 12, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, -1
	object_event 24, 10, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, -1
	object_event 22,  3, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad3FBoulder, -1
	object_event  6,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad3FMaxRevive, EVENT_VICTORY_ROAD_3F_MAX_REVIVE
	object_event 26,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad3FHPUp, EVENT_VICTORY_ROAD_3F_HP_UP
