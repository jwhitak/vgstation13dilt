//A dataum that controls overlay recoloring of a base sprite on a given /obj/
//Defined at top level here temporarily for testing. TODO- MOVE TO OBJ STUFF
/obj
	var/datum/dorfized/dorfized

/datum/dorfized
	var/image/baseimage
	var/list/overlay_dorfs
	var/override_base_icon
	var/override_inhands
	var/cloth_layer
	var/image/dyn_overlay_worn
	var/image/dyn_overlay_left
	var/image/dyn_overlay_right

/datum/dorfized/New(var/atom/base)
	baseimage = base
	overlay_dorfs = list()
	if(istype(base,/obj/item/clothing))
		var/obj/item/clothing/clothesslot = base
		cloth_layer = clothesslot.cloth_layer

/datum/dorfized/proc/generate_sprite(var/obj/O)
	O.overlays.len = 0
	O.overlays += getdorfimage()
	if(istype(O, /obj/item))
		var/obj/item/I = O
		I.dynamic_overlay.len = 0
		if(override_inhands)
			I.inhand_states = list("left_hand" = 'icons/effects/32x32.dmi', "right_hand" = 'icons/effects/32x32.dmi')
		//if(I.item_state && I.item_state != dyn_overlay_left.icon_state)
		//	dyn_overlay_left = replace_overlays_icon(dyn_overlay_left, icon(dyn_overlay_left.icon, I.item_state))
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
