/* animal.pro
  animal identification game.

    start with ?- go.     */

go :- hypothesize(Animal),
      write('I guess that the animal is: '),
      write(Animal),
      nl,
      undo.

/* hypotheses to be tested */
hypothesize(aardvark)    :- aardvark, !.
hypothesize(albatross) :- albatross, !.
hypothesize(antelope)    :- antelope, !.
hypothesize(bass)    :- bass, !.
hypothesize(bear)    :- bear, !.
hypothesize(boar)    :- boar, !.
hypothesize(buffalo)    :- buffalo, !.
hypothesize(calf)    :- calf, !.
hypothesize(carp)    :- carp, !.
hypothesize(catfish)    :- catfish, !.
hypothesize(cavy)    :- cavy, !.
hypothesize(cheetah)    :- cheetah, !.
hypothesize(chicken)    :- chicken, !.
hypothesize(chub)    :- chub, !.
hypothesize(clam)    :- clam, !.
hypothesize(crab)    :- crab, !.
hypothesize(crayfish)    :- crayfish, !.
hypothesize(crow)    :- crow, !.
hypothesize(deer)    :- deer, !.
hypothesize(dogfish)    :- dogfish, !.
hypothesize(dolphin)    :- dolphin, !.
hypothesize(dove)    :- dove, !.
hypothesize(duck)    :- duck, !.
hypothesize(elephant)    :- elephant, !.
hypothesize(flamingo)    :- flamingo, !.
hypothesize(flea)    :- flea, !.
hypothesize(frog)    :- frog, !.
hypothesize(fruitbat)    :- fruitbat, !.
hypothesize(giraffe)    :- giraffe, !.
hypothesize(girl)    :- girl, !.
hypothesize(gnat)    :- gnat, !.
hypothesize(goat)    :- goat, !.
hypothesize(gorilla)    :- gorilla, !.
hypothesize(gull)    :- gull, !.
hypothesize(haddock)    :- haddock, !.
hypothesize(hamster)    :- hamster, !.
hypothesize(hare)    :- hare, !.
hypothesize(hawk)    :- hawk, !.
hypothesize(herring)    :- herring, !.
hypothesize(honeybee)    :- honeybee, !.
hypothesize(housefly)    :- housefly, !.
hypothesize(kiwi)    :- kiwi, !.
hypothesize(ladybird)    :- ladybird, !.
hypothesize(lark)    :- lark, !.
hypothesize(leopard)    :- leopard, !.
hypothesize(lion)    :- lion, !.
hypothesize(lobster)    :- lobster, !.
hypothesize(lynx)    :- lynx, !.
hypothesize(mink)    :- mink, !.
hypothesize(mole)    :- mole, !.
hypothesize(mongoose)    :- mongoose, !.
hypothesize(moth)    :- moth, !.
hypothesize(newt)    :- newt, !.
hypothesize(octopus)    :- octopus, !.
hypothesize(opossum)    :- opossum, !.
hypothesize(ostrich)    :- ostrich, !.
hypothesize(parakeet)    :- parakeet, !.
hypothesize(penguin)    :- penguin, !.
hypothesize(pheasant)    :- pheasant, !.
hypothesize(pike)    :- pike, !.
hypothesize(piranha)    :- piranha, !.
hypothesize(pitviper)    :- pitviper, !.
hypothesize(platypus)    :- platupus, !.
hypothesize(polecat)    :- polecat, !.
hypothesize(pony)    :- pony, !.
hypothesize(porpoise)    :- porpoise, !.
hypothesize(puma)    :- puma, !.
hypothesize(pussycat)    :- pussycat, !.
hypothesize(raccoon)    :- raccoon, !.
hypothesize(reindeer)    :- reindeer, !.
hypothesize(rhea)    :- rhea, !.
hypothesize(scorpion)    :- scorpion, !.
hypothesize(seahorse)    :- seahorse, !.
hypothesize(seal)    :- seal, !.
hypothesize(sealion)    :- sealion, !.
hypothesize(seasnake)    :- seasnake, !.
hypothesize(seawasp)    :- seawasp, !.
hypothesize(skimmer)    :- skimmer, !.
hypothesize(skua)    :- skua, !.
hypothesize(slowworm)    :- slowworm, !.
hypothesize(slug)    :- slug, !.
hypothesize(sole)    :- sole, !.
hypothesize(sparrow)    :- sparrow, !.
hypothesize(squirrel)    :- squirrel, !.
hypothesize(starfish)    :- starfish, !.
hypothesize(stingray)    :- stingray, !.
hypothesize(swan)    :- swan, !.
hypothesize(termite)    :- termite, !.
hypothesize(tiger)     :- tiger, !.
hypothesize(toad)    :- toad, !.
hypothesize(tortoise)    :- tortoise, !.
hypothesize(tuatara)    :- tuatara, !.
hypothesize(tuna)    :- tuna, !.
hypothesize(vampire)    :- vampire, !.
hypothesize(vole)    :- vole, !.
hypothesize(vulture)    :- vulture, !.
hypothesize(wallaby)    :- wallaby, !.
hypothesize(wasp)    :- wasp, !.
hypothesize(wolf)    :- wolf, !.
hypothesize(worm)    :- worm, !.
hypothesize(wren)    :- wren, !.
hypothesize(zebra)     :- zebra, !.
hypothesize(unknown).             /* no diagnosis */

/* animal identification rules */
aardvark    :-    mammal,
                   omnivore,
                ungulate,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                  verify(has_four_legs),
                verify(has_a_snout),
                verify(eats_ants_and_termites).
antelope    :-    mammal,
                   herbivore,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(males_always_have_horns).
bear        :-    mammal,
                omnivore,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_long_snout),
                verify(has_small_rounded_ears).
boar        :-    mammal,
                omnivore,
                ungulate,
                verify(is_a_predator),
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_flat_snout),
                verify(is_wild_but_social_animal).
buffalo        :-    mammal,
                    herbivore,
                    ungulate,
                    verify(is_toothed),
                    verify(breathes_air),
                    verify(has_four_legs),
                        verify(has_a_tail),
                    verify(has_upward_curved_horns),
                    verify(has_tuft_on_tails).
calf        :-    mammal,
                herbivore,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                    verify(has_a_tail),
                verify(is_domestic),
                verify(is_reared_for_cattles),
                verify(is_used_for_meats).
cavy        :-    mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(is_domestic),
                verify(are_rodents_used_as_pets),
                verify(is_bigger_than_hamster).
deer        :-    mammal,
                herbivore,
                ungulate,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(tan_or_brown_colored),
                verify(males_have_antlers).
dolphin        :-    mammal,
                    carnivore,
                    verify(is_aquatic),
                    verify(is_a_predator),
                    verify(is_toothed),
                    verify(breathes_air),
                    verify(has_fins),
                    verify(has_a_tail),
                    verify(is_born_with_hair_but_falls_off_later).
elephant    :-    mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                    verify(has_a_tail),
                verify(has_a_trunk_and_tusks),
                verify(has_very_large_ears).
fruitbat    :-    mammal,
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
gorilla        :-   mammal,
                    herbivore,
                    verify(is_toothed),
                    verify(breathes_air),
                    verify(has_two_legs),
                    verify(shares_98_percent_DNA_with_humans).
hamster        :-   mammal,
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
leopard        :- mammal,
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
lynx        :- mammal,
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
opossum        :-   mammal,
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
polecat        :-   mammal,
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
raccoon        :-   mammal,
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
                verify(has_a_tai),
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
sealion        :-   mammal,
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
                verify(has_fins),
                verify(has_two_legs),
                verify(has_a_tail),
                verify(climbs_tree),
                verify(stores_nut_and_acorns_for_winter).
vampire        :-mammal.
vole        :-  mammal,
                herbivore,
                verify(is_toothed),
                verify(breathes_air),
                verify(has_four_legs),
                verify(has_a_tail),
                verify(prominent_orange_teeth),
                verify(digs_hole_in_existing_holes_dug_by_moles).
wallaby        :-mammal,
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


chicken        :-bird.
crow        :-bird.
dove        :-bird.
duck        :-bird.
flamingo    :-bird.
gull        :-bird.
hawk        :-bird.
kiwi        :-bird.
lark        :-bird.
parakeet    :-bird.
pheasant    :-bird.
rhea        :-bird.
skimmer        :-bird.
skua        :-bird.
sparrow        :-bird.
swan        :-bird.
vulture        :-bird.
wren        :-bird.

pitviper    :-reptile.
seasnake    :-reptile.
slowworm    :-reptile.
tortoise    :-reptile.
tuatara        :-reptile.

bass        :-fish.
carp        :-fish.
catfish        :-fish.
chub        :-fish.
dogfish        :-fish.
haddock        :-fish.
herring        :-fish.
pike        :-fish.
piranha        :-fish.
seahorse    :-fish.
sole        :-fish.
stingray    :-fish.
tuna        :-fish.

frog        :-amphibian.
newt        :-amphibian.
toad        :-amphibian.

flea        :-bug.
gnat        :-bug.
honeybee    :-bug.
housefly    :-bug.
ladybird    :-bug.
moth        :-bug.
termite        :-bug.
wasp        :-bug.

clam        :-invertebrate.
crab        :-invertebrate.
crayfish    :-invertebrate.
lobster        :-invertebrate.
octopus        :-invertebrate.
scorpion    :-invertebrate.
seawasp        :-invertebrate.
slug        :-invertebrate.
starfish    :-invertebrate.
worm        :-invertebrate.

cheetah :- mammal,
           carnivore,
           verify(has_tawny_color),
           verify(has_dark_spots).
tiger :- mammal,
         carnivore,
         verify(has_tawny_color),
         verify(has_black_stripes).
giraffe :- ungulate,
           verify(has_long_neck),
           verify(has_long_legs).
zebra :- ungulate,
         verify(has_black_stripes).

ostrich :- bird,
           verify(does_not_fly),
           verify(has_long_neck).
penguin :- bird,
           verify(does_not_fly),
           verify(swims),
           verify(is_black_and_white).
albatross :- bird,
             verify(appears_in_story_Ancient_Mariner),
             verify(flys_well).

/* classification rules */
mammal    :- verify(has_hair), !.
mammal    :- verify(gives_milk),
             verify(has_backbone).
bird      :- verify(has_feathers), !.
bird      :- verify(flys),
             verify(lays_eggs).
reptile      :-verify(has_dermal_scales), !.
fish      :-verify(has_gills), !.
amphibian :-verify(has_cold_blood), !.
bug       :-verify(has_exoskeleton), !.
invertebrate:-verify(has_no_backbone), !.
carnivore :- verify(eats_meat), !.
carnivore :- verify(has_pointed_teeth),
             verify(has_claws),
             verify(has_forward_eyes).
herbivore :-verify(eats_plants), !.
omnivore  :-verify(eats_meat), verify(eats_plant), !.
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
