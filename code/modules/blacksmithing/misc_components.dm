/obj/item/item_head
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	inhand_states = list("left_hand" = 'icons/mob/in-hand/left/smithing_left.dmi', "right_hand" = 'icons/mob/in-hand/right/smithing_right.dmi')
	force = 10
	w_type = RECYK_METAL
	var/handle_icon = /obj/item/handle //What object to use as a finished handle
	var/obj/item/result
	var/overridesprite = TRUE //override whatever result sprite with the component-built sprite
	var/overrideinhands = TRUE //override the inhands sprite too?
	var/list/optional_additions = list() //Optional components to enhance an object
	var/finishing_type = "handle"
	var/list/finishing_components = list(/obj/item/handle, /obj/item/stack/leather_strip, /obj/item/weapon/reagent_containers/glass/rag)

/obj/item/item_head/preattack(atom/target, mob/user, proximity_flag, click_parameters)
	. = 1
	if(prob(50) && user.drop_item(src))
		user.visible_message("<span class='danger'>\The [src] slips out of [user]'s hands!</span>", "<span class='danger'>Your grip on \the [src] slips, and you drop it!</span>")
	return ..()

/**
 * Proc to perform any extra actions for a specific item_head to a finished product
 */
/obj/item/item_head/proc/finishing_extras(var/obj/item/result)
	return

/obj/item/item_head/examine(mob/user)
	..()
	to_chat(user, "<span class = 'notice'>It looks like it requires:</span>")
	var/formattednames = ""
	var/list/validhandlenames = list()
	if(finishing_type == "handle")
		for(var/x in finishing_components)
			switch(x)
				if(/obj/item/handle)
					validhandlenames += "a handle made of wood or metal"
				if(/obj/item/stack/leather_strip)
					validhandlenames += "a leather strap"
				if(/obj/item/weapon/reagent_containers/glass/rag)
					validhandlenames += "a cloth rag"
		formattednames = english_list(validhandlenames, and_text = " or ", final_comma_text = ", ")
		to_chat(user, "<span class = 'notice'>One of: [formattednames]</span>")
	else
		for(var/x in finishing_components)
			var/obj/X = x
			to_chat(user, "<span class = 'notice'>\A [initial(X.name)]</span>")
	if(optional_additions.len)
		to_chat(user, "<span class = 'notice'>It looks like it can optionally fit:</span>")
		for(var/i in optional_additions)
			var/obj/I = i
			to_chat(user, "<span class = 'notice'>\A [initial(I.name)]</span>")

/obj/item/item_head/attackby(obj/item/I, mob/user)
	//if we make a cache, it'll *add* every valid subtype to this list...
	var/is_finisher = is_type_in_list(I, finishing_components, makecache = FALSE)
	if(is_finisher || (optional_additions.len && is_type_in_list(I, optional_additions, makecache = FALSE)))
		to_chat(user, "<span class = 'notice'>You begin to attach \the [I] to \the [src].</span>")
		if(do_after(user, src, 4 SECONDS))
			if(istype(I, /obj/item/stack))
				var/obj/item/stack/S = I
				if(!S.use(1))
					return
				else
					for(var/matID in S.starting_materials) // Not all sheets have a material type
						materials.addAmount(matID, S.perunit)
			else
				if(!user.drop_item(I))
					return
				else
					materials.addFrom(I.materials)

			for(var/testtype in optional_additions)
				if(istype(I, testtype))
					optional_additions.Remove(testtype)
					break
			gen_quality(quality-I.quality, quality, I.material_type)
			if(dorfized && (I.dorfized || is_finisher))
				if(is_finisher && finishing_type == "handle" && handle_icon)
					var/obj/displayhandle = new handle_icon
					var/setcolor = "#000000"
					if(I.color)
						setcolor = I.color
					else if(I.material_type)
						setcolor = I.material_type.color
					else if(istype(I,/obj/item/stack/leather_strip))
						setcolor = "#B67C3E"
					else if(istype(I,/obj/item/weapon/reagent_containers/glass/rag))
						setcolor = "#FEFEFE"
					if(I.material_type?.color_effect && I.quality >= 5)
						I.dorfized = new /datum/dorfized(dorf_colorize(displayhandle, seteffect = I.material_type.color_effect))
					else
						I.dorfized = new /datum/dorfized(dorf_colorize(displayhandle, setcolor))
				dorfized.overlay_dorfs += I.dorfized
				update_icon()
			if(!istype(I, /obj/item/stack))
				qdel(I) //stacks handle themselves if they run out

			if(is_finisher) //We're done
				user.drop_item(src)
				result = new result(loc)
				result.materials = new /datum/materials(result)
				result.materials.addFrom(materials)
				var/datum/material/mat = material_type
				if(mat)
					if(overridesprite || overrideinhands)
						dorfized.override_base_icon = overridesprite
						dorfized.override_inhands = overrideinhands
						result.dorfify(mat, 0, quality, dorfized)
					else
						result.dorfify(mat, 0, quality)
				if(finishing_type == "clothing")
					var/obj/item/clothing/clothes = result
					for(var/part in clothes.dyeable_parts)
						clothes.dyed_parts[part] = list(I.color, 255)
				result.update_icon()
				user.put_in_hands(result)
				qdel(src)
		return
	..()

/obj/item/item_head/hammer_head
	name = "hammer head"
	icon_state = "hammer"
	desc = "unlike the shark, this one lacks bite."
	force = 5
	throwforce = 10
	result = /obj/item/weapon/hammer
	optional_additions = list(/obj/item/pommel)
	finishing_components = list(/obj/item/handle)
	handle_icon = /obj/item/handle/hammer

/obj/item/item_head/sledgehammer_head
	name = "sledgehammer head"
	icon_state = "sledgehammer_head"
	desc = "unlike the shark, this one lacks bite."
	force = 7
	throwforce = 10
	result = /obj/item/weapon/hammer/sledge
	optional_additions = list(/obj/item/pommel)
	finishing_components = list(/obj/item/handle)
	handle_icon = /obj/item/handle/item

/obj/item/item_head/pitchfork_head
	name = "pitchfork head"
	icon_state = "pitchfork_head"
	desc = "The revolution is not going to start itself."
	force = 7
	sharpness = 1.2
	sharpness_flags = SHARP_TIP
	result = /obj/item/weapon/pitchfork
	optional_additions = list(/obj/item/pommel)
	finishing_components = list(/obj/item/handle)
	handle_icon = /obj/item/handle/item

/obj/item/item_head/pickaxe_head
	name = "pickaxe head"
	icon_state = "pickaxe_head"
	desc = "To strike the earth, you'll need a handle on the situation."
	force = 13
	result = /obj/item/weapon/pickaxe
	optional_additions = list(/obj/item/pommel)
	finishing_components = list(/obj/item/handle)
	handle_icon = /obj/item/handle/item

/obj/item/item_head/sword
	name = "sword blade"
	icon_state = "large_metal_blade"
	desc = "Rather unwieldy without a hilt."
	force = 13 //unfinished blade can't get a good swing in, but you gotta do what you gotta do
	throwforce = 10
	sharpness = 1.2
	sharpness_flags = SHARP_TIP | SHARP_BLADE
	handle_icon = /obj/item/handle/sword
	optional_additions = list(/obj/item/guard, /obj/item/pommel)
	result = /obj/item/weapon/sword

/obj/item/item_head/sword/scimitar
	name = "scimitar blade"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	icon_state = "scimitar"
	desc = "Curved. Swords."
	result = /obj/item/weapon/sword/scimitar

/obj/item/item_head/sword/shortsword
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	name = "shortsword blade"
	icon_state = "shortsword"
	result = /obj/item/weapon/sword/shortsword

/obj/item/item_head/sword/gladius
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	name = "gladius blade"
	icon_state = "gladius"
	result = /obj/item/weapon/sword/gladius
	optional_additions = list(/obj/item/handle)

/obj/item/item_head/sword/sabre
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	name = "sabre blade"
	icon_state = "sabre"
	result = /obj/item/weapon/sword/sabre

/obj/item/item_head/tower_shield
	name = "unstrapped tower shield"
	icon_state = "large_plate"
	finishing_components = list(/obj/item/stack/leather_strip)
	result = /obj/item/weapon/shield/riot/tower
	w_type = RECYK_METAL
	handle_icon = null

/obj/item/item_head/buckler
	name = "unstrapped buckler"
	icon_state = "armor_plate"
	overridesprite = FALSE
	finishing_components = list(/obj/item/stack/leather_strip)
	result = /obj/item/weapon/shield/riot/buckler
	w_type = RECYK_METAL
	handle_icon = null

/obj/item/item_head/chainmail_torso
	name = "unfinished chainmail"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	overridesprite = FALSE
	overrideinhands = FALSE
	icon_state = "chainmail_torso"
	finishing_type = "clothing"
	result = /obj/item/clothing/suit/armor/vest/chainmail
	finishing_components = list(/obj/item/stack/sheet/cloth)
	w_type = RECYK_METAL
	handle_icon = null

/obj/item/item_head/chainmail_helm
	name = "unfinished chainmail coif"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	overridesprite = FALSE
	overrideinhands = FALSE
	icon_state = "chainmail_head"
	finishing_type = "clothing"
	result = /obj/item/clothing/head/helmet/chainmail
	finishing_components = list(/obj/item/stack/sheet/cloth)
	w_type = RECYK_METAL
	handle_icon = null

//
//Accessory Components that are not item_heads
//

/obj/item/handle
	name = "handle"
	icon = 'icons/obj/misc_components.dmi'
	icon_state = "item_handle"
	desc = "A generic handle, with no purpose... yet"
	material_type = /datum/material/wood
	starting_materials = list(MAT_WOOD = 0.5 * CC_PER_SHEET_WOOD)
	w_type = RECYK_WOOD

/obj/item/handle/item
	name = "item handle"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	icon_state = "long_handle"
	desc = "A handle for items and tools."

/obj/item/handle/hammer
	name = "hammer handle"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	icon_state = "hammer_handle"
	desc = "A handle for items and tools."

/obj/item/handle/sword
	name = "sword handle"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	icon_state = "handle"
	desc = "A generic sword handle."

/obj/item/pommel
	name = "sword pommel"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	icon_state = "pommel"
	desc = "a round ball of metal."
	starting_materials = list(MAT_IRON = 0.5 * CC_PER_SHEET_METAL)
	w_type = RECYK_METAL

/obj/item/guard
	name = "sword guard"
	icon = 'icons/obj/blacksmithing/smithing.dmi'
	icon_state = "crossguard"
	desc = "Used to make sure what you're stabbing doesn't slide all the way to your hand, or your hand slide to the stabby bit."
	w_type = RECYK_METAL

/obj/item/guard/cross_guard
	name = "sword crossguard"
	icon_state = "crossguard"
	desc = "Used to make sure what you're stabbing doesn't slide all the way to your hand, or your hand slide to the stabby bit."
	w_type = RECYK_METAL

/obj/item/guard/bar_guard
	name = "sword barguard"
	icon_state = "barguard"
	desc = "Used to make sure what you're stabbing doesn't slide all the way to your hand, or your hand slide to the stabby bit."
	w_type = RECYK_METAL
