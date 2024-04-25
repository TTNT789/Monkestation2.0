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

/datum/glass_style/drinking_glass/nuka_cola_dark
	required_drink_type = /datum/reagent/consumable/nuka_cola_dark
	name = "glass of Nuka Cola Dark"
	desc = "Do not operate heavy machinery for 8 hours after drinking."
	icon = 'monkestation/icons/obj/drinks/soda.dmi'
	icon_state = "Nuka_cola_dark"


/datum/reagent/consumable/nuka_cola_dark/on_mob_life(mob/living/carbon/drinker)
	. = ..()

/datum/reagent/consumable/nuka_cola_quantum
	name = "Nuka Cola Quantum"
	description = "the glow is healthy we promise"
	color = "#12eccf"
	quality = DRINK_FANTASTIC

/datum/glass_style/drinking_glass/nuka_cola_quantum
	required_drink_type = /datum/reagent/consumable/nuka_cola_quantum
	name = "Glass of Nuka Cola Quantum"
	desc = "Twice the taste, twice the radiation!"
	icon = 'monkestation/icons/obj/drinks/soda.dmi'
	icon_state = ""

/datum/reagent/consumable/nuka_cola_quantum/on_mob_life(mob/living/carbon/drinker)
	. = ..()
