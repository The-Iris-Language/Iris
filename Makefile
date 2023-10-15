
# "make all" builds the executable as well as the "printbig" library designed
# to test linking external code

.PHONY : all
all : ./_build/default/bin/iris.exe


.PHONY : test
test : 
	dune exec --no-build iris $(file)

# "make test" Compiles everything and runs the regression tests

.PHONY : testall
testall : all testall.sh
	./testall.sh

# "make" will just compile the Iris compiler along with printbig.c

# bin/codegen.ml bin/semant.ml
./_build/default/bin/iris.exe : bin/parser.mly bin/scanner.mll bin/ast.ml bin/iris.ml
	dune build

# "make clean" removes all generated files

.PHONY : clean
clean :
	dune clean
	rm -rf testall.log *.diff *.ll *.s iris.opam


# Building the zip

TESTS = \
	multiAssign univ charLitRight opAssign strLit vDecAss comments assignFunc \
	doubleOp permitted inherit funcDecl self vdecl listConstructor \
	univFuncCall opEncap classMain dotAssign


FAILS = \
	emptyChar noColonEncap missingSemi var+ classPublic permitted noEncap \
	opAssign 


TESTFILES = $(TESTS:%=test-%.iris) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.iris) $(FAILS:%=fail-%.err)

ZIPFILES = bin dune-project lib Makefile \
	README testsyntax.sh \
	$(TESTFILES:%=tests/%) 

iris.zip : $(ZIPFILES)
	cd .. && zip -r iris/iris.zip \
		$(ZIPFILES:%=iris/%)
