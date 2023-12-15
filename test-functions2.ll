; ModuleID = 'Iris'
source_filename = "Iris"

%Object_vtable = type {}
%IceCream_vtable = type { i8* (%IceCream**)*, void (%IceCream**, i8*)*, double (%IceCream**)*, void (%IceCream**)*, void (%IceCream**)* }
%IceCream = type { %IceCream_vtable*, i32, [1 x i8*], i32, i8* }
%Gelato_vtable = type { i8* (%Gelato**)*, void (%IceCream**, i8*)*, double (%IceCream**)*, void (%IceCream**)*, void (%IceCream**)*, i32 (%Gelato**, i32)* }
%Gelato = type { %Gelato_vtable*, i32, [1 x i8*], i32, i8* }
%Main_vtable = type { i32 ()*, i32 (%Main**)* }
%Main = type { %Main_vtable*, i32, [1 x i8*] }

@Object_vtable_data = global %Object_vtable zeroinitializer
@fmt = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@yum = private unnamed_addr constant [4 x i8] c"yum\00", align 1
@fmt.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fmt.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"got temp!" = private unnamed_addr constant [10 x i8] c"got temp!\00", align 1
@fmt.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@bruh = private unnamed_addr constant [5 x i8] c"bruh\00", align 1
@fmt.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@yay = private unnamed_addr constant [4 x i8] c"yay\00", align 1
@IceCream_vtable_data = global %IceCream_vtable { i8* (%IceCream**)* @IceCream_getFlavor, void (%IceCream**, i8*)* @IceCream_setFlavor, double (%IceCream**)* @IceCream_getTemp, void (%IceCream**)* @IceCream_yay, void (%IceCream**)* @IceCream_printyay }
@fmt.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@tasty = private unnamed_addr constant [6 x i8] c"tasty\00", align 1
@fmt.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Gelato_vtable_data = global %Gelato_vtable { i8* (%Gelato**)* @Gelato_getFlavor, void (%IceCream**, i8*)* @IceCream_setFlavor, double (%IceCream**)* @IceCream_getTemp, void (%IceCream**)* @IceCream_yay, void (%IceCream**)* @IceCream_printyay, i32 (%Gelato**, i32)* @Gelato_price }
@fmt.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@"josh is da goat" = private unnamed_addr constant [16 x i8] c"josh is da goat\00", align 1
@IceCream = private unnamed_addr constant [9 x i8] c"IceCream\00", align 1
@Gelato = private unnamed_addr constant [7 x i8] c"Gelato\00", align 1
@"cookies and cream" = private unnamed_addr constant [18 x i8] c"cookies and cream\00", align 1
@chocolate = private unnamed_addr constant [10 x i8] c"chocolate\00", align 1
@fmt.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fmt.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Main_vtable_data = global %Main_vtable { i32 ()* @main, i32 (%Main**)* @Main_getOne }

declare i32 @printf(i8*, ...)

declare i32 @printerr(i8*, ...)

declare i8** @readaline(...)

declare i1 @streq(i8*, i8*, ...)

declare void @class_permitted(i8*, i8**, i32, ...)

define i8* @IceCream_getFlavor(%IceCream** %0) {
entry:
  %temp = alloca %IceCream*, align 8
  %temp1 = load %IceCream*, %IceCream** %0, align 8
  store %IceCream* %temp1, %IceCream** %temp, align 8
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @yum, i32 0, i32 0)
}

define void @IceCream_setFlavor(%IceCream** %0, i8* %1) {
entry:
  %temp = alloca %IceCream*, align 8
  %temp1 = load %IceCream*, %IceCream** %0, align 8
  store %IceCream* %temp1, %IceCream** %temp, align 8
  %f = alloca i8*, align 8
  store i8* %1, i8** %f, align 8
  %f2 = load i8*, i8** %f, align 8
  %temp3 = load %IceCream*, %IceCream** %temp, align 8
  %selfflavor = getelementptr inbounds %IceCream, %IceCream* %temp3, i32 0, i32 4
  store i8* %f2, i8** %selfflavor, align 8
  ret void
}

define double @IceCream_getTemp(%IceCream** %0) {
entry:
  %temp = alloca %IceCream*, align 8
  %temp1 = load %IceCream*, %IceCream** %0, align 8
  store %IceCream* %temp1, %IceCream** %temp, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"got temp!", i32 0, i32 0))
  ret double 3.200000e+01
}

define void @IceCream_yay(%IceCream** %0) {
entry:
  %temp = alloca %IceCream*, align 8
  %temp1 = load %IceCream*, %IceCream** %0, align 8
  store %IceCream* %temp1, %IceCream** %temp, align 8
  %temp2 = load %IceCream*, %IceCream** %temp, align 8
  %vtable = getelementptr inbounds %IceCream, %IceCream* %temp2, i32 0, i32 0
  %vtable3 = load %IceCream_vtable*, %IceCream_vtable** %vtable, align 8
  %fun_to_call = getelementptr inbounds %IceCream_vtable, %IceCream_vtable* %vtable3, i32 0, i32 4
  %function = load void (%IceCream**)*, void (%IceCream**)** %fun_to_call, align 8
  call void %function(%IceCream** %temp)
  %temp4 = load %IceCream*, %IceCream** %temp, align 8
  %selftemp = getelementptr inbounds %IceCream, %IceCream* %temp4, i32 0, i32 3
  %selftemp5 = load i32, i32* %selftemp, align 4
  %tmp = icmp eq i32 %selftemp5, 1
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else, %then
  ret void

then:                                             ; preds = %entry
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bruh, i32 0, i32 0))
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define void @IceCream_printyay(%IceCream** %0) {
entry:
  %temp = alloca %IceCream*, align 8
  %temp1 = load %IceCream*, %IceCream** %0, align 8
  store %IceCream* %temp1, %IceCream** %temp, align 8
  %temp2 = load %IceCream*, %IceCream** %temp, align 8
  %selftemp = getelementptr inbounds %IceCream, %IceCream* %temp2, i32 0, i32 3
  store i32 1, i32* %selftemp, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @yay, i32 0, i32 0))
  ret void
}

define i8* @Gelato_getFlavor(%Gelato** %0) {
entry:
  %temp = alloca %Gelato*, align 8
  %temp1 = load %Gelato*, %Gelato** %0, align 8
  store %Gelato* %temp1, %Gelato** %temp, align 8
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tasty, i32 0, i32 0)
}

define i32 @Gelato_price(%Gelato** %0, i32 %1) {
entry:
  %temp = alloca %Gelato*, align 8
  %temp1 = load %Gelato*, %Gelato** %0, align 8
  store %Gelato* %temp1, %Gelato** %temp, align 8
  %i = alloca i32, align 4
  store i32 %1, i32* %i, align 4
  ret i32 1
}

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"josh is da goat", i32 0, i32 0))
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%IceCream* getelementptr (%IceCream, %IceCream* null, i32 1) to i32))
  %IceCream = bitcast i8* %malloccall to %IceCream*
  %vtable = getelementptr inbounds %IceCream, %IceCream* %IceCream, i32 0, i32 0
  store %IceCream_vtable* @IceCream_vtable_data, %IceCream_vtable** %vtable, align 8
  %temp = alloca %IceCream*, align 8
  %num_permitted = getelementptr inbounds %IceCream, %IceCream* %IceCream, i32 0, i32 1
  store i32 1, i32* %num_permitted, align 4
  %permit_list = getelementptr inbounds %IceCream, %IceCream* %IceCream, i32 0, i32 2
  store [1 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @IceCream, i32 0, i32 0)], [1 x i8*]* %permit_list, align 8
  store %IceCream* %IceCream, %IceCream** %temp, align 8
  %i = alloca %IceCream*, align 8
  %temp1 = load %IceCream*, %IceCream** %temp, align 8
  store %IceCream* %temp1, %IceCream** %i, align 8
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%Gelato* getelementptr (%Gelato, %Gelato* null, i32 1) to i32))
  %Gelato = bitcast i8* %malloccall2 to %Gelato*
  %vtable3 = getelementptr inbounds %Gelato, %Gelato* %Gelato, i32 0, i32 0
  store %Gelato_vtable* @Gelato_vtable_data, %Gelato_vtable** %vtable3, align 8
  %temp4 = alloca %Gelato*, align 8
  %num_permitted5 = getelementptr inbounds %Gelato, %Gelato* %Gelato, i32 0, i32 1
  store i32 1, i32* %num_permitted5, align 4
  %permit_list6 = getelementptr inbounds %Gelato, %Gelato* %Gelato, i32 0, i32 2
  store [1 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Gelato, i32 0, i32 0)], [1 x i8*]* %permit_list6, align 8
  store %Gelato* %Gelato, %Gelato** %temp4, align 8
  %g = alloca %Gelato*, align 8
  %temp7 = load %Gelato*, %Gelato** %temp4, align 8
  store %Gelato* %temp7, %Gelato** %g, align 8
  %temp8 = load %IceCream*, %IceCream** %i, align 8
  %vtable9 = getelementptr inbounds %IceCream, %IceCream* %temp8, i32 0, i32 0
  %vtable10 = load %IceCream_vtable*, %IceCream_vtable** %vtable9, align 8
  %fun_to_call = getelementptr inbounds %IceCream_vtable, %IceCream_vtable* %vtable10, i32 0, i32 2
  %function = load double (%IceCream**)*, double (%IceCream**)** %fun_to_call, align 8
  %getTemp_result = call double %function(%IceCream** %i)
  %temp11 = load %Gelato*, %Gelato** %g, align 8
  %vtable12 = getelementptr inbounds %Gelato, %Gelato* %temp11, i32 0, i32 0
  %vtable13 = load %Gelato_vtable*, %Gelato_vtable** %vtable12, align 8
  %fun_to_call14 = getelementptr inbounds %Gelato_vtable, %Gelato_vtable* %vtable13, i32 0, i32 2
  %function15 = load double (%IceCream**)*, double (%IceCream**)** %fun_to_call14, align 8
  %arg_cast = bitcast %Gelato** %g to %IceCream**
  %getTemp_result16 = call double %function15(%IceCream** %arg_cast)
  %temp17 = load %IceCream*, %IceCream** %i, align 8
  %vtable18 = getelementptr inbounds %IceCream, %IceCream* %temp17, i32 0, i32 0
  %vtable19 = load %IceCream_vtable*, %IceCream_vtable** %vtable18, align 8
  %fun_to_call20 = getelementptr inbounds %IceCream_vtable, %IceCream_vtable* %vtable19, i32 0, i32 1
  %function21 = load void (%IceCream**, i8*)*, void (%IceCream**, i8*)** %fun_to_call20, align 8
  call void %function21(%IceCream** %i, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"cookies and cream", i32 0, i32 0))
  %temp22 = load %IceCream*, %IceCream** %i, align 8
  %iflavor = getelementptr inbounds %IceCream, %IceCream* %temp22, i32 0, i32 4
  %iflavor23 = load i8*, i8** %iflavor, align 8
  %printf24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.22, i32 0, i32 0), i8* %iflavor23)
  %temp25 = load %Gelato*, %Gelato** %g, align 8
  %vtable26 = getelementptr inbounds %Gelato, %Gelato* %temp25, i32 0, i32 0
  %vtable27 = load %Gelato_vtable*, %Gelato_vtable** %vtable26, align 8
  %fun_to_call28 = getelementptr inbounds %Gelato_vtable, %Gelato_vtable* %vtable27, i32 0, i32 1
  %function29 = load void (%IceCream**, i8*)*, void (%IceCream**, i8*)** %fun_to_call28, align 8
  %arg_cast30 = bitcast %Gelato** %g to %IceCream**
  call void %function29(%IceCream** %arg_cast30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @chocolate, i32 0, i32 0))
  %temp31 = load %Gelato*, %Gelato** %g, align 8
  %gflavor = getelementptr inbounds %Gelato, %Gelato* %temp31, i32 0, i32 4
  %gflavor32 = load i8*, i8** %gflavor, align 8
  %printf33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.22, i32 0, i32 0), i8* %gflavor32)
  %temp34 = load %IceCream*, %IceCream** %i, align 8
  %vtable35 = getelementptr inbounds %IceCream, %IceCream* %temp34, i32 0, i32 0
  %vtable36 = load %IceCream_vtable*, %IceCream_vtable** %vtable35, align 8
  %fun_to_call37 = getelementptr inbounds %IceCream_vtable, %IceCream_vtable* %vtable36, i32 0, i32 3
  %function38 = load void (%IceCream**)*, void (%IceCream**)** %fun_to_call37, align 8
  call void %function38(%IceCream** %i)
  ret i32 0
}

define i32 @Main_getOne(%Main** %0) {
entry:
  %temp = alloca %Main*, align 8
  %temp1 = load %Main*, %Main** %0, align 8
  store %Main* %temp1, %Main** %temp, align 8
  ret i32 1
}

declare noalias i8* @malloc(i32)
