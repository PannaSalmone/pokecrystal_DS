	object_const_def ; object_event constants
	const ECRUTEAKSHRINE_TWIN
	const ECRUTEAKSHRINE_HOOTHOOT
	const ECRUTEAKSHRINE_POKEFAN_M
	const ECRUTEAKSHRINE_POKEFAN_F
	const ECRUTEAKSHRINE_ROCKER
	const ECRUTEAKSHRINE_UNUSED_GUY
	
EcruteakShrineBirdScript:
	opentext
	writetext EcruteakShrineText
	cry HOOTHOOT
	waitbutton
	closetext
	end	
	
EcruteakShrineTwinScript:
	jumptextfaceplayer EcruteakShrineTwinText	

EcruteakShrineRockerScript:
	jumptextfaceplayer EcruteakShrineRockerText	

EcruteakShrineMomScript:
	jumptextfaceplayer EcruteakShrineMomText
	
EcruteakShrineDadScript:
	jumptextfaceplayer EcruteakShrineDadText
	
EcruteakShrineGhostScript:
	opentext
	writetext EcruteakShrineGhostText
	waitbutton
	closetext
	end
	
TinTowerSign:
	jumptext TinTowerSignText
	
TinTowerSignText:
	text "TIN TOWER"

	para "A legendary #-"
	line "MON is said to"
	cont "roost here."
	done	

EcruteakShrineText:
	text "Hooty: Hoot…"
	done

EcruteakShrineTwinText:
	text "I'm a little"
	line "scared of ghosts…"
	
	para "but with my Hooty"
	line "here I feel safe."
	done

EcruteakShrineRockerText:
	text "This place scares"
	line "me at night…"
	
	para "I thought I saw a"
	line "girl come in here"
	
	para "But now she seems"
	line "disappeared…"
	
	para "was she a ghost?"
	done

EcruteakShrineGhostText:
	text "..."
	
	para "is he sleeping?"	
	
	para "I should go away."
	
	done

EcruteakShrineMomText:
	text "Be quiet…"
	
	para "Please take off"
	line "your hat…"
	done

EcruteakShrineDadText:
	text "My wife likes to"
	line "come here."
	
	para "But sometimes I'd"
	line "rather stay home."	
	done

EcruteakShrine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

EcruteakShrine_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  4, 34, ECRUTEAK_CITY, 13
	warp_event  5, 34, ECRUTEAK_CITY, 14
	warp_event 19, 23, ECRUTEAK_TIN_TOWER_ENTRANCE, 1
	warp_event 20, 23, ECRUTEAK_TIN_TOWER_ENTRANCE, 2
	warp_event 19,  5, TIN_TOWER_1F, 1
	warp_event 19, 19, WISE_TRIOS_ROOM, 1
	warp_event 20, 19, WISE_TRIOS_ROOM, 2	

	db 0 ; coord events

	db 1 ; bg events
	bg_event 21,  6, BGEVENT_READ, TinTowerSign

	db 6 ; object events
	object_event  3, 27, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, 8, 19, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakShrineDadScript, -1
	object_event  7, 27, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, 8, 19, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakShrineMomScript, -1
	object_event  8, 28, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, 8, 19, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakShrineTwinScript, -1
	object_event  9, 28, SPRITE_HOOTHOOT, SPRITEMOVEDATA_POKEMON, 1, 0, 8, 19, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakShrineBirdScript, -1
	object_event  5, 28, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 2, 2, 20, 5, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakShrineRockerScript, -1
	object_event 13, 27, SPRITE_UNUSED_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, 20, 5, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakShrineGhostScript, -1 
	