Route23_MapScripts:
	def_scene_scripts

	def_callbacks

Route23Sign:
	jumptext Route23SignText

Route23SignText:
	text "#MON LEAGUE"

	para "VICTORY ROAD"
	line "ENTRANCE"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, VICTORY_ROAD_GATE, 1
	warp_event  7,123, ROUTE_22_GATE, 1
	warp_event  8,123, ROUTE_22_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  3, 17, BGEVENT_READ, Route23Sign

	def_object_events
