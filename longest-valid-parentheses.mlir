#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>} {
  llvm.mlir.global private unnamed_addr constant @__const.main.s1("(()\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str"("Example 1:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.1"("s = \22(()\22\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.2"("Longest Valid Parentheses: %d\0A\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @__const.main.s2(")()())\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.3"("Example 2:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.4"("s = \22)()())\22\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.5"("Example 3:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.6"("s = \22\22\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.7"("Longest Valid Parentheses: %d\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.func @longestValidParentheses(%arg0: !llvm.ptr {llvm.noundef}) -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.mlir.constant(-1 : i32) : i32
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(40 : i32) : i32
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %11 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %12 = llvm.call @strlen(%11) : (!llvm.ptr) -> i64
    %13 = llvm.trunc %12 : i64 to i32
    llvm.store %13, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    %14 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %15 = llvm.add %14, %0  : i32
    %16 = llvm.sext %15 : i32 to i64
    %17 = llvm.mul %16, %1  : i64
    %18 = llvm.call @malloc(%17) : (i64) -> !llvm.ptr
    llvm.store %18, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %2, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %19 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %20 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %21 = llvm.add %20, %0  : i32
    llvm.store %21, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %22 = llvm.sext %21 : i32 to i64
    %23 = llvm.getelementptr inbounds %19[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %2, %23 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb12
    %24 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %26 = llvm.icmp "slt" %24, %25 : i32
    llvm.cond_br %26, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    %27 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %28 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.sext %28 : i32 to i64
    %30 = llvm.getelementptr inbounds %27[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %31 = llvm.load %30 {alignment = 1 : i64} : !llvm.ptr -> i8
    %32 = llvm.sext %31 : i8 to i32
    %33 = llvm.icmp "eq" %32, %4 : i32
    llvm.cond_br %33, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %34 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %35 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.add %36, %0  : i32
    llvm.store %37, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %38 = llvm.sext %37 : i32 to i64
    %39 = llvm.getelementptr inbounds %35[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %34, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb4:  // pred: ^bb2
    %40 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.add %40, %2  : i32
    llvm.store %41, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %42 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %43 = llvm.icmp "eq" %42, %2 : i32
    llvm.cond_br %43, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %44 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %45 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %46 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %47 = llvm.add %46, %0  : i32
    llvm.store %47, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %48 = llvm.sext %47 : i32 to i64
    %49 = llvm.getelementptr inbounds %45[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %44, %49 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb10
  ^bb6:  // pred: ^bb4
    %50 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %51 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %52 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.sext %52 : i32 to i64
    %54 = llvm.getelementptr inbounds %51[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %55 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.sub %50, %55  : i32
    %57 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.icmp "sgt" %56, %57 : i32
    llvm.cond_br %58, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %59 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %60 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %61 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %62 = llvm.sext %61 : i32 to i64
    %63 = llvm.getelementptr inbounds %60[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.sub %59, %64  : i32
    llvm.br ^bb9(%65 : i32)
  ^bb8:  // pred: ^bb6
    %66 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb9(%66 : i32)
  ^bb9(%67: i32):  // 2 preds: ^bb7, ^bb8
    llvm.store %67, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb5, ^bb9
    llvm.br ^bb11
  ^bb11:  // 2 preds: ^bb3, ^bb10
    llvm.br ^bb12
  ^bb12:  // pred: ^bb11
    %68 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %69 = llvm.add %68, %0  : i32
    llvm.store %69, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb13:  // pred: ^bb1
    %70 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%70) : (!llvm.ptr) -> ()
    %71 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %71 : i32
  }
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant("(()\00") : !llvm.array<4 x i8>
    %3 = llvm.mlir.addressof @__const.main.s1 : !llvm.ptr
    %4 = llvm.mlir.constant(4 : i64) : i64
    %5 = llvm.mlir.constant(false) : i1
    %6 = llvm.mlir.constant("Example 1:\0A\00") : !llvm.array<12 x i8>
    %7 = llvm.mlir.addressof @".str" : !llvm.ptr
    %8 = llvm.mlir.constant("s = \22(()\22\0A\00") : !llvm.array<11 x i8>
    %9 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %10 = llvm.mlir.constant(0 : i64) : i64
    %11 = llvm.mlir.constant("Longest Valid Parentheses: %d\0A\0A\00") : !llvm.array<32 x i8>
    %12 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %13 = llvm.mlir.constant(")()())\00") : !llvm.array<7 x i8>
    %14 = llvm.mlir.addressof @__const.main.s2 : !llvm.ptr
    %15 = llvm.mlir.constant(7 : i64) : i64
    %16 = llvm.mlir.constant("Example 2:\0A\00") : !llvm.array<12 x i8>
    %17 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %18 = llvm.mlir.constant("s = \22)()())\22\0A\00") : !llvm.array<14 x i8>
    %19 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %20 = llvm.mlir.constant(0 : i8) : i8
    %21 = llvm.mlir.constant(1 : i64) : i64
    %22 = llvm.mlir.constant("Example 3:\0A\00") : !llvm.array<12 x i8>
    %23 = llvm.mlir.addressof @".str.5" : !llvm.ptr
    %24 = llvm.mlir.constant("s = \22\22\0A\00") : !llvm.array<8 x i8>
    %25 = llvm.mlir.addressof @".str.6" : !llvm.ptr
    %26 = llvm.mlir.constant("Longest Valid Parentheses: %d\0A\00") : !llvm.array<31 x i8>
    %27 = llvm.mlir.addressof @".str.7" : !llvm.ptr
    %28 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x !llvm.array<4 x i8> {alignment = 1 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x !llvm.array<7 x i8> {alignment = 1 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x !llvm.array<1 x i8> {alignment = 1 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    "llvm.intr.memcpy"(%29, %3, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %32 = llvm.call @printf(%7) : (!llvm.ptr) -> i32
    %33 = llvm.call @printf(%9) : (!llvm.ptr) -> i32
    %34 = llvm.getelementptr inbounds %29[%10, %10] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x i8>
    %35 = llvm.call @longestValidParentheses(%34) : (!llvm.ptr) -> i32
    %36 = llvm.call @printf(%12, %35) : (!llvm.ptr, i32) -> i32
    "llvm.intr.memcpy"(%30, %14, %15) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %37 = llvm.call @printf(%17) : (!llvm.ptr) -> i32
    %38 = llvm.call @printf(%19) : (!llvm.ptr) -> i32
    %39 = llvm.getelementptr inbounds %30[%10, %10] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x i8>
    %40 = llvm.call @longestValidParentheses(%39) : (!llvm.ptr) -> i32
    %41 = llvm.call @printf(%12, %40) : (!llvm.ptr, i32) -> i32
    "llvm.intr.memset"(%31, %20, %21) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %42 = llvm.call @printf(%23) : (!llvm.ptr) -> i32
    %43 = llvm.call @printf(%25) : (!llvm.ptr) -> i32
    %44 = llvm.getelementptr inbounds %31[%10, %10] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1 x i8>
    %45 = llvm.call @longestValidParentheses(%44) : (!llvm.ptr) -> i32
    %46 = llvm.call @printf(%27, %45) : (!llvm.ptr, i32) -> i32
    llvm.return %1 : i32
  }
  llvm.func @strlen(!llvm.ptr {llvm.noundef}) -> i64
  llvm.func @malloc(i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias})
  llvm.func @free(!llvm.ptr {llvm.noundef})
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> i32
}
