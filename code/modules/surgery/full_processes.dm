/**
 * # Surgery Full Processes
 *
 * These datums describe pre-defined use cases for surgeries, to be used for automatic surgery detection and guidance.
 */
/datum/surgery_process
	var/name
	var/description
	var/list/healing_steps
	var/list/recovery_steps

/**
 * Proc to determine what conditions the surgery process is meant to repair
 *
 * Return TRUE if this surgery process can repair conditions on the target, otherwise returns FALSE
 */
/datum/surgery_process/proc/conditions_to_fix(mob/living/carbon/human/target, target_zone)
	return FALSE

