	object_const_def
	;const VICTORYROAD_RIVAL
	;const VICTORYROAD_POKE_BALL1
	;const VICTORYROAD_POKE_BALL2
	;const VICTORYROAD_POKE_BALL3
	;const VICTORYROAD_POKE_BALL4
	;const VICTORYROAD_POKE_BALL5

VictoryRoad2F_MapScripts:
	def_scene_scripts
	
	def_callbacks

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
	;warp_event  0, 11, VICTORY_ROAD, 9
	;warp_event  0, 27, VICTORY_ROAD, 8
	;warp_event 13,  5, ROUTE_23, 3

	def_coord_events
	;coord_event 12,  8, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalLeft
	;coord_event 13,  8, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalRight

	def_bg_events
	;bg_event  3, 29, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion
	;bg_event  3, 65, BGEVENT_ITEM, VictoryRoadHiddenFullHeal

	def_object_events
	object_event  4,  14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, -1
	object_event  5,   5, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FBoulder, -1
	;object_event 18, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	;object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	;object_event 12, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadMaxRevive, EVENT_VICTORY_ROAD_MAX_REVIVE
	;object_event 18, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullRestore, EVENT_VICTORY_ROAD_FULL_RESTORE
	;object_event 15, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullHeal, EVENT_VICTORY_ROAD_FULL_HEAL
	;object_event  7, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadHPUp, EVENT_VICTORY_ROAD_HP_UP
