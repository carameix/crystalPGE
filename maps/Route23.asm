Route23_MapScripts:
	def_scene_scripts

	def_callbacks

Route23Sign:
	jumptext Route23SignText

Route23SignText:
	text "INDIGO PLATEAU"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#MON LEAGUE HQ"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	;warp_event  9,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	;warp_event 10,  5, INDIGO_PLATEAU_POKECENTER_1F, 2
	;warp_event  9, 13, VICTORY_ROAD_2F, 6
	;warp_event 10, 13, VICTORY_ROAD_2F, 7

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, IndigoPlateauSign

	def_object_events
