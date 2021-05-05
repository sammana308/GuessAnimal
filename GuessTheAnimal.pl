/* animal.pro
  animal identification game.

    start with ?- guess.     */

guess :- hypothesize(Animal),
      write('I guess that the animal is: '),
      write(Animal),
      nl,
      undo.

/* hypotheses to be tested */
hypothesize(aardvark)   :- aardvark, !.
hypothesize(albatross)  :- albatross, !.
hypothesize(antelope)   :- antelope, !.
hypothesize(bass)       :- bass, !.
hypothesize(bear)       :- bear, !.
hypothesize(boar)       :- boar, !.
hypothesize(buffalo)    :- buffalo, !.
hypothesize(calf)       :- calf, !.
hypothesize(carp)       :- carp, !.
hypothesize(catfish)    :- catfish, !.
hypothesize(cavy)       :- cavy, !.
hypothesize(cheetah)    :- cheetah, !.
hypothesize(chicken)    :- chicken, !.
hypothesize(chub)       :- chub, !.
hypothesize(clam)       :- clam, !.
hypothesize(crab)       :- crab, !.
hypothesize(crayfish)   :- crayfish, !.
hypothesize(crow)       :- crow, !.
hypothesize(deer)       :- deer, !.
hypothesize(dogfish)    :- dogfish, !.
hypothesize(dolphin)    :- dolphin, !.
hypothesize(dove)       :- dove, !.
hypothesize(duck)       :- duck, !.
hypothesize(elephant)   :- elephant, !.
hypothesize(flamingo)   :- flamingo, !.
hypothesize(flea)       :- flea, !.
hypothesize(frog)       :- frog, !.
hypothesize(fruitbat)   :- fruitbat, !.
hypothesize(giraffe)    :- giraffe, !.
hypothesize(girl)       :- girl, !.
hypothesize(gnat)       :- gnat, !.
hypothesize(goat)       :- goat, !.
hypothesize(gorilla)    :- gorilla, !.
hypothesize(gull)       :- gull, !.
hypothesize(haddock)    :- haddock, !.
hypothesize(hamster)    :- hamster, !.
hypothesize(hare)       :- hare, !.
hypothesize(hawk)       :- hawk, !.
hypothesize(herring)    :- herring, !.
hypothesize(honeybee)   :- honeybee, !.
hypothesize(housefly)   :- housefly, !.
hypothesize(kiwi)       :- kiwi, !.
hypothesize(ladybird)   :- ladybird, !.
hypothesize(lark)       :- lark, !.
hypothesize(leopard)    :- leopard, !.
hypothesize(lion)       :- lion, !.
hypothesize(lobster)    :- lobster, !.
hypothesize(lynx)       :- lynx, !.
hypothesize(mink)       :- mink, !.
hypothesize(mole)       :- mole, !.
hypothesize(mongoose)   :- mongoose, !.
hypothesize(moth)       :- moth, !.
hypothesize(newt)       :- newt, !.
hypothesize(octopus)    :- octopus, !.
hypothesize(opossum)    :- opossum, !.
hypothesize(ostrich)    :- ostrich, !.
hypothesize(parakeet)   :- parakeet, !.
hypothesize(penguin)    :- penguin, !.
hypothesize(pheasant)   :- pheasant, !.
hypothesize(pike)       :- pike, !.
hypothesize(piranha)    :- piranha, !.
hypothesize(pitviper)   :- pitviper, !.
hypothesize(platypus)   :- platupus, !.
hypothesize(polecat)    :- polecat, !.
hypothesize(pony)       :- pony, !.
hypothesize(porpoise)   :- porpoise, !.
hypothesize(puma)       :- puma, !.
hypothesize(pussycat)   :- pussycat, !.
hypothesize(raccoon)    :- raccoon, !.
hypothesize(reindeer)   :- reindeer, !.
hypothesize(rhea)       :- rhea, !.
hypothesize(scorpion)   :- scorpion, !.
hypothesize(seahorse)   :- seahorse, !.
hypothesize(seal)       :- seal, !.
hypothesize(sealion)    :- sealion, !.
hypothesize(seasnake)   :- seasnake, !.
hypothesize(seawasp)    :- seawasp, !.
hypothesize(skimmer)    :- skimmer, !.
hypothesize(skua)       :- skua, !.
hypothesize(slowworm)   :- slowworm, !.
hypothesize(slug)       :- slug, !.
hypothesize(sole)       :- sole, !.
hypothesize(sparrow)    :- sparrow, !.
hypothesize(squirrel)   :- squirrel, !.
hypothesize(starfish)   :- starfish, !.
hypothesize(stingray)   :- stingray, !.
hypothesize(swan)       :- swan, !.
hypothesize(termite)    :- termite, !.
hypothesize(tiger)      :- tiger, !.
hypothesize(toad)       :- toad, !.
hypothesize(tortoise)   :- tortoise, !.
hypothesize(tuatara)    :- tuatara, !.
hypothesize(tuna)       :- tuna, !.
hypothesize(vole)       :- vole, !.
hypothesize(vulture)    :- vulture, !.
hypothesize(wallaby)    :- wallaby, !.
hypothesize(wasp)       :- wasp, !.
hypothesize(wolf)       :- wolf, !.
hypothesize(worm)       :- worm, !.
hypothesize(wren)       :- wren, !.
hypothesize(zebra)      :- zebra, !.
hypothesize(unknown).             /* no diagnosis */

/* animal identification rules */
aardvark    :-  mammal,
                omnivore,
                ungulate,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_snout),
                verify(eats_ants_and_termites).
antelope    :-  mammal,
                herbivore,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(males_always_have_horns).
bear        :-  mammal,
                omnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_long_snout),
                verify(has_small_rounded_ears).
boar        :-  mammal,
                omnivore,
                ungulate,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_flat_snout),
                verify(is_wild_but_social_animal).
buffalo     :-  mammal,
                herbivore,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(has_upward_curved_horns),
                verify(has_tuft_on_tails).
calf        :-  mammal,
                herbivore,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_domestic),
                verify(is_reared_for_cattles),
                verify(is_used_for_meats).
cavy        :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(is_domestic),
                verify(are_rodents_used_as_pets),
                verify(is_bigger_than_hamster).
deer        :-  mammal,
                herbivore,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(tan_or_brown_colored),
                verify(males_have_antlers).
dolphin     :-  mammal,
                carnivore,
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_fins),
                verify(has_a_tail),
                verify(is_born_with_hair_but_falls_off_later).
elephant    :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(has_a_trunk_and_tusks),
                verify(has_very_large_ears).
fruitbat    :-  mammal,
                herbivore,
                verify(is_airborne),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(uses_echolocation_to_see_in_dark),
                verify(flys),
                verify(has_wings).
girl        :-  mammal,
                omnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_two_legs),
                verify(is_domestic),
                verify(lives_in_society),
                verify(can_talk).
goat        :-  mammal,
                ungulate,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_domestic),
                verify(is_used_for_cattle_and_meats),
                verify(is_smaller_than_cows).
gorilla     :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_two_legs),
                verify(shares_98_percent_DNA_with_humans).
hamster     :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_domestic),
                verify(is_nocturnal),
                verify(is_smaller_than_guinea_pigs).
hare        :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_bigger_than_rabbit),
                verify(hops).
leopard     :-  mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_bigger_than_cheetah),
                verify(has_rossette_markings).
lion        :-  mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_considered_the_king_of_the_jungle),
                verify(males_have_shaggy_manes).
lynx        :-  mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(large_pawed_cats),
                verify(has_tufted_ears).
mink        :-  mammal,
                carnivore,
                verify(is_aquatic),
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_small_animal_of_the_weasal_family),
                verify(purrs_like_cats_when_happy).
mole        :-  mammal,
                insectivore,
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(are_used_for_yardkeeping),
                verify(digging_claws).
mongoose    :-  mammal,
                omnivore,
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(tail_is_tapered),
                verify(is_resistant_to_snake_venom).
opossum     :-  mammal,
                omnivore,
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(has_course_black/grayish_white/reddish_fur_with_white_tipped_guard_hairs),
                verify(can_give_rabies_to_people),
                verify(scavenges_food_in_human_trash).
platupus    :-  mammal,
                carnivore,
                verify(lays_egg),
                verify(is_aquatic),
                verify(is_predator),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(tail_is_flat),
                verify(webbed_feet).
polecat     :-  mammal,
                carnivore,
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(has_banditlike_appearance_with_white_stripe_across_the_face),
                verify(can_cross_with_ferrets).
pony        :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_domestic),
                verify(smaller_than_horse),
                verify(have_better_endurance_than_horse).
porpoise    :-  mammal,
                carnivore,
                verify(is_aquatic),
                verify(is_predator),
                verify(is_toothed),
                verify(has_fins),
                verify(has_a_blunt_snout),
                verify(fins_are_dorsal_and_trianguar).
puma        :-  mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(are_crepuscular_animal),
                verify(tan-colored).
pussycat    :-  mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_domestic),
                verify(hisses_when_scared_or_agitated),
                verify(purrs_when_happy).
raccoon     :-  mammal,
                omnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(are_known_as_trash_panda),
                verify(carries_same_potential_dangers_as_opossum).
reindeer    :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_domestic),
                verify(both_male_and_female_grow_antlers),
                verify(has_the_largest_and_heaviest_antlers).
seal        :-  mammal,
                carnivore,
                verify(is_aquatic),
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_fins),
                verify(dives_underwater_to_hunt_fish),
                verify(has_whiskers).
sealion     :-  mammal,
                carnivore,
                verify(is_aquatic),
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_fins),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(strong_swimmers),
                verify(pinnipeds).
squirrel    :-  mammal,
                omnivore,
                verify(is_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(climbs_tree),
                verify(stores_nut_and_acorns_for_winter).

vole        :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(prominent_orange_teeth),
                verify(digs_hole_in_existing_holes_dug_by_moles).
wallaby     :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(smaller_than_kangaroo),
                verify(macropeds).
wolf        :-  mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(largest_members_of_dog_family),
                verify(howls).
cheetah :-      mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_the_fastest_animal),
                verify(has_dark_spots).
tiger :-        mammal,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(is_the_largest_cat_species),
                verify(has_black_stripes).
giraffe :-      mammal,
                ungulate,
                verify(has_long_neck),
                verify(has_long_legs).
zebra :-        mammal,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(has_black_stripes),
                verify(has_longest_neck).


chicken     :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(is_domestic),
                verify(pecking),
                verify(is_popular_source_of_animal_protein).
crow        :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(black_colored),
                verify(common_animal_to_use_as_halloween_decoration).
dove        :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_domestic),
                verify(has_a_tail),
                verify(a_symbol_of_peace).
duck        :-  bird,
                omnivore,
                verify(is_airborne),
                verify(is_aquatic),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_domestic),
                verify(has_a_tail),
                verify(is_a_waterfowl).
flamingo    :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(is_pink_colored).
gull        :-  bird,
                carnivore,
                verify(is_airborne),
                verify(is_aquatic),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_a_predator),
                verify(has_a_tail),
                verify(expert_fliers_and_can_be_found_near_the_sea).
hawk        :-  bird,
                carnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_a_predator),
                verify(has_a_tail),
                verify(are_fast_in_flying),
                verify(represents_messenger_of_spirit_world).
kiwi        :-  bird,
                omnivore,
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(does_not_fly),
                verify(shares_name_with_a_fruit).
                
lark        :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(are_known_for_their_melodious_singing).
parakeet    :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(can_be_taught_vocabulary).
pheasant    :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(are_called_ring_necked).
rhea        :-  bird,
                omnivore,
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_a_predator),
                verify(has_a_tail),
                verify(does_not_fly),
                verify(distantly_related_to_ostrich_and_emu).
skimmer     :-  bird,
                carnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(is_aquatic),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_a_predator),
                verify(has_a_tail),
                verify(distinctive_flight_style_is_flys_low_near_water).
skua        :-  bird,
                carnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(is_aquatic),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_a_predator),
                verify(has_a_tail),
                verify(resembles_to_seagulls),
                verify(only_species_that_breeds_in_Arctic_and_Antarctic).
sparrow     :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(serves_ecosystem_by_spreading_seeds).
swan        :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(have_elongated_and_curved_necks),
                verify(symbol_for_love).
vulture     :-  bird,
                carnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(is_a_predator),
                verify(has_a_tail),
                verify(hunched_over_stance).
wren        :-  bird,
                omnivore,
                verify(is_airborne),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(small_like_a_sparrow_but_has_longer_tail_comparatively),
                verify(bubbly_and_energetic).

ostrich      :- bird,
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(does_not_fly),
                verify(has_long_neck).
penguin      :- bird,
                carnivore,
                verify(is_aquatic),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(does_not_fly),
                verify(swims),
                verify(is_black_and_white).
albatross    :- bird,
                verify(breathes_air),
                verify(is_a_predator),
                verify(has_backbone),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(flys_long_distance_over_sea_),
                verify(has_the_longest_wingspan).

pitviper    :-  reptile,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_backbone),
                verify(venomous),
                verify(has_a_tail),
                verify(temperature_sensitive_facial_pits).
seasnake    :-  reptile,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(is_aquatic),
                verify(has_backbone),
                verify(venomous),
                verify(has_a_tail),
                verify(paddle_like_tails).
slowworm    :-  reptile,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_backbone),
                verify(venomous),
                verify(has_a_tail),
                verify(has_visible_eyelids).
tortoise    :-  reptile,
                herbivore,
                verify(breathes_air),
                verify(has_backbone),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(has_a_shell).
tuatara      :- reptile,
                carnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_backbone),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(nocturnal),
                verify(looks_like_a_lizard).
bass        :-  fish,
                omnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(available_in_almost_any_water_source).
carp        :-  fish,
                omnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(is_domestic),
                verify(gold_yellow_brown_coloration),
                verify(large_scales).
catfish     :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(whiskers),
                verify(scaleless).
chub        :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(ponited_fins),
                verify(used_as_baits).
dogfish     :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(pointed_snout),
                verify(distantly_related_to_sharks).
haddock      :- fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(large_spot_on_each_side),
                verify(closely_related_to_cod).
herring      :- fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(body_is_deeper_than_it_is_thick),
                verify(length_is_five_times_the_depth).
pike        :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(pores_under_the_jaws_that_detects_vibration_in_water),
                verify(duck_billed_shaped_snout).
piranha     :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(razor_sharp_teeth),
                verify(a_group_of_these_tiny_fishes_can_eat_human).
seahorse    :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(water_creature_resembles_to_a_horse).
sole        :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(flat_body),
                verify(only_found_in_European_waters).
stingray    :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(flattened_body_that_is_composed_of_pectoral_fins),
                verify(eys_mouth_nostril_and_gills_are_on_its_undebelly).
tuna        :-  fish,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(has_fins),
                verify(has_a_tail),
                verify(warm_blooded_fish),
                verify(is_consumed_by_humans_widely).

frog        :-  amphibian,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(breathes_air),
                verify(has_four_legs),
                verify(long_tongue_used_for_catching_prey),
                verify(jumps).
newt        :-  amphibian,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(is_toothed),
                verify(has_backbone),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(lizard_shaped_body),
                verify(webbed_feet).
toad        :-  amphibian,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_toothed),
                verify(has_backbone),
                verify(breathes_air),
                verify(has_four_legs),
                verify(looks_like_a_frog),
                verify(have_smaller_legs_than_frogs).

flea        :-  bug,
                verify(lays_eggs),
                verify(breathes_air),
                verify(has_six_legs),
                verify(jumps_into_fur_of_animals).
gnat        :-  bug,
                omnivore,
                verify(flys),
                verify(lays_eggs),
                verify(breathes_air),
                verify(has_six_legs),
                verify(resembles_to_mosquitos),
                verify(found_in_moist_places).
honeybee    :-  bug,
                omnivore,
                verify(flys),
                verify(has_hair),
                verify(is_airborne),
                verify(lays_eggs),
                verify(breathes_air),
                verify(has_six_legs),
                verify(responsible_for_pollination),
                verify(collects_honey).
housefly    :-  bug,
                verify(has_hair),
                verify(is_airborne),
                verify(flys),
                verify(lays_eggs),
                verify(breathes_air),
                verify(has_six_legs),
                verify(usually_found_near_trash).
ladybird    :-  bug,
                omnivore,
                verify(lays_eggs),
                verify(is_airborne),
                verify(flys),
                verify(breathes_air),
                verify(is_a_predator),
                verify(has_six_legs),
                verify(tiny_red_insect_with_dotted_prints).
moth        :-  bug,
                herbivore,
                verify(has_hair),
                verify(flys),
                verify(lays_eggs),
                verify(is_airborne),
                verify(breathes_air),
                verify(has_six_legs),
                verify(they_have_wings).
termite     :-  bug,
                verify(lays_eggs),
                verify(breathes_air),
                verify(has_six_legs),
                verify(often_found_in_wood),
                verify(feeds_on_wood).
wasp        :-  bug,
                omnivore,
                verify(flys),
                verify(has_hair),
                verify(lays_eggs),
                verify(is_airborne),
                verify(breathes_air),
                verify(venomous),
                verify(has_six_legs),
                verify(similar_to_bees_but_bigger_and_agrresive).

clam        :-  invertebrate,
                omnivore,
                verify(lays_eggs),
                verify(is_a_predator),
                verify(pearls_are_found_in_them).
crab        :-  invertebrate,
                omnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(has_ten_legs),
                verify(a_pair_of_claws),
                verify(crawls_on_land_and_water).

crayfish    :-  invertebrate,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(has_six_legs),
                verify(smaller_than_lobster),
                verify(fresh_water_crustaceans).
lobster     :-  invertebrate,
                omnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(has_six_legs),
                verify(has_a_large_par_of_claw),
                verify(large_marine_crustaceans).
octopus     :-  invertebrate,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(has_eight_legs),
                verify(three_hearts),
                verify(bulbous_head),
                verify(blue_blood).
scorpion    :-  invertebrate,
                carnivore,
                verify(is_a_predator),
                verify(venomous),
                verify(has_eight_legs),
                verify(has_a_tail),
                verify(venomous_stinger_at_the_rear),
                verify(a_pair_of_grasping_pincers_at_the_front).
seawasp      :- invertebrate,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(venomous),
                verify(are_marine_stinger),
                verify(has_tentacles).
slug        :-  invertebrate,
                omnivore,
                verify(lays_eggs),
                verify(breathes_air),
                verify(similar_to_snails_but_with_no_snail).
starfish    :-  invertebrate,
                carnivore,
                verify(lays_eggs),
                verify(is_aquatic),
                verify(is_a_predator),
                verify(has_five_legs),
                verify(they_are_stars_of_the_sea).
worm        :-  invertebrate,
                omnivore,
                verify(lays_eggs),
                verify(breathes_air),
                verify(birds_prey_on_them).


/* classification rules */
mammal    :- verify(has_hair), !.
mammal    :- verify(gives_milk),
             verify(has_backbone).
bird      :- verify(has_feathers), !.
bird      :- verify(flys),
             verify(lays_eggs).
reptile      :-verify(has_dermal_scales), !.
reptile         :- verify(lays_eggs), verify(has_backbone), !.
fish      :-verify(has_gills), !.
amphibian :-verify(has_cold_blood), !.
bug       :-verify(has_exoskeleton), !.
invertebrate:-verify(has_no_backbone), !.
carnivore :- verify(eats_meat), !.
carnivore :- verify(has_pointed_teeth),
             verify(has_claws),
             verify(has_forward_eyes).
herbivore :-verify(eats_plants), !.
omnivore  :-verify(eats_meat),verify(eats_plant), !.
insectivore:-verify(eats_insects), !.
ungulate :- mammal,
            verify(has_hooves), !.
/*ungulate :- mammal,
            verify(chews_cud).*/

/* how to ask questions */
ask(Question) :-
    write('Does the animal have the following attribute: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
