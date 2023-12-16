
# "make all" builds the executable as well as the "printbig" library designed
# to test linking external code

.PHONY : all
all : ./_build/default/bin/iris.exe Olympus.o 

.PHONY : iris $(file)
iris : 
	dune exec --no-build iris $(file).iris > $(file).ll
	llc $(file).ll > $(file).s
	cc -o $(file).exe $(file).s Olympus.o


.PHONY : test $(file)
test : 
	dune exec --no-build iris tests/$(file).iris > $(file).ll
	llc $(file).ll > $(file).s
	cc -o $(file).exe $(file).s Olympus.o
	./$(file).exe

.PHONY : demo $(file)
demo : 
	dune exec --no-build iris demos/$(file).iris > $(file).ll
	llc $(file).ll > $(file).s
	cc -o $(file).exe $(file).s Olympus.o
	./$(file).exe

.PHONY : ll $(file)
ll : 
	llc $(file).ll > $(file).s
	cc -o $(file).exe $(file).s Olympus.o
	./$(file).exe

.PHONY : no-ll $(file)
no-ll : 
	llc $(file) > $(file).s
	cc -o $(file).exe $(file).s Olympus.o
	./$(file).exe


# "make test" Compiles everything and runs the regression tests

.PHONY : testall
testall : all testall.sh
	./testall.sh

# "make" will just compile the Iris compiler
./_build/default/bin/iris.exe : bin/parser.mly bin/scanner.mll bin/codegen.ml bin/semant.ml bin/gus.ml bin/guini.ml bin/iris.ml bin/ast.ml
	dune build

Olympus : Olympus.c
	cc -o Olympus -DBUILD_TEST Olympus.c

# "make clean" removes all generated files

.PHONY : clean
clean :
	dune clean
	rm -rf testall.log *.diff *.ll *.s *.exe *.o *.opam *.out *.err


# Building the zip

TESTS = \
add-ints assign-and-access assign1 assign2 classvar-local-assign classvar-permit \
classvarassign-permit decl-assign doubleop fail-classvar-permit fail-classvarassign-permit \
fail-permit-fun fail-permit fcall-inherited fcall-noarg fcall-overwritten fcall-returnlocal \
fcall-witharg fcall-withinclass float functions hello-world if1 if2 if3 inherit-memvar \
lits1 local-main main-classinst-constructor main-classinst main-inst-mem-assign main-return-new \
mismatch-return obj-ref opassign permit-func-public-call permit-nested-fun permitfun-if \
permitfun-while print-classvar prints stringeq sub-ints univ1 univ2 unop1 while-counter while

FAILS = \
assign-typ assign-undeclared classtype-undefined classvar-DNE classvar-int \
classvar-priv classvar-typ-assign decl-assign duplicate-classes duplicate-other-classes \
id-DNE local-decl local-dup no-parent opassign1 opassign2 override-param \
plusplus univ1 univ2 wrongreturn

TESTFILES = $(TESTS:%=test-%.iris) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.iris) $(FAILS:%=fail-%.err)

ZIPFILES = bin demos scanner_parser_tests dune-project lib Makefile \
	README Olympus.c testsyntax runtests irisc \
	$(TESTFILES:%=tests/%) 

iris.zip : $(ZIPFILES)
	cd .. && zip -r iris/iris.zip \
		$(ZIPFILES:%=iris/%)
