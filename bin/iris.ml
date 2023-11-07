(* Top-level of the iris compiler: scan & parse the input,
   check the resulting AST *)

(* JUST AST TESTING

(* Print out *)
let () =
  let usage_msg = "usage: ./iris.exe [file.iris]" in
  let channel = ref stdin in
  Arg.parse [] (fun file -> channel := open_in file) usage_msg;
  let lexbuf = Lexing.from_channel !channel in
  let ast = Parser.program Scanner.token lexbuf in
  print_string (Ast.string_of_program ast) 
  
*)

(* Top-level of the Iris compiler:
   scan & parse the input, perform semantic checks,
   pretty-print the SAST *)

(* 
(* 
   let () =
Deal with command line *)
  let usage_msg = "usage: ./iris.native [file.iris]" in
  let channel = ref stdin in
  Arg.parse [] (fun file -> channel := open_in file) usage_msg;
  (* Invoke compiler *)
  let lexbuf = Lexing.from_channel !channel in
  let ast = Parser.program Scanner.token lexbuf in
  let sast = Semant.check ast in
  print_string (Sast.string_of_sprogram sast)  *)


(* FULL COMPILER (COPIED FROM MICROC)

Top-level of the Iris compiler: scan & parse the input,
   check the resulting AST and generate an SAST from it, generate LLVM IR,
   and dump the module *)

   type action = Ast | Sast | LLVM_IR | Compile

   let () =
     let action = ref Compile in
     let set_action a () = action := a in
     let speclist = [
       ("-a", Arg.Unit (set_action Ast), "Print the AST");
       ("-s", Arg.Unit (set_action Sast), "Print the SAST");
       ("-l", Arg.Unit (set_action LLVM_IR), "Print the generated LLVM IR");
       ("-c", Arg.Unit (set_action Compile),
         "Check and print the generated LLVM IR (default)");
     ] in  
     let usage_msg = "usage: ./iris.native [-a|-s|-l|-c] [file.iris]" in
     let channel = ref stdin in
     Arg.parse speclist (fun filename -> channel := open_in filename) usage_msg;
     
     let lexbuf = Lexing.from_channel !channel in
     let ast = Parser.program Scanner.token lexbuf in  
     match !action with
       Ast -> print_string (Ast.string_of_program ast)
     | _ -> let sast = Semant.check ast in
       match !action with
         Ast     -> ()
       | Sast    -> print_string (Sast.string_of_sprogram sast) 
       | LLVM_IR -> print_string (Llvm.string_of_llmodule (Codegen.translate sast))
       | Compile -> let m = Codegen.translate sast in
     Llvm_analysis.assert_valid_module m;
     print_string (Llvm.string_of_llmodule m) 

     (* make && 
        dune exec --no-build iris tests/hello-world.iris | /opt/homebrew/opt/llvm@14/bin/llc > helloworld.s &&
        cc -o helloworld.exe helloworld.s Olympus.o &&
        ./helloworld.exe
      
      
      make && dune exec --no-build iris tests/hello-world.iris | /opt/homebrew/opt/llvm@14/bin/llc > helloworld.s && cc -o helloworld.exe helloworld.s Olympus.o && ./helloworld.exe  *)
     