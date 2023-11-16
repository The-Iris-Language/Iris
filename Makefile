
# "make all" builds the executable as well as the "printbig" library designed
# to test linking external code

.PHONY : all
all : ./_build/default/bin/iris.exe Olympus.o 
		

.PHONY : test $(file)
test : 
	dune exec --no-build iris tests/$(file)
	/opt/homebrew/opt/llvm@14/bin/llc $(basename $(file)).ll > $(basename $(file)).s
	cc -o $(basename $(file)).exe $(basename $(file)).s Olympus.o


# "make test" Compiles everything and runs the regression tests

.PHONY : testall
testall : all testall.sh
	./testall.sh

# "make" will just compile the Iris compiler
./_build/default/bin/iris.exe : bin/parser.mly bin/scanner.mll bin/codegen.ml bin/semant.ml bin/iris.ml bin/ast.ml
	dune build

Olympus : Olympus.c
	cc -o Olympus -DBUILD_TEST Olympus.c

# "make clean" removes all generated files

.PHONY : clean
clean :
	dune clean
	rm -rf testall.log *.diff *.ll *.s *.exe *.o iris.opam


# Building the zip

TESTS = \
local-main hello-world assign1
# multiAssign univ charLitRight opAssign strLit vDecAss comments assignFunc \
# doubleOp permitted inherit funcDecl self vdecl listConstructor \
# univFuncCall opEncap classMain dotAssign


FAILS = \
assign-typ assign-undeclared local-decl local-dup 
# emptyChar noColonEncap missingSemi var+ classPublic permitted noEncap \
# opAssign 


TESTFILES = $(TESTS:%=test-%.iris) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.iris) $(FAILS:%=fail-%.err)

ZIPFILES = bin dune-project lib Makefile \
	README Olympus.c runtest.sh \
	$(TESTFILES:%=tests/%) 

iris.zip : $(ZIPFILES)
	cd .. && zip -r iris/iris.zip \
		$(ZIPFILES:%=iris/%)
