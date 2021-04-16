/* animal.pro
  animal identification game.

    start with ?- go.     */

go :- hypothesize(Animal),
      write('I guess that the animal is: '),
      write(Animal),
      nl,
      undo.

/* hypotheses to be tested */
hypothesize(aardvark)	:- aardvark, !.
hypothesize(albatross) :- albatross, !.
hypothesize(antelope)	:- antelope, !.
hypothesize(bass)	:- bass, !.
hypothesize(bear)	:- bear, !.
hypothesize(boar)	:- boar, !.
hypothesize(buffalo)	:- buffalo, !.
hypothesize(calf)	:- calf, !.
hypothesize(carp)	:- carp, !.
hypothesize(catfish)	:- catfish, !.
hypothesize(cavy)	:- cavy, !.
hypothesize(cheetah)	:- cheetah, !.
hypothesize(chicken)	:- chicken, !.
hypothesize(chub)	:- chub, !.
hypothesize(clam)	:- clam, !.
hypothesize(crab)	:- crab, !.
hypothesize(crayfish)	:- crayfish, !.
hypothesize(crow)	:- crow, !.
hypothesize(deer)	:- deer, !.
hypothesize(dogfish)	:- dogfish, !.
hypothesize(dolphin)	:- dolphin, !.
hypothesize(dove)	:- dove, !.
hypothesize(duck)	:- duck, !.
hypothesize(elephant)	:- elephant, !.
hypothesize(flamingo)	:- flamingo, !.
hypothesize(flea)	:- flea, !.
hypothesize(frog)	:- frog, !.
hypothesize(fruitbat)	:- fruitbat, !.
hypothesize(giraffe)	:- giraffe, !.
hypothesize(girl)	:- girl, !.
hypothesize(gnat)	:- gnat, !.
hypothesize(goat)	:- goat, !.
hypothesize(gorilla)	:- gorilla, !.
hypothesize(gull)	:- gull, !.
hypothesize(haddock)	:- haddock, !.
hypothesize(hamster)	:- hamster, !.
hypothesize(hare)	:- hare, !.
hypothesize(hawk)	:- hawk, !.
hypothesize(herring)	:- herring, !.
hypothesize(honeybee)	:- honeybee, !.
hypothesize(housefly)	:- housefly, !.
hypothesize(kiwi)	:- kiwi, !.
hypothesize(ladybird)	:- ladybird, !.
hypothesize(lark)	:- lark, !.
hypothesize(leopard)	:- leopard, !.
hypothesize(lion)	:- lion, !.
hypothesize(lobster)	:- lobster, !.
hypothesize(lynx)	:- lynx, !.
hypothesize(mink)	:- mink, !.
hypothesize(mole)	:- mole, !.
hypothesize(mongoose)	:- mongoose, !.
hypothesize(moth)	:- moth, !.
hypothesize(newt)	:- newt, !.
hypothesize(octopus)	:- octopus, !.
hypothesize(opossum)	:- opossum, !.
hypothesize(ostrich)	:- ostrich, !.
hypothesize(parakeet)	:- parakeet, !.
hypothesize(penguin)	:- penguin, !.
hypothesize(pheasant)	:- pheasant, !.
hypothesize(pike)	:- pike, !.
hypothesize(piranha)	:- piranha, !.
hypothesize(pitviper)	:- pitviper, !.
hypothesize(platypus)	:- platupus, !.
hypothesize(polecat)	:- polecat, !.
hypothesize(pony)	:- pony, !.
hypothesize(porpoise)	:- porpoise, !.
hypothesize(puma)	:- puma, !.
hypothesize(pussycat)	:- pussycat, !.
hypothesize(raccoon)	:- raccoon, !.
hypothesize(reindeer)	:- reindeer, !.
hypothesize(rhea)	:- rhea, !.
hypothesize(scorpion)	:- scorpion, !.
hypothesize(seahorse)	:- seahorse, !.
hypothesize(seal)	:- seal, !.
hypothesize(sealion)	:- sealion, !.
hypothesize(seasnake)	:- seasnake, !.
hypothesize(seawasp)	:- seawasp, !.
hypothesize(skimmer)	:- skimmer, !.
hypothesize(skua)	:- skua, !.
hypothesize(slowworm)	:- slowworm, !.
hypothesize(slug)	:- slug, !.
hypothesize(sole)	:- sole, !.
hypothesize(sparrow)	:- sparrow, !.
hypothesize(squirrel)	:- squirrel, !.
hypothesize(starfish)	:- starfish, !.
hypothesize(stingray)	:- stingray, !.
hypothesize(swan)	:- swan, !.
hypothesize(termite)	:- termite, !.
hypothesize(tiger)     :- tiger, !.
hypothesize(toad)	:- toad, !.
hypothesize(tortoise)	:- tortoise, !.
hypothesize(tuatara)	:- tuatara, !.
hypothesize(tuna)	:- tuna, !.
hypothesize(vampire)	:- vampire, !.
hypothesize(vole)	:- vole, !.
hypothesize(vulture)	:- vulture, !.
hypothesize(wallaby)	:- wallaby, !.
hypothesize(wasp)	:- wasp, !.
hypothesize(wolf)	:- wolf, !.
hypothesize(worm)	:- worm, !.
hypothesize(wren)	:- wren, !.
hypothesize(zebra)     :- zebra, !.
hypothesize(unknown).             /* no diagnosis */

/* animal identification rules */
aardvark :-mammal,
           herbivore,
           verify(has_elongated_snout),
           verify(has_reduced_ears).

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
mammal    :- verify(gives_milk).
bird      :- verify(has_feathers), !.
bird      :- verify(flys),
             verify(lays_eggs).
reptile	  :-verify(has_dermal_scales), !.
fish      :-verify(has_gills), !.
amphibian :-verify(has_cold_blood), !.
bug       :-verify(has_exoskeleton), !.
Invertebrate:-verify(has_no_backbone), !.
carnivore :- verify(eats_meat), !.
carnivore :- verify(has_pointed_teeth),
             verify(has_claws),
             verify(has_forward_eyes).
herbivore :-verify(eats_plants), !.
omnivore  :-verify(eats_meat), verify(eats_plant), !.
ungulate :- mammal,
            verify(has_hooves), !.
ungulate :- mammal,
            verify(chews_cud).

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
