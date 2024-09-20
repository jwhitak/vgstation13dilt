//A dataum that controls overlay recoloring of a base sprite on a given /obj/
//Defined at top level here temporarily for testing. TODO- MOVE TO OBJ STUFF
/obj
	var/datum/dorfized/dorfized

/datum/dorfized
	var/image/baseimage
	var/list/overlay_dorfs
	var/cloth_layer
	var/image/dyn_overlay_worn
	var/image/dyn_overlay_left
	var/image/dyn_overlay_right

/datum/dorfized/New(var/atom/base)
	baseimage = base
	overlay_dorfs = list()

/datum/dorfized/proc/generate_sprite(var/obj/O)
	O.overlays.len = 0
	O.overlays += getdorfimage()
	if(istype(O, /obj/item))
		var/obj/item/I = O
		I.dynamic_overlay.len = 0
		I.dynamic_overlay["[HAND_LAYER]-[GRASP_LEFT_HAND]"] = dyn_overlay_left
		I.dynamic_overlay["[HAND_LAYER]-[GRASP_RIGHT_HAND]"] = dyn_overlay_right
		if(cloth_layer)
			I.dynamic_overlay["[cloth_layer]"] = dyn_overlay_worn

/datum/dorfized/proc/getdorfimage()
	var/image/I = baseimage
	baseimage.appearance_flags = RESET_COLOR
	for(var/datum/dorfized/layerin in overlay_dorfs)
		I.overlays += layerin.getdorfimage()
	return I
