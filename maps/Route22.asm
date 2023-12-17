Route22_MapScripts:
	def_scene_scripts

	def_callbacks

Route22PokemonLeagueSign:
	jumptext Route22PokemonLeagueSignText

Route22PokemonLeagueSignText:
	text "#MON LEAGUE"
	line "FRONT GATE"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, ROUTE_22_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 7,  11, BGEVENT_READ, Route22PokemonLeagueSign

	def_object_events
