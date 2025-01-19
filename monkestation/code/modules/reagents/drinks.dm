//tada modularized now (please merge this back in)

/datum/reagent/consumable/sunset_sarsaparilla
	name = "Sunset Sarsaparilla"
	description = "Build Mass with Sass!"
	color = "#633504" // rgb: 99, 53, 4
	quality = DRINK_VERYGOOD
	taste_description = "the wild west"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED

/datum/glass_style/drinking_glass/sunset_sarsaparilla
	required_drink_type = /datum/reagent/consumable/sunset_sarsaparilla
	name = "glass of Sunset Sarsparilla"
	desc = "Locally sourced from your nearest nuclear wasteland."
	icon = 'monkestation/icons/obj/drinks/soda.dmi'
	icon_state = "sunset_sarsparillaglass"

/datum/reagent/consumable/sunset_sarsaparilla/on_mob_life(mob/living/carbon/drinker)
	. = ..()
	drinker.heal_bodypart_damage(brute = 2.5)
	drinker.heal_bodypart_damage(burn = 2.5)

/datum/reagent/consumable/nuka_cola_dark
	name = "Nuka Cola Dark"
	description = "A rum and coke but more radioactive"
	color = "#412202"
	quality = DRINK_VERYGOOD
	var/boozepwr = 45
	taste_description = "a hangover"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED
	metabolized_traits = list(TRAIT_NOFLASH)

/datum/glass_style/drinking_glass/nuka_cola_dark
	required_drink_type = /datum/reagent/consumable/nuka_cola_dark
	name = "glass of Nuka Cola Dark"
	desc = "Do not operate heavy machinery for 8 hours after drinking."
	icon = 'monkestation/icons/obj/drinks/soda.dmi'
	icon_state = "Nuka_cola_dark"

/datum/reagent/consumable/nuka_cola_dark/on_mob_life/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	affected_mob.adjust_eye_blur(-2 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_temp_blindness(-2 SECONDS * REM * seconds_per_tick)
	switch(current_cycle)
		if(21 to 110)
			if(SPT_PROB(100 * (1 - (sqrt(110 - current_cycle) / 10)), seconds_per_tick))
				affected_mob.adjustOrganLoss(ORGAN_SLOT_EYES, -2)
		if(110 to INFINITY)
			affected_mob.adjustOrganLoss(ORGAN_SLOT_EYES, -2)
	return ..()

/datum/reagent/consumable/nuka_cola_quantum
	name = "Nuka Cola Quantum"
	description = "the glow is healthy we promise"
	color = "#12eccf"
	quality = DRINK_FANTASTIC
	taste_description = "plutonium"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED
	metabolized_traits = list(TRAIT_XRAY_VISION, HALLUCINATION_TRAIT)

/datum/glass_style/drinking_glass/nuka_cola_quantum
	required_drink_type = /datum/reagent/consumable/nuka_cola_quantum
	name = "Glass of Nuka Cola Quantum"
	desc = "Half the taste, twice the radiation!"
	icon = 'monkestation/icons/obj/drinks/soda.dmi'
	icon_state = "Nuka_cola_quantum"


/datum/reagent/consumable/nuka_cola_quartz
	name = "Nuka Cola Quartz"
	description = "A rare prototype flavor made with crystalized sugar and no colorings"
	color = "#cacaca"
	quality = DRINK_FANTASTIC
	taste_description = "a sugar coma"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED


/datum/glass_style/drinking_glass/nuka_cola_quartz
	required_drink_type = /datum/reagent/consumable/nuka_cola_quartz
	name = "Glass of Nuka Cola Quartz"
	desc = "Are you sure that isnt just sugar water?"
	icon = ""
	icon_state = 'monkestation/icons/obj/drinks/soda.dmi'

//datum/reagent/consumable/nuka_cola_quartz/on_mob_life(mob/living/carbon/drinker)
//	. = ..()
//	var/mob/living/carbon/user = holder.my_atom
//	animate(src, , alpha = 200, time = 20)
