
# "make all" builds the executable as well as the "printbig" library designed
# to test linking external code

.PHONY : all
all : ./_build/default/bin/iris.exe


.PHONY : all
test : 
	dune exec --no-build iris $(file)

# "make test" Compiles everything and runs the regression tests

.PHONY : test
testall : all testall.sh
	./testall.sh

# "make" will just compile the Iris compiler along with printbig.c

# bin/codegen.ml bin/semant.ml
./_build/default/bin/iris.exe : bin/parser.mly bin/scanner.mll bin/ast.ml bin/iris.ml
	dune build

# # "make printbig" compiles the helper C file for the printbig built-in

# printbig : printbig.c
# 	cc -o printbig -DBUILD_TEST printbig.c

# "make clean" removes all generated files

.PHONY : clean
clean :
	dune clean
	rm -rf testall.log *.diff printbig.o iris.opam


# Building the zip

TESTS = \
  add assign_int assign div mult sub vdec

FAILS = \
  assign1 assign2 assign3 assign4 

TESTFILES = $(TESTS:%=test-%.mc) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.mc) $(FAILS:%=fail-%.err)

ZIPFILES = bin Dockerfile dune-project lib Makefile \
	README testall.sh printbig.c \
	$(TESTFILES:%=tests/%) 

iris.zip : $(ZIPFILES)
	cd .. && zip -r iris/iris.zip \
		$(ZIPFILES:%=iris/%)
