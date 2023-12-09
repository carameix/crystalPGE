	object_const_def
	const VICTORYROAD2F_BOULDER1
	const VICTORYROAD2F_BOULDER2
	const VICTORYROAD2F_BOULDER3
	const VICTORYROAD2F_POKE_BALL1
	
VictoryRoad2F_MapScripts:
	def_scene_scripts
	
	def_callbacks

VictoryRoad2FFullRestore:
	itemball FULL_RESTORE

VictoryRoad2FHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VICTORY_ROAD_2F_HIDDEN_FULL_HEAL

VictoryRoad2FBoulder:
	jumpstd StrengthBoulderScript

VictoryRoad2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   0,  8, VICTORY_ROAD_1F, 3
	warp_event  23,  7, VICTORY_ROAD_3F, 1
	warp_event   1,  1, VICTORY_ROAD_3F, 2
	warp_event  25, 14, VICTORY_ROAD_3F, 3
	warp_event  27,  7, VICTORY_ROAD_3F, 4
	warp_event  29,  7, ROUTE_23, 3
	warp_event  29,  8, ROUTE_23, 4
	warp_event  22, 16, VICTORY_ROAD_3F, 5
	
	def_coord_events
	
	def_bg_events
	bg_event  2, 15, BGEVENT_ITEM, VictoryRoad2FHiddenFullHeal

	def_object_events
	object_event  4, 14, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, -1
	object_event  5,  5, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, -1
	object_event 23, 16, SPRITE_BOULDER_KANTO, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, EVENT_BOULDER_IN_VICTORY_ROAD_1A
	object_event 27,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoad2FFullRestore, EVENT_VICTORY_ROAD_2F_FULL_RESTORE
