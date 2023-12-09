	object_const_def
	const VICTORYROAD1F_BOULDER1
	const VICTORYROAD1F_BOULDER2
	const VICTORYROAD1F_BOULDER3
	const VICTORYROAD1F_POKE_BALL1
	const VICTORYROAD1F_POKE_BALL2

VictoryRoad1F_MapScripts:
	def_scene_scripts
	
	def_callbacks

VictoryRoad1FTMEarthquake:
	itemball TM_EARTHQUAKE

VictoryRoad1FFullHeal:
	itemball FULL_HEAL

VictoryRoad1FBoulder:
	jumpstd StrengthBoulderScript

VictoryRoad1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, VICTORY_ROAD_GATE, 5
	warp_event  9, 17, VICTORY_ROAD_GATE, 6
	warp_event  1,  1, VICTORY_ROAD_2F, 1

	def_coord_events
	
	def_bg_events

	def_object_events
	object_event  5,  15, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1FBoulder, -1
	object_event  2,  10, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1FBoulder, -1
	object_event 14,  2, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad1FBoulder, -1
	object_event 11,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad1FTMEarthquake, EVENT_VICTORY_ROAD_1F_TM_EARTHQUAKE
	object_event  9,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad1FFullHeal, EVENT_VICTORY_ROAD_1F_FULL_HEAL
