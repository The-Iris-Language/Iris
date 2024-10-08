# README: Final Iris Compiler

Ayda Aricanli (ayda.aricanli@tufts.edu)\
Trevor Sullivan (trevor.sullivan@tufts.edu, [github](https://github.com/tsully02))\
Tim Valk (timothy.valk@tufts.edu)\
Valerie Zhang (valerie.zhang@tufts.edu)\
Josh Kim (joshua.kim634361@tufts.edu)

# Iris Language Reference Manual
The Iris LRM is included in final_report/iris.pdf.

# How to compile and execute

After downloading and unzipping the zip file, run 'make' in terminal. 
This will compile the compiler into an executable. Building Iris requires 
the same environment as MicroC. 

Some of these commands might require changes to our Makefile since the llc and 
lli variable paths might differ across setups. However, they should be symlinked now.

You can compile any Iris program with `./irisc <filename>.iris`, which will 
create an executable of an Iris program. This script lives in the main Iris 
directory.


# How to run test script

Running the test script may require changing the LLC and LLI variables based on 
your setup. `$(which llc)` is currently being used to find the paths.

To run the testing script that runs the test suite, run `sh runtests` in the
main Iris directory. You can also run `sh runtests tests/<filename>` to run a 
specific test. To keep intermediary files, run with the `-k` flag. The defaults
run our entire test suite, which includes our unit tests for each feature. You 
can run a single test to stdout with `make test file=<FILENAME>`, and can run 
our demos with `make demo file=<FILENAME>` (neither of these should include the
.iris of the filename). 

The test script diffs the output of the program against a golden standard 
provided in the test suite. All golden standard files contain the 
corresponding test name and terminates with '.out' as its name. The test 
script will not successfully compile a test program when it is incorrect.


# How to access the demos
The demos are located in the 'demos' folder. There are two demos: 
AnimalGame.iris and FarmTour.iris. Both are interactive and take user
input. AnimalGame is an animal guessing game that shows off our 
implementation of inheritance and basic encapsulation (public and private). 
FarmTour also uses both features, but includes our permit encapulation level.
These can be run individually using the following script:
"make demo file=filename" where filename is either AnimalGame or FarmTour. 

# What has been implemented

We've implemented classes and related features, such as polymorphism, dynamic 
dispatch of methods in the polymorphic case (e.g. `Animal a = new Dog()` where 
`a` calls a Dog-specific function), the inheritance of member variables and 
functions, overloading of methods by child classes, and `univ` methods. This 
involves semantic checking of methods, inheritance, and public and private 
encapsulation levels, since those can be checked at compile-time. We have also 
implemented runtime checking of permitted functions and member variables to 
disallow non-permitted classes, as, due to the polymorphic case, we cannot do
this at compile-time.

Although they were included in our original proposal, we have not implemented 
Lists. This has been updated in our final Language Reference Manual.

# What is in the test suite 

NOTE: 
Invalid permitted access tests are not under the "fail" tests section because 
they produce a runtime error, not a compile-time error. Thus, the script will 
check for the correct error message that we print to stdout. This runtime error 
exits the porgram early, so it will not print the 'OK' like the other tests. 
This occurs in test-fail-classvar-permit, test-fail-classvarassign-permit, and
test-fail-permit-fun.

ANOTHER NOTE:
While we have included every test in this submission, our scanner/parser tests, 
will fail because they expect a pretty-printed AST, while our compiler will 
execute and output the result of the program. However, if you want to take a 
look at all, these tests can be run with `sh testsyntax`.

FINAL NOTE: 
The following is a list of our comprehensive end-to-end test suite.

failure tests:

    assign-typ
    -- Tests for failure of miss-assignment in main

    assign-undeclared 
    -- Tests for failure of assigning to an undeclared local variable

    classtype-undefined
    -- Tests for failure due to a misspelled class type

    classvar-DNE
    -- Tests for failure of accessing a class var that DNE

    classvar-int
    -- Tests for failure of accessing a class variable from an int

    classvar-priv
    -- Tests for failure of accessing a private class var

    classvar-typ-assign
    -- Tests for failure of assigning a member to an expression of a different 
       type

    decl-assign
    -- Tests for failure of declaration and assignment of mismatched types

    duplicate-classes
    -- Tests for failure for duplicate classes: Main class

    duplicate-other-classes
    -- Tests for failure for duplicate classes: Non-Main class

    id-DNE
    -- Tests for failure of accessing undeclared variable

    local-decl
    -- Tests for failure of declaring a duplicate local variable of same type 
       in Main 
    
    local-dup
    -- Tests for failure of declaring duplicate local variable of different 
       types in Main

    no-parent
    -- Tests for failure for undeclared Parent: Non-Main class

    opassign1
    -- Tests for failure of binary operation and assignment on a non-int/float: 
       float

    opassign2
    -- Tests for failure binary operation and assignment on a non-int/float: 
       bool
    
    override-param
    -- Tests for failure of overriding inherited function, but with different 
       parameters

    plusplus
    -- Tests for failure of ++ on non-int/float

    univ1
    -- Tests failure for calling a class method with an instance

    univ2
    -- Tests failure for calling an instance method with a class name

    wrongreturn
    -- Tests for failure of wrong return type
    

passing tests:
    add-ints
    -- Tests adding ints and assigning to variables or class vars

    assign-and-access
    -- Tests for assigning and accesing a local variable

    assign1
    -- Test declaring and assigning local int variable in Main
    
    assign2
    -- Test declaring and assigning local string variable in Main 

    classvar-local-assign
    -- Declare a class in a local variable and assign its member variable 

    classvar-permit
    -- Tests accessing a permit variable

    classvarassign-permit
    -- Tests setting a permit variable 

    decl-assign
    -- Tests for declaring and assigning in one line
    
    doubleop
    -- Tests unary operators ++ and -- on ints and floats

    fail-classvar-permit
    -- Tests accessing a permit variable, where triggering the runtime error 
       for an invalid permitted access is expected behavior

    fail-classvarassign-permit
    -- Tests that a non-permitted class variable can't be assigned, where 
       triggering the runtime error for an invalid variable permitted access is
       expected behavior

    fail-permit-fun
    -- Tests that a non-permitted method can't be called, where triggering the 
       runtime error for an invalid permitted access is expected behavior

    fail-permit
    -- Test calling a permitted function in Main when it shouldn't have access

    fcall-inherited
    -- Tests calling a function that has been inherited

    fcall-noarg
    -- Tests a function call of a func with no arguments

    fcall-overwritten
    -- Tests a function call of a func that has been overrided
    
    fcall-returnlocal
    -- Tests a function call that returns a locally declared value in the 
       function

    fcall-witharg
    -- Test function calls with arguments

    fcall-withinclass
    -- Tests calling a function with a func call of a func within a class

    float
    -- Tests float literals

    functions
    -- Tests dynamic dispatch of inherited and overidden functions
    
    hello-world
    -- Test printing "Hello world!" using Olympus.println() function

    if1
    -- Test true case of if (no else) 

    if2
    -- Test true case of if-else statement 

    if3
    -- Test false case of if-else statement

    inherit-memvar
    -- Test inheritance of member variables and their assignment 

    lits1
    -- Declare and assign int, bool, and string locals in main(declaration and 
       assign are on 2 lines)
    
    local-main
    -- Test declaring a local variable in Main 

    main-classinst-constructor
    -- Tests calling constructor of an object in Main

    main-classinst
    -- Tests declaring local object instance in main (no constructor)

    main-inst-mem-assign
    -- Tests assigning a value to a class member variable

    main-return-new
    -- Tests returning a new object

    mismatch-return
    -- Tests returning a descendant of a class into a declared class variable 
       (e.g. Animal a = new Dog;)
    
    obj-ref
    -- Tests setting object members in functions

    opassign
    -- Tests op assign on ints and floats

    permit-func-public-call
    -- Tests calling a permitted function via a public funtion in a class 
       (more complex example)

    permit-nested-fun
    -- Tests calling a permitted function through a public function (simple 
       example)

    permitfun-if
    -- Test calling a permitted function in an if statement

    permitfun-while
    -- Test calling a permitted function in a while loop

    print-classvar
    -- Tests printing a class variable

    prints
    -- Tests print, println, printerr, and printi, our built-in print functions

    stringeq
    -- Tests if == also works for strings (we call Olympus.streq every time we 
       see an == for strings)

    sub-ints
    -- Tests adding ints and assigning to variables or class vars

    univ1
    -- Tests calling a class method 

    univ2
    -- Tests calling an instance method

    unop1
    -- Test unop (!) on bool declaration and assignment, and isolated assignment
       and (-) on int/float declaration and assignment, and isolated assignment

    while-counter
    -- Tests while loop with a counter
    
    while
    -- Tests simple while loop
