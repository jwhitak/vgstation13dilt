//WIP FORKLIFTS
/obj/structure/bed/chair/vehicle/tractor/forklift
	name = "forklift"
	var/beeptimer = FALSE

//Due to the custom handling of the forklift, we have to repeat some code from bed/chair/vehicle/relaymove
//But it's worth it I promise
/obj/structure/bed/chair/vehicle/tractor/forklift/relaymove(var/mob/living/user, direction)
	INVOKE_EVENT(src, /event/relaymoved, "mover" = src)
	if(user.incapacitated())
		unlock_atom(user)
		return
	//if(!check_key(user))
	//	if(can_warn())
	//		to_chat(user, "<span class='notice'>You'll need the key in one of your hands or inside the ignition slot to drive \the [src].</span>")
	//	return 0
	if(empstun > 0)
		if(user && can_warn(user))
			to_chat(user, "<span class='warning'>\The [src] is unresponsive.</span>")
		return 0
	if(move_delayer.blocked())
		return 0
	if (istype(locked_to, /obj/machinery/bot/mulebot))
		var/obj/machinery/bot/mulebot/M = locked_to
		M.unload(0)

	//If we're in space or our area has no gravity...
	var/turf/T = loc
	if(!istype(T))
		return 0 //location isn't a turf or doesn't exist
	if(!T.has_gravity())
		// Block relaymove() if needed.
		if(!Process_Spacemove(0))
			return 0

	var/can_pull_tether = 0
	if(user.tether)
		if(user.tether.attempt_to_follow(user,get_step(src,direction)))
			can_pull_tether = 1
		else
			var/datum/chain/tether_datum = user.tether.chain_datum
			tether_datum.snap = 1
			tether_datum.Delete_Chain()

	var/movedelay = getMovementDelay()

	if(!beeptimer) //temporary, maybe move to a constant proc you can toggle with a verb
		playsound(src,'sound/mecha/lowpower.ogg',40,0)
		beeptimer = TRUE
		spawn(10)
			beeptimer = FALSE
	if(dir==direction) //forward
		set_glide_size(DELAY2GLIDESIZE(movedelay))
		step(src, direction)
		delayNextMove(movedelay)
	else if(dir==GetOppositeDir(direction)) //backward
		set_glide_size(DELAY2GLIDESIZE(movedelay*2))
		step(src, direction)
		change_dir(GetOppositeDir(direction))
		delayNextMove(movedelay*2)
	else //if(src.dir!=direction)
		change_dir(direction)
		delayNextMove(movedelay*4)
		update_mob()
		return 1

	if(T != loc)
		user.handle_hookchain(direction)

	if(user.tether && can_pull_tether)
		user.tether.follow(user,T)
		var/datum/chain/tether_datum = user.tether.chain_datum
		if(!tether_datum.Check_Integrity())
			tether_datum.snap = 1
			tether_datum.Delete_Chain()

	update_mob()
	/*
	if(istype(src.loc, /turf/space) && (!src.Process_Spacemove(0, user)))
		var/turf/space/S = src.loc
		S.Entered(src)*/

/obj/structure/bed/chair/vehicle/tractor/forklift/handle_layer()
	plane = ABOVE_HUMAN_PLANE
	layer = VEHICLE_LAYER

//TODO

//Verb to turn on/off beeping
//Verb to handle crate-ing

