; ModuleID = 'Iris'
source_filename = "Iris"

%Object_vtable = type {}
%Animal_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Animal**)*, void (%Animal**)* }
%Animal = type { %Animal_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%Cat_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Cat**)*, void (%Cat**)* }
%Cat = type { %Cat_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%Dog_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Dog**)*, void (%Dog**)* }
%Dog = type { %Dog_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%Chicken_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Chicken**)*, void (%Chicken**)* }
%Chicken = type { %Chicken_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%Snake_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Snake**)*, void (%Snake**)* }
%Snake = type { %Snake_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%Frog_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Frog**)*, void (%Frog**)* }
%Frog = type { %Frog_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%Bee_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Bee**)*, void (%Bee**)* }
%Bee = type { %Bee_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%Richard_vtable = type { void (%Animal**, i8*)*, void (%Animal**, i8*)*, void (%Animal**, i32)*, void (%Animal**, i1)*, void (%Animal**, i1)*, i8* (%Animal**)*, i8* (%Animal**)*, i32 (%Animal**)*, i1 (%Animal**)*, i1 (%Animal**)*, void (%Richard**)*, void (%Richard**)* }
%Richard = type { %Richard_vtable*, [1 x i8*], i8*, i8*, i32, i1, i1 }
%AnimalGame_vtable = type { void (%AnimalGame**)*, %Animal** (%AnimalGame**, i8*)*, i1 (%AnimalGame**, %Animal**, i32)*, void (%AnimalGame**, %Animal**)* }
%AnimalGame = type { %AnimalGame_vtable*, [0 x i8*] }
%Main_vtable = type { i32 ()* }
%big_vtable = type { %Object_vtable*, %Animal_vtable*, %Cat_vtable*, %Dog_vtable*, %Chicken_vtable*, %Snake_vtable*, %Frog_vtable*, %Bee_vtable*, %Richard_vtable*, %AnimalGame_vtable*, %Main_vtable* }

@Object_vtable_data = global %Object_vtable zeroinitializer
@fmt = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.28 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.29 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.31 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.32 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Noise = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@fmt.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.34 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.35 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!" = private unnamed_addr constant [89 x i8] c"There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!\00", align 1
@Animal_vtable_data = global %Animal_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Animal**)* @Animal_noise, void (%Animal**)* @Animal_funFact }
@fmt.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.37 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Meow!" = private unnamed_addr constant [6 x i8] c"Meow!\00", align 1
@fmt.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.40 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"I can land on all fours!" = private unnamed_addr constant [25 x i8] c"I can land on all fours!\00", align 1
@Cat_vtable_data = global %Cat_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Cat**)* @Cat_noise, void (%Cat**)* @Cat_funFact }
@fmt.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.43 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.44 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Bark!" = private unnamed_addr constant [6 x i8] c"Bark!\00", align 1
@fmt.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.46 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.47 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"I have a great sense of smell!" = private unnamed_addr constant [31 x i8] c"I have a great sense of smell!\00", align 1
@Dog_vtable_data = global %Dog_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Dog**)* @Dog_noise, void (%Dog**)* @Dog_funFact }
@fmt.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.49 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.50 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Cluck!" = private unnamed_addr constant [7 x i8] c"Cluck!\00", align 1
@fmt.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.52 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.53 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"I am one of the closest living descendants to dinosaurs!" = private unnamed_addr constant [57 x i8] c"I am one of the closest living descendants to dinosaurs!\00", align 1
@Chicken_vtable_data = global %Chicken_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Chicken**)* @Chicken_noise, void (%Chicken**)* @Chicken_funFact }
@fmt.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.56 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Hiss!" = private unnamed_addr constant [6 x i8] c"Hiss!\00", align 1
@fmt.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.58 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.59 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"I can be very venomous!" = private unnamed_addr constant [24 x i8] c"I can be very venomous!\00", align 1
@Snake_vtable_data = global %Snake_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Snake**)* @Snake_noise, void (%Snake**)* @Snake_funFact }
@fmt.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.61 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.62 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Croak!" = private unnamed_addr constant [7 x i8] c"Croak!\00", align 1
@fmt.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.64 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.65 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"I have excellent night vision" = private unnamed_addr constant [30 x i8] c"I have excellent night vision\00", align 1
@Frog_vtable_data = global %Frog_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Frog**)* @Frog_noise, void (%Frog**)* @Frog_funFact }
@fmt.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.67 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Buzz!" = private unnamed_addr constant [6 x i8] c"Buzz!\00", align 1
@fmt.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.70 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.71 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"They make something sweet " = private unnamed_addr constant [27 x i8] c"They make something sweet \00", align 1
@Bee_vtable_data = global %Bee_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Bee**)* @Bee_noise, void (%Bee**)* @Bee_funFact }
@fmt.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.73 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.74 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Howdy folks!" = private unnamed_addr constant [13 x i8] c"Howdy folks!\00", align 1
@fmt.75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.76 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.77 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"This is someone you know very well ;)" = private unnamed_addr constant [38 x i8] c"This is someone you know very well ;)\00", align 1
@Richard_vtable_data = global %Richard_vtable { void (%Animal**, i8*)* @Animal_setAnimal, void (%Animal**, i8*)* @Animal_setType, void (%Animal**, i32)* @Animal_setLegs, void (%Animal**, i1)* @Animal_setFur, void (%Animal**, i1)* @Animal_setFly, i8* (%Animal**)* @Animal_getClass, i8* (%Animal**)* @Animal_getType, i32 (%Animal**)* @Animal_numLegs, i1 (%Animal**)* @Animal_hasFur, i1 (%Animal**)* @Animal_canFly, void (%Richard**)* @Richard_noise, void (%Richard**)* @Richard_funFact }
@fmt.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.79 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.80 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@0 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"Hello and welcome to the animal guessing game!" = private unnamed_addr constant [47 x i8] c"Hello and welcome to the animal guessing game!\00", align 1
@"You will have 3 tries to guess the animal, along with a number of hints." = private unnamed_addr constant [73 x i8] c"You will have 3 tries to guess the animal, along with a number of hints.\00", align 1
@"Please enter a number from 1-6" = private unnamed_addr constant [31 x i8] c"Please enter a number from 1-6\00", align 1
@"Please enter g to make a guess, h for a hint, or q to quit: " = private unnamed_addr constant [61 x i8] c"Please enter g to make a guess, h for a hint, or q to quit: \00", align 1
@q = private unnamed_addr constant [2 x i8] c"q\00", align 1
@"Thank you for playing the game. We hope you had fun!!" = private unnamed_addr constant [54 x i8] c"Thank you for playing the game. We hope you had fun!!\00", align 1
@g = private unnamed_addr constant [2 x i8] c"g\00", align 1
@h = private unnamed_addr constant [2 x i8] c"h\00", align 1
@q.81 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@fmt.82 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.83 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.84 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"1" = private unnamed_addr constant [2 x i8] c"1\00", align 1
@Mammal = private unnamed_addr constant [7 x i8] c"Mammal\00", align 1
@Cat = private unnamed_addr constant [4 x i8] c"Cat\00", align 1
@"2" = private unnamed_addr constant [2 x i8] c"2\00", align 1
@Mammal.85 = private unnamed_addr constant [7 x i8] c"Mammal\00", align 1
@Dog = private unnamed_addr constant [4 x i8] c"Dog\00", align 1
@"3" = private unnamed_addr constant [2 x i8] c"3\00", align 1
@Bird = private unnamed_addr constant [5 x i8] c"Bird\00", align 1
@Chicken = private unnamed_addr constant [8 x i8] c"Chicken\00", align 1
@"4" = private unnamed_addr constant [2 x i8] c"4\00", align 1
@Reptile = private unnamed_addr constant [8 x i8] c"Reptile\00", align 1
@Snake = private unnamed_addr constant [6 x i8] c"Snake\00", align 1
@"5" = private unnamed_addr constant [2 x i8] c"5\00", align 1
@Amphibian = private unnamed_addr constant [10 x i8] c"Amphibian\00", align 1
@Frog = private unnamed_addr constant [5 x i8] c"Frog\00", align 1
@"6" = private unnamed_addr constant [2 x i8] c"6\00", align 1
@Insect = private unnamed_addr constant [7 x i8] c"Insect\00", align 1
@Bee = private unnamed_addr constant [4 x i8] c"Bee\00", align 1
@Mammal.86 = private unnamed_addr constant [7 x i8] c"Mammal\00", align 1
@Richard = private unnamed_addr constant [8 x i8] c"Richard\00", align 1
@fmt.87 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.88 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.89 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Please enter your guess: " = private unnamed_addr constant [26 x i8] c"Please enter your guess: \00", align 1
@"Wrong guess :(" = private unnamed_addr constant [15 x i8] c"Wrong guess :(\00", align 1
@"You have used up all your guesses." = private unnamed_addr constant [35 x i8] c"You have used up all your guesses.\00", align 1
@"The correct animal is: " = private unnamed_addr constant [24 x i8] c"The correct animal is: \00", align 1
@"You'll get 'em next time :)!" = private unnamed_addr constant [29 x i8] c"You'll get 'em next time :)!\00", align 1
@"Ding ding ding! You got it! Thank you for playing the game :D" = private unnamed_addr constant [62 x i8] c"Ding ding ding! You got it! Thank you for playing the game :D\00", align 1
@fmt.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.91 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.92 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"Select one of the options for a hint:" = private unnamed_addr constant [38 x i8] c"Select one of the options for a hint:\00", align 1
@Class = private unnamed_addr constant [6 x i8] c"Class\00", align 1
@Legs = private unnamed_addr constant [5 x i8] c"Legs\00", align 1
@Fur = private unnamed_addr constant [4 x i8] c"Fur\00", align 1
@Fly = private unnamed_addr constant [4 x i8] c"Fly\00", align 1
@Noise.93 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@"Fun fact" = private unnamed_addr constant [9 x i8] c"Fun fact\00", align 1
@Class.94 = private unnamed_addr constant [6 x i8] c"Class\00", align 1
@"The animal is part of the class: " = private unnamed_addr constant [34 x i8] c"The animal is part of the class: \00", align 1
@Legs.95 = private unnamed_addr constant [5 x i8] c"Legs\00", align 1
@"The animal has " = private unnamed_addr constant [16 x i8] c"The animal has \00", align 1
@" legs" = private unnamed_addr constant [6 x i8] c" legs\00", align 1
@Fur.96 = private unnamed_addr constant [4 x i8] c"Fur\00", align 1
@"The animal does have fur" = private unnamed_addr constant [25 x i8] c"The animal does have fur\00", align 1
@"The animal does not have fur" = private unnamed_addr constant [29 x i8] c"The animal does not have fur\00", align 1
@Fly.97 = private unnamed_addr constant [4 x i8] c"Fly\00", align 1
@"The animal can fly" = private unnamed_addr constant [19 x i8] c"The animal can fly\00", align 1
@"The animal cannot fly" = private unnamed_addr constant [22 x i8] c"The animal cannot fly\00", align 1
@Noise.98 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@"Fun fact.99" = private unnamed_addr constant [9 x i8] c"Fun fact\00", align 1
@"We don't have that type of hint :(" = private unnamed_addr constant [35 x i8] c"We don't have that type of hint :(\00", align 1
@AnimalGame_vtable_data = global %AnimalGame_vtable { void (%AnimalGame**)* @AnimalGame_run, %Animal** (%AnimalGame**, i8*)* @AnimalGame_getAnimal, i1 (%AnimalGame**, %Animal**, i32)* @AnimalGame_makeGuess, void (%AnimalGame**, %Animal**)* @AnimalGame_giveHint }
@fmt.100 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.101 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.102 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Main_vtable_data = global %Main_vtable { i32 ()* @main }
@big_vtable_data = global %big_vtable { %Object_vtable* @Object_vtable_data, %Animal_vtable* @Animal_vtable_data, %Cat_vtable* @Cat_vtable_data, %Dog_vtable* @Dog_vtable_data, %Chicken_vtable* @Chicken_vtable_data, %Snake_vtable* @Snake_vtable_data, %Frog_vtable* @Frog_vtable_data, %Bee_vtable* @Bee_vtable_data, %Richard_vtable* @Richard_vtable_data, %AnimalGame_vtable* @AnimalGame_vtable_data, %Main_vtable* @Main_vtable_data }

declare i32 @printf(i8*, ...)

declare i32 @printerr(i8*, ...)

declare i8** @readaline(...)

declare i1 @streq(i8*, i8*, ...)

define void @Animal_setAnimal(%Animal** %0, i8* %1) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %s = alloca i8*, align 8
  store i8* %1, i8** %s, align 8
  %s2 = load i8*, i8** %s, align 8
  %temp3 = load %Animal*, %Animal** %temp, align 8
  %selfanimal = getelementptr inbounds %Animal, %Animal* %temp3, i32 0, i32 2
  store i8* %s2, i8** %selfanimal, align 8
  ret void
}

define void @Animal_setType(%Animal** %0, i8* %1) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %s = alloca i8*, align 8
  store i8* %1, i8** %s, align 8
  %s2 = load i8*, i8** %s, align 8
  %temp3 = load %Animal*, %Animal** %temp, align 8
  %selftype = getelementptr inbounds %Animal, %Animal* %temp3, i32 0, i32 3
  store i8* %s2, i8** %selftype, align 8
  ret void
}

define void @Animal_setLegs(%Animal** %0, i32 %1) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %i = alloca i32, align 4
  store i32 %1, i32* %i, align 4
  %i2 = load i32, i32* %i, align 4
  %temp3 = load %Animal*, %Animal** %temp, align 8
  %selflegs = getelementptr inbounds %Animal, %Animal* %temp3, i32 0, i32 4
  store i32 %i2, i32* %selflegs, align 4
  ret void
}

define void @Animal_setFur(%Animal** %0, i1 %1) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %b = alloca i1, align 1
  store i1 %1, i1* %b, align 1
  %b2 = load i1, i1* %b, align 1
  %temp3 = load %Animal*, %Animal** %temp, align 8
  %selffur = getelementptr inbounds %Animal, %Animal* %temp3, i32 0, i32 5
  store i1 %b2, i1* %selffur, align 1
  ret void
}

define void @Animal_setFly(%Animal** %0, i1 %1) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %b = alloca i1, align 1
  store i1 %1, i1* %b, align 1
  %b2 = load i1, i1* %b, align 1
  %temp3 = load %Animal*, %Animal** %temp, align 8
  %selfcanFly = getelementptr inbounds %Animal, %Animal* %temp3, i32 0, i32 6
  store i1 %b2, i1* %selfcanFly, align 1
  ret void
}

define i8* @Animal_getClass(%Animal** %0) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %temp2 = load %Animal*, %Animal** %temp, align 8
  %selfanimal = getelementptr inbounds %Animal, %Animal* %temp2, i32 0, i32 2
  %selfanimal3 = load i8*, i8** %selfanimal, align 8
  ret i8* %selfanimal3
}

define i8* @Animal_getType(%Animal** %0) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %temp2 = load %Animal*, %Animal** %temp, align 8
  %selftype = getelementptr inbounds %Animal, %Animal* %temp2, i32 0, i32 3
  %selftype3 = load i8*, i8** %selftype, align 8
  ret i8* %selftype3
}

define i32 @Animal_numLegs(%Animal** %0) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %temp2 = load %Animal*, %Animal** %temp, align 8
  %selflegs = getelementptr inbounds %Animal, %Animal* %temp2, i32 0, i32 4
  %selflegs3 = load i32, i32* %selflegs, align 4
  ret i32 %selflegs3
}

define i1 @Animal_hasFur(%Animal** %0) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %temp2 = load %Animal*, %Animal** %temp, align 8
  %selffur = getelementptr inbounds %Animal, %Animal* %temp2, i32 0, i32 5
  %selffur3 = load i1, i1* %selffur, align 1
  ret i1 %selffur3
}

define i1 @Animal_canFly(%Animal** %0) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %temp2 = load %Animal*, %Animal** %temp, align 8
  %selfcanFly = getelementptr inbounds %Animal, %Animal* %temp2, i32 0, i32 6
  %selfcanFly3 = load i1, i1* %selfcanFly, align 1
  ret i1 %selfcanFly3
}

define void @Animal_noise(%Animal** %0) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Noise, i32 0, i32 0))
  ret void
}

define void @Animal_funFact(%Animal** %0) {
entry:
  %temp = alloca %Animal*, align 8
  %temp1 = load %Animal*, %Animal** %0, align 8
  store %Animal* %temp1, %Animal** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.34, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @"There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!", i32 0, i32 0))
  ret void
}

define void @Cat_noise(%Cat** %0) {
entry:
  %temp = alloca %Cat*, align 8
  %temp1 = load %Cat*, %Cat** %0, align 8
  store %Cat* %temp1, %Cat** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"Meow!", i32 0, i32 0))
  ret void
}

define void @Cat_funFact(%Cat** %0) {
entry:
  %temp = alloca %Cat*, align 8
  %temp1 = load %Cat*, %Cat** %0, align 8
  store %Cat* %temp1, %Cat** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.40, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"I can land on all fours!", i32 0, i32 0))
  ret void
}

define void @Dog_noise(%Dog** %0) {
entry:
  %temp = alloca %Dog*, align 8
  %temp1 = load %Dog*, %Dog** %0, align 8
  store %Dog* %temp1, %Dog** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"Bark!", i32 0, i32 0))
  ret void
}

define void @Dog_funFact(%Dog** %0) {
entry:
  %temp = alloca %Dog*, align 8
  %temp1 = load %Dog*, %Dog** %0, align 8
  store %Dog* %temp1, %Dog** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.46, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"I have a great sense of smell!", i32 0, i32 0))
  ret void
}

define void @Chicken_noise(%Chicken** %0) {
entry:
  %temp = alloca %Chicken*, align 8
  %temp1 = load %Chicken*, %Chicken** %0, align 8
  store %Chicken* %temp1, %Chicken** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Cluck!", i32 0, i32 0))
  ret void
}

define void @Chicken_funFact(%Chicken** %0) {
entry:
  %temp = alloca %Chicken*, align 8
  %temp1 = load %Chicken*, %Chicken** %0, align 8
  store %Chicken* %temp1, %Chicken** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.52, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @"I am one of the closest living descendants to dinosaurs!", i32 0, i32 0))
  ret void
}

define void @Snake_noise(%Snake** %0) {
entry:
  %temp = alloca %Snake*, align 8
  %temp1 = load %Snake*, %Snake** %0, align 8
  store %Snake* %temp1, %Snake** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"Hiss!", i32 0, i32 0))
  ret void
}

define void @Snake_funFact(%Snake** %0) {
entry:
  %temp = alloca %Snake*, align 8
  %temp1 = load %Snake*, %Snake** %0, align 8
  store %Snake* %temp1, %Snake** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.58, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"I can be very venomous!", i32 0, i32 0))
  ret void
}

define void @Frog_noise(%Frog** %0) {
entry:
  %temp = alloca %Frog*, align 8
  %temp1 = load %Frog*, %Frog** %0, align 8
  store %Frog* %temp1, %Frog** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Croak!", i32 0, i32 0))
  ret void
}

define void @Frog_funFact(%Frog** %0) {
entry:
  %temp = alloca %Frog*, align 8
  %temp1 = load %Frog*, %Frog** %0, align 8
  store %Frog* %temp1, %Frog** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.64, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"I have excellent night vision", i32 0, i32 0))
  ret void
}

define void @Bee_noise(%Bee** %0) {
entry:
  %temp = alloca %Bee*, align 8
  %temp1 = load %Bee*, %Bee** %0, align 8
  store %Bee* %temp1, %Bee** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"Buzz!", i32 0, i32 0))
  ret void
}

define void @Bee_funFact(%Bee** %0) {
entry:
  %temp = alloca %Bee*, align 8
  %temp1 = load %Bee*, %Bee** %0, align 8
  store %Bee* %temp1, %Bee** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.70, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"They make something sweet ", i32 0, i32 0))
  ret void
}

define void @Richard_noise(%Richard** %0) {
entry:
  %temp = alloca %Richard*, align 8
  %temp1 = load %Richard*, %Richard** %0, align 8
  store %Richard* %temp1, %Richard** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.73, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Howdy folks!", i32 0, i32 0))
  ret void
}

define void @Richard_funFact(%Richard** %0) {
entry:
  %temp = alloca %Richard*, align 8
  %temp1 = load %Richard*, %Richard** %0, align 8
  store %Richard* %temp1, %Richard** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.76, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"This is someone you know very well ;)", i32 0, i32 0))
  ret void
}

define void @AnimalGame_run(%AnimalGame** %0) {
entry:
  %temp = alloca %AnimalGame*, align 8
  %temp1 = load %AnimalGame*, %AnimalGame** %0, align 8
  store %AnimalGame* %temp1, %AnimalGame** %temp, align 8
  %input = alloca i8*, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @0, i32 0, i32 0), i8** %input, align 8
  %count = alloca i32, align 4
  store i32 0, i32* %count, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.79, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"Hello and welcome to the animal guessing game!", i32 0, i32 0))
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.79, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @"You will have 3 tries to guess the animal, along with a number of hints.", i32 0, i32 0))
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.79, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Please enter a number from 1-6", i32 0, i32 0))
  %readaline = call i8** (...) @readaline()
  %get_temp = load i8*, i8** %readaline, align 8
  store i8* %get_temp, i8** %input, align 8
  %temp4 = load %AnimalGame*, %AnimalGame** %temp, align 8
  %vtable = getelementptr inbounds %AnimalGame, %AnimalGame* %temp4, i32 0, i32 0
  %vtable5 = load %AnimalGame_vtable*, %AnimalGame_vtable** %vtable, align 8
  %fun_to_call = getelementptr inbounds %AnimalGame_vtable, %AnimalGame_vtable* %vtable5, i32 0, i32 1
  %function = load %Animal** (%AnimalGame**, i8*)*, %Animal** (%AnimalGame**, i8*)** %fun_to_call, align 8
  %input6 = load i8*, i8** %input, align 8
  %getAnimal_result = call %Animal** %function(%AnimalGame** %temp, i8* %input6)
  %a = alloca %Animal*, align 8
  %temp7 = load %Animal*, %Animal** %getAnimal_result, align 8
  store %Animal* %temp7, %Animal** %a, align 8
  br label %while

while:                                            ; preds = %merge, %entry
  %input44 = load i8*, i8** %input, align 8
  %streq45 = call i1 (i8*, i8*, ...) @streq(i8* %input44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @q.81, i32 0, i32 0))
  %tmp46 = xor i1 %streq45, true
  br i1 %tmp46, label %while_body, label %merge47

while_body:                                       ; preds = %while
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt.78, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @"Please enter g to make a guess, h for a hint, or q to quit: ", i32 0, i32 0))
  %readaline9 = call i8** (...) @readaline()
  %get_temp10 = load i8*, i8** %readaline9, align 8
  store i8* %get_temp10, i8** %input, align 8
  %input11 = load i8*, i8** %input, align 8
  %streq = call i1 (i8*, i8*, ...) @streq(i8* %input11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @q, i32 0, i32 0))
  br i1 %streq, label %then, label %else

merge:                                            ; preds = %merge15, %then
  br label %while

then:                                             ; preds = %while_body
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.79, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @"Thank you for playing the game. We hope you had fun!!", i32 0, i32 0))
  br label %merge

else:                                             ; preds = %while_body
  %input13 = load i8*, i8** %input, align 8
  %streq14 = call i1 (i8*, i8*, ...) @streq(i8* %input13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g, i32 0, i32 0))
  br i1 %streq14, label %then16, label %else33

merge15:                                          ; preds = %merge36, %merge23
  br label %merge

then16:                                           ; preds = %else
  %temp17 = load %AnimalGame*, %AnimalGame** %temp, align 8
  %vtable18 = getelementptr inbounds %AnimalGame, %AnimalGame* %temp17, i32 0, i32 0
  %vtable19 = load %AnimalGame_vtable*, %AnimalGame_vtable** %vtable18, align 8
  %fun_to_call20 = getelementptr inbounds %AnimalGame_vtable, %AnimalGame_vtable* %vtable19, i32 0, i32 2
  %function21 = load i1 (%AnimalGame**, %Animal**, i32)*, i1 (%AnimalGame**, %Animal**, i32)** %fun_to_call20, align 8
  %count22 = load i32, i32* %count, align 4
  %makeGuess_result = call i1 %function21(%AnimalGame** %temp, %Animal** %a, i32 %count22)
  %tmp = xor i1 %makeGuess_result, true
  br i1 %tmp, label %then24, label %else32

merge23:                                          ; preds = %else32, %merge29
  br label %merge15

then24:                                           ; preds = %then16
  %count25 = load i32, i32* %count, align 4
  %tmp26 = add i32 %count25, 1
  store i32 %tmp26, i32* %count, align 4
  %count27 = load i32, i32* %count, align 4
  %tmp28 = icmp eq i32 %count27, 3
  br i1 %tmp28, label %then30, label %else31

merge29:                                          ; preds = %else31
  br label %merge23

then30:                                           ; preds = %then24
  ret void

else31:                                           ; preds = %then24
  br label %merge29

else32:                                           ; preds = %then16
  br label %merge23

else33:                                           ; preds = %else
  %input34 = load i8*, i8** %input, align 8
  %streq35 = call i1 (i8*, i8*, ...) @streq(i8* %input34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @h, i32 0, i32 0))
  br i1 %streq35, label %then37, label %else43

merge36:                                          ; preds = %else43, %then37
  br label %merge15

then37:                                           ; preds = %else33
  %temp38 = load %AnimalGame*, %AnimalGame** %temp, align 8
  %vtable39 = getelementptr inbounds %AnimalGame, %AnimalGame* %temp38, i32 0, i32 0
  %vtable40 = load %AnimalGame_vtable*, %AnimalGame_vtable** %vtable39, align 8
  %fun_to_call41 = getelementptr inbounds %AnimalGame_vtable, %AnimalGame_vtable* %vtable40, i32 0, i32 3
  %function42 = load void (%AnimalGame**, %Animal**)*, void (%AnimalGame**, %Animal**)** %fun_to_call41, align 8
  call void %function42(%AnimalGame** %temp, %Animal** %a)
  br label %merge36

else43:                                           ; preds = %else33
  br label %merge36

merge47:                                          ; preds = %while
  ret void
}

define %Animal** @AnimalGame_getAnimal(%AnimalGame** %0, i8* %1) {
entry:
  %temp = alloca %AnimalGame*, align 8
  %temp1 = load %AnimalGame*, %AnimalGame** %0, align 8
  store %AnimalGame* %temp1, %AnimalGame** %temp, align 8
  %input = alloca i8*, align 8
  store i8* %1, i8** %input, align 8
  %a = alloca %Animal*, align 8
  %input2 = load i8*, i8** %input, align 8
  %streq = call i1 (i8*, i8*, ...) @streq(i8* %input2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"1", i32 0, i32 0))
  br i1 %streq, label %then, label %else

merge:                                            ; preds = %merge39, %then
  ret %Animal** %a

then:                                             ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Cat* getelementptr (%Cat, %Cat* null, i32 1) to i32))
  %Cat = bitcast i8* %malloccall to %Cat*
  %vtable = getelementptr inbounds %Cat, %Cat* %Cat, i32 0, i32 0
  store %Cat_vtable* @Cat_vtable_data, %Cat_vtable** %vtable, align 8
  %temp3 = alloca %Cat*, align 8
  store %Cat* %Cat, %Cat** %temp3, align 8
  %c = alloca %Cat*, align 8
  %temp4 = load %Cat*, %Cat** %temp3, align 8
  store %Cat* %temp4, %Cat** %c, align 8
  %temp5 = load %Cat*, %Cat** %c, align 8
  %vtable6 = getelementptr inbounds %Cat, %Cat* %temp5, i32 0, i32 0
  %vtable7 = load %Cat_vtable*, %Cat_vtable** %vtable6, align 8
  %fun_to_call = getelementptr inbounds %Cat_vtable, %Cat_vtable* %vtable7, i32 0, i32 0
  %function = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call, align 8
  %arg_cast = bitcast %Cat** %c to %Animal**
  %cast_val = bitcast %Cat** %c to %Animal**
  call void %function(%Animal** %arg_cast, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Mammal, i32 0, i32 0))
  %temp8 = load %Cat*, %Cat** %c, align 8
  %vtable9 = getelementptr inbounds %Cat, %Cat* %temp8, i32 0, i32 0
  %vtable10 = load %Cat_vtable*, %Cat_vtable** %vtable9, align 8
  %fun_to_call11 = getelementptr inbounds %Cat_vtable, %Cat_vtable* %vtable10, i32 0, i32 1
  %function12 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call11, align 8
  %arg_cast13 = bitcast %Cat** %c to %Animal**
  %cast_val14 = bitcast %Cat** %c to %Animal**
  call void %function12(%Animal** %arg_cast13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Cat, i32 0, i32 0))
  %temp15 = load %Cat*, %Cat** %c, align 8
  %vtable16 = getelementptr inbounds %Cat, %Cat* %temp15, i32 0, i32 0
  %vtable17 = load %Cat_vtable*, %Cat_vtable** %vtable16, align 8
  %fun_to_call18 = getelementptr inbounds %Cat_vtable, %Cat_vtable* %vtable17, i32 0, i32 2
  %function19 = load void (%Animal**, i32)*, void (%Animal**, i32)** %fun_to_call18, align 8
  %arg_cast20 = bitcast %Cat** %c to %Animal**
  %cast_val21 = bitcast %Cat** %c to %Animal**
  call void %function19(%Animal** %arg_cast20, i32 4)
  %temp22 = load %Cat*, %Cat** %c, align 8
  %vtable23 = getelementptr inbounds %Cat, %Cat* %temp22, i32 0, i32 0
  %vtable24 = load %Cat_vtable*, %Cat_vtable** %vtable23, align 8
  %fun_to_call25 = getelementptr inbounds %Cat_vtable, %Cat_vtable* %vtable24, i32 0, i32 3
  %function26 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call25, align 8
  %arg_cast27 = bitcast %Cat** %c to %Animal**
  %cast_val28 = bitcast %Cat** %c to %Animal**
  call void %function26(%Animal** %arg_cast27, i1 true)
  %temp29 = load %Cat*, %Cat** %c, align 8
  %vtable30 = getelementptr inbounds %Cat, %Cat* %temp29, i32 0, i32 0
  %vtable31 = load %Cat_vtable*, %Cat_vtable** %vtable30, align 8
  %fun_to_call32 = getelementptr inbounds %Cat_vtable, %Cat_vtable* %vtable31, i32 0, i32 4
  %function33 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call32, align 8
  %arg_cast34 = bitcast %Cat** %c to %Animal**
  %cast_val35 = bitcast %Cat** %c to %Animal**
  call void %function33(%Animal** %arg_cast34, i1 false)
  %cast_assign = bitcast %Cat** %c to %Animal**
  %temp36 = load %Animal*, %Animal** %cast_assign, align 8
  store %Animal* %temp36, %Animal** %a, align 8
  br label %merge

else:                                             ; preds = %entry
  %input37 = load i8*, i8** %input, align 8
  %streq38 = call i1 (i8*, i8*, ...) @streq(i8* %input37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"2", i32 0, i32 0))
  br i1 %streq38, label %then40, label %else82

merge39:                                          ; preds = %merge85, %then40
  br label %merge

then40:                                           ; preds = %else
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint (%Dog* getelementptr (%Dog, %Dog* null, i32 1) to i32))
  %Dog = bitcast i8* %malloccall41 to %Dog*
  %vtable42 = getelementptr inbounds %Dog, %Dog* %Dog, i32 0, i32 0
  store %Dog_vtable* @Dog_vtable_data, %Dog_vtable** %vtable42, align 8
  %temp43 = alloca %Dog*, align 8
  store %Dog* %Dog, %Dog** %temp43, align 8
  %d = alloca %Dog*, align 8
  %temp44 = load %Dog*, %Dog** %temp43, align 8
  store %Dog* %temp44, %Dog** %d, align 8
  %temp45 = load %Dog*, %Dog** %d, align 8
  %vtable46 = getelementptr inbounds %Dog, %Dog* %temp45, i32 0, i32 0
  %vtable47 = load %Dog_vtable*, %Dog_vtable** %vtable46, align 8
  %fun_to_call48 = getelementptr inbounds %Dog_vtable, %Dog_vtable* %vtable47, i32 0, i32 0
  %function49 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call48, align 8
  %arg_cast50 = bitcast %Dog** %d to %Animal**
  %cast_val51 = bitcast %Dog** %d to %Animal**
  call void %function49(%Animal** %arg_cast50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Mammal.85, i32 0, i32 0))
  %temp52 = load %Dog*, %Dog** %d, align 8
  %vtable53 = getelementptr inbounds %Dog, %Dog* %temp52, i32 0, i32 0
  %vtable54 = load %Dog_vtable*, %Dog_vtable** %vtable53, align 8
  %fun_to_call55 = getelementptr inbounds %Dog_vtable, %Dog_vtable* %vtable54, i32 0, i32 1
  %function56 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call55, align 8
  %arg_cast57 = bitcast %Dog** %d to %Animal**
  %cast_val58 = bitcast %Dog** %d to %Animal**
  call void %function56(%Animal** %arg_cast57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Dog, i32 0, i32 0))
  %temp59 = load %Dog*, %Dog** %d, align 8
  %vtable60 = getelementptr inbounds %Dog, %Dog* %temp59, i32 0, i32 0
  %vtable61 = load %Dog_vtable*, %Dog_vtable** %vtable60, align 8
  %fun_to_call62 = getelementptr inbounds %Dog_vtable, %Dog_vtable* %vtable61, i32 0, i32 2
  %function63 = load void (%Animal**, i32)*, void (%Animal**, i32)** %fun_to_call62, align 8
  %arg_cast64 = bitcast %Dog** %d to %Animal**
  %cast_val65 = bitcast %Dog** %d to %Animal**
  call void %function63(%Animal** %arg_cast64, i32 4)
  %temp66 = load %Dog*, %Dog** %d, align 8
  %vtable67 = getelementptr inbounds %Dog, %Dog* %temp66, i32 0, i32 0
  %vtable68 = load %Dog_vtable*, %Dog_vtable** %vtable67, align 8
  %fun_to_call69 = getelementptr inbounds %Dog_vtable, %Dog_vtable* %vtable68, i32 0, i32 3
  %function70 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call69, align 8
  %arg_cast71 = bitcast %Dog** %d to %Animal**
  %cast_val72 = bitcast %Dog** %d to %Animal**
  call void %function70(%Animal** %arg_cast71, i1 true)
  %temp73 = load %Dog*, %Dog** %d, align 8
  %vtable74 = getelementptr inbounds %Dog, %Dog* %temp73, i32 0, i32 0
  %vtable75 = load %Dog_vtable*, %Dog_vtable** %vtable74, align 8
  %fun_to_call76 = getelementptr inbounds %Dog_vtable, %Dog_vtable* %vtable75, i32 0, i32 4
  %function77 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call76, align 8
  %arg_cast78 = bitcast %Dog** %d to %Animal**
  %cast_val79 = bitcast %Dog** %d to %Animal**
  call void %function77(%Animal** %arg_cast78, i1 false)
  %cast_assign80 = bitcast %Dog** %d to %Animal**
  %temp81 = load %Animal*, %Animal** %cast_assign80, align 8
  store %Animal* %temp81, %Animal** %a, align 8
  br label %merge39

else82:                                           ; preds = %else
  %input83 = load i8*, i8** %input, align 8
  %streq84 = call i1 (i8*, i8*, ...) @streq(i8* %input83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"3", i32 0, i32 0))
  br i1 %streq84, label %then86, label %else129

merge85:                                          ; preds = %merge132, %then86
  br label %merge39

then86:                                           ; preds = %else82
  %malloccall87 = tail call i8* @malloc(i32 ptrtoint (%Chicken* getelementptr (%Chicken, %Chicken* null, i32 1) to i32))
  %Chicken = bitcast i8* %malloccall87 to %Chicken*
  %vtable88 = getelementptr inbounds %Chicken, %Chicken* %Chicken, i32 0, i32 0
  store %Chicken_vtable* @Chicken_vtable_data, %Chicken_vtable** %vtable88, align 8
  %temp89 = alloca %Chicken*, align 8
  store %Chicken* %Chicken, %Chicken** %temp89, align 8
  %c90 = alloca %Chicken*, align 8
  %temp91 = load %Chicken*, %Chicken** %temp89, align 8
  store %Chicken* %temp91, %Chicken** %c90, align 8
  %temp92 = load %Chicken*, %Chicken** %c90, align 8
  %vtable93 = getelementptr inbounds %Chicken, %Chicken* %temp92, i32 0, i32 0
  %vtable94 = load %Chicken_vtable*, %Chicken_vtable** %vtable93, align 8
  %fun_to_call95 = getelementptr inbounds %Chicken_vtable, %Chicken_vtable* %vtable94, i32 0, i32 0
  %function96 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call95, align 8
  %arg_cast97 = bitcast %Chicken** %c90 to %Animal**
  %cast_val98 = bitcast %Chicken** %c90 to %Animal**
  call void %function96(%Animal** %arg_cast97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Bird, i32 0, i32 0))
  %temp99 = load %Chicken*, %Chicken** %c90, align 8
  %vtable100 = getelementptr inbounds %Chicken, %Chicken* %temp99, i32 0, i32 0
  %vtable101 = load %Chicken_vtable*, %Chicken_vtable** %vtable100, align 8
  %fun_to_call102 = getelementptr inbounds %Chicken_vtable, %Chicken_vtable* %vtable101, i32 0, i32 1
  %function103 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call102, align 8
  %arg_cast104 = bitcast %Chicken** %c90 to %Animal**
  %cast_val105 = bitcast %Chicken** %c90 to %Animal**
  call void %function103(%Animal** %arg_cast104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Chicken, i32 0, i32 0))
  %temp106 = load %Chicken*, %Chicken** %c90, align 8
  %vtable107 = getelementptr inbounds %Chicken, %Chicken* %temp106, i32 0, i32 0
  %vtable108 = load %Chicken_vtable*, %Chicken_vtable** %vtable107, align 8
  %fun_to_call109 = getelementptr inbounds %Chicken_vtable, %Chicken_vtable* %vtable108, i32 0, i32 2
  %function110 = load void (%Animal**, i32)*, void (%Animal**, i32)** %fun_to_call109, align 8
  %arg_cast111 = bitcast %Chicken** %c90 to %Animal**
  %cast_val112 = bitcast %Chicken** %c90 to %Animal**
  call void %function110(%Animal** %arg_cast111, i32 2)
  %temp113 = load %Chicken*, %Chicken** %c90, align 8
  %vtable114 = getelementptr inbounds %Chicken, %Chicken* %temp113, i32 0, i32 0
  %vtable115 = load %Chicken_vtable*, %Chicken_vtable** %vtable114, align 8
  %fun_to_call116 = getelementptr inbounds %Chicken_vtable, %Chicken_vtable* %vtable115, i32 0, i32 3
  %function117 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call116, align 8
  %arg_cast118 = bitcast %Chicken** %c90 to %Animal**
  %cast_val119 = bitcast %Chicken** %c90 to %Animal**
  call void %function117(%Animal** %arg_cast118, i1 false)
  %temp120 = load %Chicken*, %Chicken** %c90, align 8
  %vtable121 = getelementptr inbounds %Chicken, %Chicken* %temp120, i32 0, i32 0
  %vtable122 = load %Chicken_vtable*, %Chicken_vtable** %vtable121, align 8
  %fun_to_call123 = getelementptr inbounds %Chicken_vtable, %Chicken_vtable* %vtable122, i32 0, i32 4
  %function124 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call123, align 8
  %arg_cast125 = bitcast %Chicken** %c90 to %Animal**
  %cast_val126 = bitcast %Chicken** %c90 to %Animal**
  call void %function124(%Animal** %arg_cast125, i1 true)
  %cast_assign127 = bitcast %Chicken** %c90 to %Animal**
  %temp128 = load %Animal*, %Animal** %cast_assign127, align 8
  store %Animal* %temp128, %Animal** %a, align 8
  br label %merge85

else129:                                          ; preds = %else82
  %input130 = load i8*, i8** %input, align 8
  %streq131 = call i1 (i8*, i8*, ...) @streq(i8* %input130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"4", i32 0, i32 0))
  br i1 %streq131, label %then133, label %else175

merge132:                                         ; preds = %merge178, %then133
  br label %merge85

then133:                                          ; preds = %else129
  %malloccall134 = tail call i8* @malloc(i32 ptrtoint (%Snake* getelementptr (%Snake, %Snake* null, i32 1) to i32))
  %Snake = bitcast i8* %malloccall134 to %Snake*
  %vtable135 = getelementptr inbounds %Snake, %Snake* %Snake, i32 0, i32 0
  store %Snake_vtable* @Snake_vtable_data, %Snake_vtable** %vtable135, align 8
  %temp136 = alloca %Snake*, align 8
  store %Snake* %Snake, %Snake** %temp136, align 8
  %s = alloca %Snake*, align 8
  %temp137 = load %Snake*, %Snake** %temp136, align 8
  store %Snake* %temp137, %Snake** %s, align 8
  %temp138 = load %Snake*, %Snake** %s, align 8
  %vtable139 = getelementptr inbounds %Snake, %Snake* %temp138, i32 0, i32 0
  %vtable140 = load %Snake_vtable*, %Snake_vtable** %vtable139, align 8
  %fun_to_call141 = getelementptr inbounds %Snake_vtable, %Snake_vtable* %vtable140, i32 0, i32 0
  %function142 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call141, align 8
  %arg_cast143 = bitcast %Snake** %s to %Animal**
  %cast_val144 = bitcast %Snake** %s to %Animal**
  call void %function142(%Animal** %arg_cast143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Reptile, i32 0, i32 0))
  %temp145 = load %Snake*, %Snake** %s, align 8
  %vtable146 = getelementptr inbounds %Snake, %Snake* %temp145, i32 0, i32 0
  %vtable147 = load %Snake_vtable*, %Snake_vtable** %vtable146, align 8
  %fun_to_call148 = getelementptr inbounds %Snake_vtable, %Snake_vtable* %vtable147, i32 0, i32 1
  %function149 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call148, align 8
  %arg_cast150 = bitcast %Snake** %s to %Animal**
  %cast_val151 = bitcast %Snake** %s to %Animal**
  call void %function149(%Animal** %arg_cast150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Snake, i32 0, i32 0))
  %temp152 = load %Snake*, %Snake** %s, align 8
  %vtable153 = getelementptr inbounds %Snake, %Snake* %temp152, i32 0, i32 0
  %vtable154 = load %Snake_vtable*, %Snake_vtable** %vtable153, align 8
  %fun_to_call155 = getelementptr inbounds %Snake_vtable, %Snake_vtable* %vtable154, i32 0, i32 2
  %function156 = load void (%Animal**, i32)*, void (%Animal**, i32)** %fun_to_call155, align 8
  %arg_cast157 = bitcast %Snake** %s to %Animal**
  %cast_val158 = bitcast %Snake** %s to %Animal**
  call void %function156(%Animal** %arg_cast157, i32 0)
  %temp159 = load %Snake*, %Snake** %s, align 8
  %vtable160 = getelementptr inbounds %Snake, %Snake* %temp159, i32 0, i32 0
  %vtable161 = load %Snake_vtable*, %Snake_vtable** %vtable160, align 8
  %fun_to_call162 = getelementptr inbounds %Snake_vtable, %Snake_vtable* %vtable161, i32 0, i32 3
  %function163 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call162, align 8
  %arg_cast164 = bitcast %Snake** %s to %Animal**
  %cast_val165 = bitcast %Snake** %s to %Animal**
  call void %function163(%Animal** %arg_cast164, i1 false)
  %temp166 = load %Snake*, %Snake** %s, align 8
  %vtable167 = getelementptr inbounds %Snake, %Snake* %temp166, i32 0, i32 0
  %vtable168 = load %Snake_vtable*, %Snake_vtable** %vtable167, align 8
  %fun_to_call169 = getelementptr inbounds %Snake_vtable, %Snake_vtable* %vtable168, i32 0, i32 4
  %function170 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call169, align 8
  %arg_cast171 = bitcast %Snake** %s to %Animal**
  %cast_val172 = bitcast %Snake** %s to %Animal**
  call void %function170(%Animal** %arg_cast171, i1 false)
  %cast_assign173 = bitcast %Snake** %s to %Animal**
  %temp174 = load %Animal*, %Animal** %cast_assign173, align 8
  store %Animal* %temp174, %Animal** %a, align 8
  br label %merge132

else175:                                          ; preds = %else129
  %input176 = load i8*, i8** %input, align 8
  %streq177 = call i1 (i8*, i8*, ...) @streq(i8* %input176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"5", i32 0, i32 0))
  br i1 %streq177, label %then179, label %else221

merge178:                                         ; preds = %merge224, %then179
  br label %merge132

then179:                                          ; preds = %else175
  %malloccall180 = tail call i8* @malloc(i32 ptrtoint (%Frog* getelementptr (%Frog, %Frog* null, i32 1) to i32))
  %Frog = bitcast i8* %malloccall180 to %Frog*
  %vtable181 = getelementptr inbounds %Frog, %Frog* %Frog, i32 0, i32 0
  store %Frog_vtable* @Frog_vtable_data, %Frog_vtable** %vtable181, align 8
  %temp182 = alloca %Frog*, align 8
  store %Frog* %Frog, %Frog** %temp182, align 8
  %f = alloca %Frog*, align 8
  %temp183 = load %Frog*, %Frog** %temp182, align 8
  store %Frog* %temp183, %Frog** %f, align 8
  %temp184 = load %Frog*, %Frog** %f, align 8
  %vtable185 = getelementptr inbounds %Frog, %Frog* %temp184, i32 0, i32 0
  %vtable186 = load %Frog_vtable*, %Frog_vtable** %vtable185, align 8
  %fun_to_call187 = getelementptr inbounds %Frog_vtable, %Frog_vtable* %vtable186, i32 0, i32 0
  %function188 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call187, align 8
  %arg_cast189 = bitcast %Frog** %f to %Animal**
  %cast_val190 = bitcast %Frog** %f to %Animal**
  call void %function188(%Animal** %arg_cast189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @Amphibian, i32 0, i32 0))
  %temp191 = load %Frog*, %Frog** %f, align 8
  %vtable192 = getelementptr inbounds %Frog, %Frog* %temp191, i32 0, i32 0
  %vtable193 = load %Frog_vtable*, %Frog_vtable** %vtable192, align 8
  %fun_to_call194 = getelementptr inbounds %Frog_vtable, %Frog_vtable* %vtable193, i32 0, i32 1
  %function195 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call194, align 8
  %arg_cast196 = bitcast %Frog** %f to %Animal**
  %cast_val197 = bitcast %Frog** %f to %Animal**
  call void %function195(%Animal** %arg_cast196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Frog, i32 0, i32 0))
  %temp198 = load %Frog*, %Frog** %f, align 8
  %vtable199 = getelementptr inbounds %Frog, %Frog* %temp198, i32 0, i32 0
  %vtable200 = load %Frog_vtable*, %Frog_vtable** %vtable199, align 8
  %fun_to_call201 = getelementptr inbounds %Frog_vtable, %Frog_vtable* %vtable200, i32 0, i32 2
  %function202 = load void (%Animal**, i32)*, void (%Animal**, i32)** %fun_to_call201, align 8
  %arg_cast203 = bitcast %Frog** %f to %Animal**
  %cast_val204 = bitcast %Frog** %f to %Animal**
  call void %function202(%Animal** %arg_cast203, i32 4)
  %temp205 = load %Frog*, %Frog** %f, align 8
  %vtable206 = getelementptr inbounds %Frog, %Frog* %temp205, i32 0, i32 0
  %vtable207 = load %Frog_vtable*, %Frog_vtable** %vtable206, align 8
  %fun_to_call208 = getelementptr inbounds %Frog_vtable, %Frog_vtable* %vtable207, i32 0, i32 3
  %function209 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call208, align 8
  %arg_cast210 = bitcast %Frog** %f to %Animal**
  %cast_val211 = bitcast %Frog** %f to %Animal**
  call void %function209(%Animal** %arg_cast210, i1 false)
  %temp212 = load %Frog*, %Frog** %f, align 8
  %vtable213 = getelementptr inbounds %Frog, %Frog* %temp212, i32 0, i32 0
  %vtable214 = load %Frog_vtable*, %Frog_vtable** %vtable213, align 8
  %fun_to_call215 = getelementptr inbounds %Frog_vtable, %Frog_vtable* %vtable214, i32 0, i32 4
  %function216 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call215, align 8
  %arg_cast217 = bitcast %Frog** %f to %Animal**
  %cast_val218 = bitcast %Frog** %f to %Animal**
  call void %function216(%Animal** %arg_cast217, i1 false)
  %cast_assign219 = bitcast %Frog** %f to %Animal**
  %temp220 = load %Animal*, %Animal** %cast_assign219, align 8
  store %Animal* %temp220, %Animal** %a, align 8
  br label %merge178

else221:                                          ; preds = %else175
  %input222 = load i8*, i8** %input, align 8
  %streq223 = call i1 (i8*, i8*, ...) @streq(i8* %input222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"6", i32 0, i32 0))
  br i1 %streq223, label %then225, label %else267

merge224:                                         ; preds = %else267, %then225
  br label %merge178

then225:                                          ; preds = %else221
  %malloccall226 = tail call i8* @malloc(i32 ptrtoint (%Bee* getelementptr (%Bee, %Bee* null, i32 1) to i32))
  %Bee = bitcast i8* %malloccall226 to %Bee*
  %vtable227 = getelementptr inbounds %Bee, %Bee* %Bee, i32 0, i32 0
  store %Bee_vtable* @Bee_vtable_data, %Bee_vtable** %vtable227, align 8
  %temp228 = alloca %Bee*, align 8
  store %Bee* %Bee, %Bee** %temp228, align 8
  %b = alloca %Bee*, align 8
  %temp229 = load %Bee*, %Bee** %temp228, align 8
  store %Bee* %temp229, %Bee** %b, align 8
  %temp230 = load %Bee*, %Bee** %b, align 8
  %vtable231 = getelementptr inbounds %Bee, %Bee* %temp230, i32 0, i32 0
  %vtable232 = load %Bee_vtable*, %Bee_vtable** %vtable231, align 8
  %fun_to_call233 = getelementptr inbounds %Bee_vtable, %Bee_vtable* %vtable232, i32 0, i32 0
  %function234 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call233, align 8
  %arg_cast235 = bitcast %Bee** %b to %Animal**
  %cast_val236 = bitcast %Bee** %b to %Animal**
  call void %function234(%Animal** %arg_cast235, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Insect, i32 0, i32 0))
  %temp237 = load %Bee*, %Bee** %b, align 8
  %vtable238 = getelementptr inbounds %Bee, %Bee* %temp237, i32 0, i32 0
  %vtable239 = load %Bee_vtable*, %Bee_vtable** %vtable238, align 8
  %fun_to_call240 = getelementptr inbounds %Bee_vtable, %Bee_vtable* %vtable239, i32 0, i32 1
  %function241 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call240, align 8
  %arg_cast242 = bitcast %Bee** %b to %Animal**
  %cast_val243 = bitcast %Bee** %b to %Animal**
  call void %function241(%Animal** %arg_cast242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Bee, i32 0, i32 0))
  %temp244 = load %Bee*, %Bee** %b, align 8
  %vtable245 = getelementptr inbounds %Bee, %Bee* %temp244, i32 0, i32 0
  %vtable246 = load %Bee_vtable*, %Bee_vtable** %vtable245, align 8
  %fun_to_call247 = getelementptr inbounds %Bee_vtable, %Bee_vtable* %vtable246, i32 0, i32 2
  %function248 = load void (%Animal**, i32)*, void (%Animal**, i32)** %fun_to_call247, align 8
  %arg_cast249 = bitcast %Bee** %b to %Animal**
  %cast_val250 = bitcast %Bee** %b to %Animal**
  call void %function248(%Animal** %arg_cast249, i32 6)
  %temp251 = load %Bee*, %Bee** %b, align 8
  %vtable252 = getelementptr inbounds %Bee, %Bee* %temp251, i32 0, i32 0
  %vtable253 = load %Bee_vtable*, %Bee_vtable** %vtable252, align 8
  %fun_to_call254 = getelementptr inbounds %Bee_vtable, %Bee_vtable* %vtable253, i32 0, i32 3
  %function255 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call254, align 8
  %arg_cast256 = bitcast %Bee** %b to %Animal**
  %cast_val257 = bitcast %Bee** %b to %Animal**
  call void %function255(%Animal** %arg_cast256, i1 false)
  %temp258 = load %Bee*, %Bee** %b, align 8
  %vtable259 = getelementptr inbounds %Bee, %Bee* %temp258, i32 0, i32 0
  %vtable260 = load %Bee_vtable*, %Bee_vtable** %vtable259, align 8
  %fun_to_call261 = getelementptr inbounds %Bee_vtable, %Bee_vtable* %vtable260, i32 0, i32 4
  %function262 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call261, align 8
  %arg_cast263 = bitcast %Bee** %b to %Animal**
  %cast_val264 = bitcast %Bee** %b to %Animal**
  call void %function262(%Animal** %arg_cast263, i1 true)
  %cast_assign265 = bitcast %Bee** %b to %Animal**
  %temp266 = load %Animal*, %Animal** %cast_assign265, align 8
  store %Animal* %temp266, %Animal** %a, align 8
  br label %merge224

else267:                                          ; preds = %else221
  %malloccall268 = tail call i8* @malloc(i32 ptrtoint (%Richard* getelementptr (%Richard, %Richard* null, i32 1) to i32))
  %Richard = bitcast i8* %malloccall268 to %Richard*
  %vtable269 = getelementptr inbounds %Richard, %Richard* %Richard, i32 0, i32 0
  store %Richard_vtable* @Richard_vtable_data, %Richard_vtable** %vtable269, align 8
  %temp270 = alloca %Richard*, align 8
  store %Richard* %Richard, %Richard** %temp270, align 8
  %r = alloca %Richard*, align 8
  %temp271 = load %Richard*, %Richard** %temp270, align 8
  store %Richard* %temp271, %Richard** %r, align 8
  %temp272 = load %Richard*, %Richard** %r, align 8
  %vtable273 = getelementptr inbounds %Richard, %Richard* %temp272, i32 0, i32 0
  %vtable274 = load %Richard_vtable*, %Richard_vtable** %vtable273, align 8
  %fun_to_call275 = getelementptr inbounds %Richard_vtable, %Richard_vtable* %vtable274, i32 0, i32 0
  %function276 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call275, align 8
  %arg_cast277 = bitcast %Richard** %r to %Animal**
  %cast_val278 = bitcast %Richard** %r to %Animal**
  call void %function276(%Animal** %arg_cast277, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Mammal.86, i32 0, i32 0))
  %temp279 = load %Richard*, %Richard** %r, align 8
  %vtable280 = getelementptr inbounds %Richard, %Richard* %temp279, i32 0, i32 0
  %vtable281 = load %Richard_vtable*, %Richard_vtable** %vtable280, align 8
  %fun_to_call282 = getelementptr inbounds %Richard_vtable, %Richard_vtable* %vtable281, i32 0, i32 1
  %function283 = load void (%Animal**, i8*)*, void (%Animal**, i8*)** %fun_to_call282, align 8
  %arg_cast284 = bitcast %Richard** %r to %Animal**
  %cast_val285 = bitcast %Richard** %r to %Animal**
  call void %function283(%Animal** %arg_cast284, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Richard, i32 0, i32 0))
  %temp286 = load %Richard*, %Richard** %r, align 8
  %vtable287 = getelementptr inbounds %Richard, %Richard* %temp286, i32 0, i32 0
  %vtable288 = load %Richard_vtable*, %Richard_vtable** %vtable287, align 8
  %fun_to_call289 = getelementptr inbounds %Richard_vtable, %Richard_vtable* %vtable288, i32 0, i32 2
  %function290 = load void (%Animal**, i32)*, void (%Animal**, i32)** %fun_to_call289, align 8
  %arg_cast291 = bitcast %Richard** %r to %Animal**
  %cast_val292 = bitcast %Richard** %r to %Animal**
  call void %function290(%Animal** %arg_cast291, i32 2)
  %temp293 = load %Richard*, %Richard** %r, align 8
  %vtable294 = getelementptr inbounds %Richard, %Richard* %temp293, i32 0, i32 0
  %vtable295 = load %Richard_vtable*, %Richard_vtable** %vtable294, align 8
  %fun_to_call296 = getelementptr inbounds %Richard_vtable, %Richard_vtable* %vtable295, i32 0, i32 3
  %function297 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call296, align 8
  %arg_cast298 = bitcast %Richard** %r to %Animal**
  %cast_val299 = bitcast %Richard** %r to %Animal**
  call void %function297(%Animal** %arg_cast298, i1 false)
  %temp300 = load %Richard*, %Richard** %r, align 8
  %vtable301 = getelementptr inbounds %Richard, %Richard* %temp300, i32 0, i32 0
  %vtable302 = load %Richard_vtable*, %Richard_vtable** %vtable301, align 8
  %fun_to_call303 = getelementptr inbounds %Richard_vtable, %Richard_vtable* %vtable302, i32 0, i32 4
  %function304 = load void (%Animal**, i1)*, void (%Animal**, i1)** %fun_to_call303, align 8
  %arg_cast305 = bitcast %Richard** %r to %Animal**
  %cast_val306 = bitcast %Richard** %r to %Animal**
  call void %function304(%Animal** %arg_cast305, i1 false)
  %cast_assign307 = bitcast %Richard** %r to %Animal**
  %temp308 = load %Animal*, %Animal** %cast_assign307, align 8
  store %Animal* %temp308, %Animal** %a, align 8
  br label %merge224
}

define i1 @AnimalGame_makeGuess(%AnimalGame** %0, %Animal** %1, i32 %2) {
entry:
  %temp = alloca %AnimalGame*, align 8
  %temp1 = load %AnimalGame*, %AnimalGame** %0, align 8
  store %AnimalGame* %temp1, %AnimalGame** %temp, align 8
  %temp2 = alloca %Animal*, align 8
  %temp3 = load %Animal*, %Animal** %1, align 8
  store %Animal* %temp3, %Animal** %temp2, align 8
  %count = alloca i32, align 4
  store i32 %2, i32* %count, align 4
  %input = alloca i8*, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt.87, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Please enter your guess: ", i32 0, i32 0))
  %readaline = call i8** (...) @readaline()
  %get_temp = load i8*, i8** %readaline, align 8
  store i8* %get_temp, i8** %input, align 8
  %temp4 = load %Animal*, %Animal** %temp2, align 8
  %vtable = getelementptr inbounds %Animal, %Animal* %temp4, i32 0, i32 0
  %vtable5 = load %Animal_vtable*, %Animal_vtable** %vtable, align 8
  %fun_to_call = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable5, i32 0, i32 6
  %function = load i8* (%Animal**)*, i8* (%Animal**)** %fun_to_call, align 8
  %getType_result = call i8* %function(%Animal** %temp2)
  %input6 = load i8*, i8** %input, align 8
  %streq = call i1 (i8*, i8*, ...) @streq(i8* %input6, i8* %getType_result)
  %tmp = xor i1 %streq, true
  br i1 %tmp, label %then, label %else24

merge:                                            ; preds = %else24
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.88, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @"Ding ding ding! You got it! Thank you for playing the game :D", i32 0, i32 0))
  ret i1 true

then:                                             ; preds = %entry
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.88, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"Wrong guess :(", i32 0, i32 0))
  %count8 = load i32, i32* %count, align 4
  %tmp9 = add i32 %count8, 1
  store i32 %tmp9, i32* %count, align 4
  %count10 = load i32, i32* %count, align 4
  %tmp11 = icmp eq i32 %count10, 3
  br i1 %tmp11, label %then13, label %else

merge12:                                          ; preds = %else, %then13
  ret i1 false

then13:                                           ; preds = %then
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.88, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"You have used up all your guesses.", i32 0, i32 0))
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.88, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"The correct animal is: ", i32 0, i32 0))
  %temp16 = load %Animal*, %Animal** %temp2, align 8
  %vtable17 = getelementptr inbounds %Animal, %Animal* %temp16, i32 0, i32 0
  %vtable18 = load %Animal_vtable*, %Animal_vtable** %vtable17, align 8
  %fun_to_call19 = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable18, i32 0, i32 6
  %function20 = load i8* (%Animal**)*, i8* (%Animal**)** %fun_to_call19, align 8
  %getType_result21 = call i8* %function20(%Animal** %temp2)
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.88, i32 0, i32 0), i8* %getType_result21)
  %printf23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.88, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"You'll get 'em next time :)!", i32 0, i32 0))
  br label %merge12

else:                                             ; preds = %then
  br label %merge12

else24:                                           ; preds = %entry
  br label %merge
}

define void @AnimalGame_giveHint(%AnimalGame** %0, %Animal** %1) {
entry:
  %temp = alloca %AnimalGame*, align 8
  %temp1 = load %AnimalGame*, %AnimalGame** %0, align 8
  store %AnimalGame* %temp1, %AnimalGame** %temp, align 8
  %temp2 = alloca %Animal*, align 8
  %temp3 = load %Animal*, %Animal** %1, align 8
  store %Animal* %temp3, %Animal** %temp2, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Select one of the options for a hint:", i32 0, i32 0))
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Class, i32 0, i32 0))
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Legs, i32 0, i32 0))
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Fur, i32 0, i32 0))
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Fly, i32 0, i32 0))
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Noise.93, i32 0, i32 0))
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"Fun fact", i32 0, i32 0))
  %readaline = call i8** (...) @readaline()
  %get_temp = load i8*, i8** %readaline, align 8
  %input = alloca i8*, align 8
  store i8* %get_temp, i8** %input, align 8
  %input10 = load i8*, i8** %input, align 8
  %streq = call i1 (i8*, i8*, ...) @streq(i8* %input10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Class.94, i32 0, i32 0))
  br i1 %streq, label %then, label %else

merge:                                            ; preds = %merge17, %then
  ret void

then:                                             ; preds = %entry
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt.90, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"The animal is part of the class: ", i32 0, i32 0))
  %temp12 = load %Animal*, %Animal** %temp2, align 8
  %vtable = getelementptr inbounds %Animal, %Animal* %temp12, i32 0, i32 0
  %vtable13 = load %Animal_vtable*, %Animal_vtable** %vtable, align 8
  %fun_to_call = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable13, i32 0, i32 5
  %function = load i8* (%Animal**)*, i8* (%Animal**)** %fun_to_call, align 8
  %getClass_result = call i8* %function(%Animal** %temp2)
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* %getClass_result)
  br label %merge

else:                                             ; preds = %entry
  %input15 = load i8*, i8** %input, align 8
  %streq16 = call i1 (i8*, i8*, ...) @streq(i8* %input15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Legs.95, i32 0, i32 0))
  br i1 %streq16, label %then18, label %else27

merge17:                                          ; preds = %merge30, %then18
  br label %merge

then18:                                           ; preds = %else
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt.90, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"The animal has ", i32 0, i32 0))
  %temp20 = load %Animal*, %Animal** %temp2, align 8
  %vtable21 = getelementptr inbounds %Animal, %Animal* %temp20, i32 0, i32 0
  %vtable22 = load %Animal_vtable*, %Animal_vtable** %vtable21, align 8
  %fun_to_call23 = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable22, i32 0, i32 7
  %function24 = load i32 (%Animal**)*, i32 (%Animal**)** %fun_to_call23, align 8
  %numLegs_result = call i32 %function24(%Animal** %temp2)
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt.92, i32 0, i32 0), i32 %numLegs_result)
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @" legs", i32 0, i32 0))
  br label %merge17

else27:                                           ; preds = %else
  %input28 = load i8*, i8** %input, align 8
  %streq29 = call i1 (i8*, i8*, ...) @streq(i8* %input28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Fur.96, i32 0, i32 0))
  br i1 %streq29, label %then31, label %else42

merge30:                                          ; preds = %merge45, %merge37
  br label %merge17

then31:                                           ; preds = %else27
  %temp32 = load %Animal*, %Animal** %temp2, align 8
  %vtable33 = getelementptr inbounds %Animal, %Animal* %temp32, i32 0, i32 0
  %vtable34 = load %Animal_vtable*, %Animal_vtable** %vtable33, align 8
  %fun_to_call35 = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable34, i32 0, i32 8
  %function36 = load i1 (%Animal**)*, i1 (%Animal**)** %fun_to_call35, align 8
  %hasFur_result = call i1 %function36(%Animal** %temp2)
  br i1 %hasFur_result, label %then38, label %else40

merge37:                                          ; preds = %else40, %then38
  br label %merge30

then38:                                           ; preds = %then31
  %printf39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"The animal does have fur", i32 0, i32 0))
  br label %merge37

else40:                                           ; preds = %then31
  %printf41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"The animal does not have fur", i32 0, i32 0))
  br label %merge37

else42:                                           ; preds = %else27
  %input43 = load i8*, i8** %input, align 8
  %streq44 = call i1 (i8*, i8*, ...) @streq(i8* %input43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Fly.97, i32 0, i32 0))
  br i1 %streq44, label %then46, label %else57

merge45:                                          ; preds = %merge60, %merge52
  br label %merge30

then46:                                           ; preds = %else42
  %temp47 = load %Animal*, %Animal** %temp2, align 8
  %vtable48 = getelementptr inbounds %Animal, %Animal* %temp47, i32 0, i32 0
  %vtable49 = load %Animal_vtable*, %Animal_vtable** %vtable48, align 8
  %fun_to_call50 = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable49, i32 0, i32 9
  %function51 = load i1 (%Animal**)*, i1 (%Animal**)** %fun_to_call50, align 8
  %canFly_result = call i1 %function51(%Animal** %temp2)
  br i1 %canFly_result, label %then53, label %else55

merge52:                                          ; preds = %else55, %then53
  br label %merge45

then53:                                           ; preds = %then46
  %printf54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"The animal can fly", i32 0, i32 0))
  br label %merge52

else55:                                           ; preds = %then46
  %printf56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"The animal cannot fly", i32 0, i32 0))
  br label %merge52

else57:                                           ; preds = %else42
  %input58 = load i8*, i8** %input, align 8
  %streq59 = call i1 (i8*, i8*, ...) @streq(i8* %input58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Noise.98, i32 0, i32 0))
  br i1 %streq59, label %then61, label %else67

merge60:                                          ; preds = %merge70, %then61
  br label %merge45

then61:                                           ; preds = %else57
  %temp62 = load %Animal*, %Animal** %temp2, align 8
  %vtable63 = getelementptr inbounds %Animal, %Animal* %temp62, i32 0, i32 0
  %vtable64 = load %Animal_vtable*, %Animal_vtable** %vtable63, align 8
  %fun_to_call65 = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable64, i32 0, i32 10
  %function66 = load void (%Animal**)*, void (%Animal**)** %fun_to_call65, align 8
  call void %function66(%Animal** %temp2)
  br label %merge60

else67:                                           ; preds = %else57
  %input68 = load i8*, i8** %input, align 8
  %streq69 = call i1 (i8*, i8*, ...) @streq(i8* %input68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"Fun fact.99", i32 0, i32 0))
  br i1 %streq69, label %then71, label %else77

merge70:                                          ; preds = %else77, %then71
  br label %merge60

then71:                                           ; preds = %else67
  %temp72 = load %Animal*, %Animal** %temp2, align 8
  %vtable73 = getelementptr inbounds %Animal, %Animal* %temp72, i32 0, i32 0
  %vtable74 = load %Animal_vtable*, %Animal_vtable** %vtable73, align 8
  %fun_to_call75 = getelementptr inbounds %Animal_vtable, %Animal_vtable* %vtable74, i32 0, i32 11
  %function76 = load void (%Animal**)*, void (%Animal**)** %fun_to_call75, align 8
  call void %function76(%Animal** %temp2)
  br label %merge70

else77:                                           ; preds = %else67
  %printf78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.91, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"We don't have that type of hint :(", i32 0, i32 0))
  br label %merge70
}

declare noalias i8* @malloc(i32)

define i32 @main() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%AnimalGame* getelementptr (%AnimalGame, %AnimalGame* null, i32 1) to i32))
  %AnimalGame = bitcast i8* %malloccall to %AnimalGame*
  %vtable = getelementptr inbounds %AnimalGame, %AnimalGame* %AnimalGame, i32 0, i32 0
  store %AnimalGame_vtable* @AnimalGame_vtable_data, %AnimalGame_vtable** %vtable, align 8
  %temp = alloca %AnimalGame*, align 8
  store %AnimalGame* %AnimalGame, %AnimalGame** %temp, align 8
  %ag = alloca %AnimalGame*, align 8
  %temp1 = load %AnimalGame*, %AnimalGame** %temp, align 8
  store %AnimalGame* %temp1, %AnimalGame** %ag, align 8
  %temp2 = load %AnimalGame*, %AnimalGame** %ag, align 8
  %vtable3 = getelementptr inbounds %AnimalGame, %AnimalGame* %temp2, i32 0, i32 0
  %vtable4 = load %AnimalGame_vtable*, %AnimalGame_vtable** %vtable3, align 8
  %fun_to_call = getelementptr inbounds %AnimalGame_vtable, %AnimalGame_vtable* %vtable4, i32 0, i32 0
  %function = load void (%AnimalGame**)*, void (%AnimalGame**)** %fun_to_call, align 8
  call void %function(%AnimalGame** %ag)
  ret i32 0
}
