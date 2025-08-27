@__const.main.s1 = private unnamed_addr constant [4 x i8] c"(()\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"Example 1:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"s = \22(()\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Longest Valid Parentheses: %d\0A\0A\00", align 1
@__const.main.s2 = private unnamed_addr constant [7 x i8] c")()())\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Example 2:\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"s = \22)()())\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Example 3:\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"s = \22\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Longest Valid Parentheses: %d\0A\00", align 1

define i32 @longestValidParentheses(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call i64 @strlen(ptr noundef %8) #7
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %3, align 4
  %11 = load i32, ptr %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call noalias ptr @malloc(i64 noundef %14) #8
  store ptr %15, ptr %4, align 8
  store i32 -1, ptr %5, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  store i32 -1, ptr %20, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %21

21:                                               ; preds = %76, %1
  %22 = load i32, ptr %7, align 4
  %23 = load i32, ptr %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 40
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i32, ptr %7, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %35, i64 %38
  store i32 %34, ptr %39, align 4
  br label %75

40:                                               ; preds = %25
  %41 = load i32, ptr %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr %5, align 4
  %43 = load i32, ptr %5, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, ptr %7, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = load i32, ptr %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  store i32 %46, ptr %51, align 4
  br label %74

52:                                               ; preds = %40
  %53 = load i32, ptr %7, align 4
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = sub nsw i32 %53, %58
  %60 = load i32, ptr %6, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load i32, ptr %7, align 4
  %64 = load ptr, ptr %4, align 8
  %65 = load i32, ptr %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %64, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = sub nsw i32 %63, %68
  br label %72

70:                                               ; preds = %52
  %71 = load i32, ptr %6, align 4
  br label %72

72:                                               ; preds = %70, %62
  %73 = phi i32 [ %69, %62 ], [ %71, %70 ]
  store i32 %73, ptr %6, align 4
  br label %74

74:                                               ; preds = %72, %45
  br label %75

75:                                               ; preds = %74, %33
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %7, align 4
  br label %21, !llvm.loop !6

79:                                               ; preds = %21
  %80 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %80) #9
  %81 = load i32, ptr %6, align 4
  ret i32 %81
}


define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca [7 x i8], align 1
  %4 = alloca [1 x i8], align 1
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 @__const.main.s1, i64 4, i1 false)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %7 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 0
  %8 = call i32 @longestValidParentheses(ptr noundef %7)
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 @__const.main.s2, i64 7, i1 false)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %12 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 0
  %13 = call i32 @longestValidParentheses(ptr noundef %12)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13)
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 1, i1 false)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %17 = getelementptr inbounds [1 x i8], ptr %4, i64 0, i64 0
  %18 = call i32 @longestValidParentheses(ptr noundef %17)
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %18)
  ret i32 0
}

declare i64 @strlen(ptr noundef) #1
declare noalias ptr @malloc(i64 noundef) #2
declare void @free(ptr noundef) #3
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg)
declare i32 @printf(ptr noundef, ...)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
