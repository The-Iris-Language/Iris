
# "make all" builds the executable as well as the "printbig" library designed
# to test linking external code

.PHONY : all
all : ./_build/default/bin/iris.exe Olympus.o 
		

.PHONY : test $(file)
test : 
	dune exec --no-build iris tests/$(file).iris > $(file).ll
	/opt/homebrew/opt/llvm@14/bin/llc $(file).ll > $(file).s
	cc -o $(file).exe $(file).s Olympus.o
	./$(file).exe

.PHONY : ll $(file)
ll : 
	/opt/homebrew/opt/llvm@14/bin/llc $(file).ll > $(file).s
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
	rm -rf testall.log *.diff *.ll *.s *.exe *.o *.opam


# Building the zip

TESTS = \
assign-and-access assign1 assign2 hello-world lits1 local-main main-classinst \
main-inst-mem-assign print-classvar

FAILS = \
assign-typ assign-undeclared classvar-int classvar-priv classvar-typ-assign \
duplicate-classes duplicate-other-classes id-DNE local-decl local-dup


TESTFILES = $(TESTS:%=test-%.iris) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.iris) $(FAILS:%=fail-%.err)

ZIPFILES = bin dune-project lib Makefile \
	README Olympus.c runtests \
	$(TESTFILES:%=tests/%) 

iris.zip : $(ZIPFILES)
	cd .. && zip -r iris/iris.zip \
		$(ZIPFILES:%=iris/%)
