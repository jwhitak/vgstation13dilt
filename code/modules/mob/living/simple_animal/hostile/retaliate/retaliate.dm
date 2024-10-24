/mob/living/simple_animal/hostile/retaliate
	var/list/enemies = list()
	var/hostile = 0 //Reverts back into a hostile mob when toggle to 1

/mob/living/simple_animal/hostile/retaliate/Found(var/atom/A)
	if(isliving(A))
		var/mob/living/L = A
		if(!L.stat)
			stance = HOSTILE_STANCE_ATTACK
			return L
		else if(!L.reagents || !L.reagents.has_reagent(KILLERPHEROMONES))
			enemies -= L
	else if(istype(A, /obj/mecha))
		var/obj/mecha/M = A
		if(M.occupant)
			stance = HOSTILE_STANCE_ATTACK
			return A

/mob/living/simple_animal/hostile/retaliate/ListTargets()
	if(hostile)
		return ..()
	if(!enemies.len)
		return list()
	var/list/see = ..()
	see &= enemies // Remove all entries that aren't in enemies
	return see

/mob/living/simple_animal/hostile/retaliate/inherit_mind(mob/living/simple_animal/from)
	..()

	var/mob/living/simple_animal/hostile/retaliate/R = from
	if(istype(R))
		src.friends = R.friends.Copy()

/mob/living/simple_animal/hostile/retaliate/proc/Retaliate()
	if(stat) //can't attack if we're dead - no point in targeting
		return

	var/list/around = view(src, vision_range)

	for(var/atom/movable/A in around)
		if(A == src)
			continue
		if(isliving(A))
			var/mob/living/M = A
			if(!attack_same && M.faction != faction)
				enemies |= M
		else if(istype(A, /obj/mecha))
			var/obj/mecha/M = A
			if(M.occupant)
				enemies |= M
				enemies |= M.occupant

	for(var/mob/living/simple_animal/hostile/retaliate/H in around)
		if(!attack_same && !H.attack_same && H.faction == faction)
			H.enemies |= enemies
	return 0

/mob/living/simple_animal/hostile/retaliate/adjustBruteLoss(var/damage)
	..(damage)
	Retaliate()
