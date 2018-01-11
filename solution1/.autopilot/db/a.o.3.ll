; ModuleID = '/home/fyp-zc702/FYP/backsub_gmm_new_180110/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mode7 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode5 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@memcpy_OC_part_bgmodel_OC_bgmo = internal unnamed_addr constant [28 x i8] c"memcpy.part_bgmodel.bgmodel\00" ; [#uses=1 type=[28 x i8]*]
@memcpy_OC_part2_bgmodel_OC_bgm = internal unnamed_addr constant [29 x i8] c"memcpy.part2_bgmodel.bgmodel\00" ; [#uses=1 type=[29 x i8]*]
@memcpy_OC_frame_out_OC_str = internal unnamed_addr constant [18 x i8] c"memcpy.frame_out.\00" ; [#uses=2 type=[18 x i8]*]
@memcpy_OC_bgmodel_OC_part_bgmo = internal unnamed_addr constant [32 x i8] c"memcpy.bgmodel.part_bgmodel.gep\00" ; [#uses=1 type=[32 x i8]*]
@memcpy_OC_bgmodel_OC_part2_bgm = internal unnamed_addr constant [33 x i8] c"memcpy.bgmodel.part2_bgmodel.gep\00" ; [#uses=1 type=[33 x i8]*]
@memcpy_OC_OC_frame_in_str = internal unnamed_addr constant [17 x i8] c"memcpy..frame_in\00" ; [#uses=2 type=[17 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00" ; [#uses=8 type=[18 x i8]*]
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=8 type=[17 x i8]*]
@bundle8 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle6 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bgsub_str = internal unnamed_addr constant [6 x i8] c"bgsub\00" ; [#uses=1 type=[6 x i8]*]
@p_str52 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1812 = private unnamed_addr constant [10 x i8] c"write_mem\00", align 1 ; [#uses=2 type=[10 x i8]*]
@p_str1810 = private unnamed_addr constant [9 x i8] c"read_mem\00", align 1 ; [#uses=2 type=[9 x i8]*]
@p_str1809 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str1808 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=8 type=[6 x i8]*]
@p_str1807 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=5 type=[6 x i8]*]
@p_str1806 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=28 type=[1 x i8]*]
@p_str1804 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]

; [#uses=2]
define internal fastcc void @bgsub_process([320 x i8]* nocapture %frame_in, [320 x i1]* nocapture %frame_out, [2560 x float]* nocapture %bgmodel, float %learningRate) {
  %learningRate_read = call float @_ssdm_op_Read.ap_auto.float(float %learningRate) ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %learningRate_read}, i64 0, metadata !12), !dbg !26 ; [debug line = 20:18] [debug variable = learningRate]
  call void @llvm.dbg.value(metadata !{[320 x i8]* %frame_in}, i64 0, metadata !27), !dbg !31 ; [debug line = 17:22] [debug variable = frame_in]
  call void @llvm.dbg.value(metadata !{[320 x i1]* %frame_out}, i64 0, metadata !32), !dbg !33 ; [debug line = 18:22] [debug variable = frame_out]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel}, i64 0, metadata !34), !dbg !38 ; [debug line = 19:11] [debug variable = bgmodel]
  call void @llvm.dbg.value(metadata !{float %learningRate}, i64 0, metadata !12), !dbg !26 ; [debug line = 20:18] [debug variable = learningRate]
  call void @llvm.dbg.value(metadata !{float %learningRate}, i64 0, metadata !39), !dbg !41 ; [debug line = 23:86] [debug variable = alpha]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel}, i64 0, metadata !42), !dbg !44 ; [debug line = 24:27] [debug variable = mptr]
  %learningRate_to_int = bitcast float %learningRate_read to i32 ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %learningRate_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_1 = trunc i32 %learningRate_to_int to i23  ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_1, 0                 ; [#uses=1 type=i1]
  %tmp_2 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_3 = fcmp ogt float %learningRate_read, 0.000000e+00, !dbg !45 ; [#uses=1 type=i1] [debug line = 33:9]
  %tmp_4 = and i1 %tmp_2, %tmp_3, !dbg !45        ; [#uses=1 type=i1] [debug line = 33:9]
  br label %1, !dbg !48                           ; [debug line = 28:10]

; <label>:1                                       ; preds = %.loopexit42, %0
  %mptr_0_rec = phi i12 [ 0, %0 ], [ %mptr_3_rec, %.loopexit42 ] ; [#uses=3 type=i12]
  %y = phi i1 [ false, %0 ], [ true, %.loopexit42 ] ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %y, label %22, label %2, !dbg !48         ; [debug line = 28:10]

; <label>:2                                       ; preds = %1
  br i1 %tmp_4, label %.preheader46, label %.preheader41, !dbg !45 ; [debug line = 33:9]

.preheader46:                                     ; preds = %15, %2
  %mptr_1_rec = phi i12 [ %p_rec1, %15 ], [ 0, %2 ] ; [#uses=2 type=i12]
  %x = phi i9 [ %x_3, %15 ], [ 0, %2 ]            ; [#uses=3 type=i9]
  %exitcond2 = icmp eq i9 %x, -192, !dbg !49      ; [#uses=1 type=i1] [debug line = 35:18]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_3 = add i9 %x, 1, !dbg !52                   ; [#uses=1 type=i9] [debug line = 35:35]
  br i1 %exitcond2, label %.loopexit42, label %3, !dbg !49 ; [debug line = 35:18]

; <label>:3                                       ; preds = %.preheader46
  %sum_cast = zext i9 %x to i64                   ; [#uses=2 type=i64]
  %frame_in_addr = getelementptr [320 x i8]* %frame_in, i64 0, i64 %sum_cast, !dbg !53 ; [#uses=1 type=i8*] [debug line = 38:33]
  %frame_in_load = load i8* %frame_in_addr, align 1, !dbg !53 ; [#uses=1 type=i8] [debug line = 38:33]
  %pix1 = zext i8 %frame_in_load to i32, !dbg !53 ; [#uses=1 type=i32] [debug line = 38:33]
  %pix = sitofp i32 %pix1 to float, !dbg !53      ; [#uses=2 type=float] [debug line = 38:33]
  call void @llvm.dbg.value(metadata !{float %pix}, i64 0, metadata !55), !dbg !53 ; [debug line = 38:33] [debug variable = pix]
  %mptr_1_sum = add i12 %mptr_0_rec, %mptr_1_rec, !dbg !56 ; [#uses=6 type=i12] [debug line = 43:40]
  %mptr_1_sum_cast = zext i12 %mptr_1_sum to i13, !dbg !56 ; [#uses=1 type=i13] [debug line = 43:40]
  br label %4, !dbg !59                           ; [debug line = 41:22]

; <label>:4                                       ; preds = %6, %3
  %k = phi i2 [ 0, %3 ], [ %k_2, %6 ]             ; [#uses=7 type=i2]
  %wsum = phi float [ 0.000000e+00, %3 ], [ %wsum_5, %6 ] ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{i2 %k}, i64 0, metadata !60), !dbg !62 ; [debug line = 41:65] [debug variable = k]
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1), !dbg !59 ; [#uses=1 type=i1] [debug line = 41:22]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_2 = add i2 %k, 1, !dbg !62                   ; [#uses=1 type=i2] [debug line = 41:65]
  call void @llvm.dbg.value(metadata !{i2 %k_2}, i64 0, metadata !60), !dbg !62 ; [debug line = 41:65] [debug variable = k]
  br i1 %tmp_6, label %.loopexit11, label %5, !dbg !59 ; [debug line = 41:22]

; <label>:5                                       ; preds = %4
  %tmp_12 = trunc i2 %k to i1                     ; [#uses=2 type=i1]
  %tmp_8 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_12, i2 0), !dbg !56 ; [#uses=3 type=i3] [debug line = 43:40]
  %tmp_5 = or i3 %tmp_8, 1                        ; [#uses=1 type=i3]
  %tmp_9 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_1_sum, i32 3, i32 11) ; [#uses=4 type=i9]
  %sum1 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_9, i3 %tmp_5) ; [#uses=1 type=i12]
  %sum1_cast = zext i12 %sum1 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum1_cast, !dbg !56 ; [#uses=2 type=float*] [debug line = 43:40]
  %w = load float* %bgmodel_addr, align 4, !dbg !56 ; [#uses=7 type=float] [debug line = 43:40]
  call void @llvm.dbg.value(metadata !{float %w}, i64 0, metadata !63), !dbg !56 ; [debug line = 43:40] [debug variable = w]
  %wsum_5 = fadd float %wsum, %w, !dbg !64        ; [#uses=3 type=float] [debug line = 44:21]
  call void @llvm.dbg.value(metadata !{float %wsum_5}, i64 0, metadata !65), !dbg !64 ; [debug line = 44:21] [debug variable = wsum]
  %w_to_int = bitcast float %w to i32             ; [#uses=2 type=i32]
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_26 = trunc i32 %w_to_int to i23            ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_11, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_26, 0               ; [#uses=1 type=i1]
  %tmp_13 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp_15 = fcmp olt float %w, 0x3E80000000000000, !dbg !66 ; [#uses=1 type=i1] [debug line = 45:21]
  %tmp_23 = and i1 %tmp_13, %tmp_15, !dbg !66     ; [#uses=1 type=i1] [debug line = 45:21]
  br i1 %tmp_23, label %.loopexit11, label %6, !dbg !66 ; [debug line = 45:21]

; <label>:6                                       ; preds = %5
  %tmp_39 = or i3 %tmp_8, 2                       ; [#uses=1 type=i3]
  %sum4 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_9, i3 %tmp_39) ; [#uses=1 type=i12]
  %sum4_cast = zext i12 %sum4 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_2 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum4_cast, !dbg !67 ; [#uses=2 type=float*] [debug line = 47:44]
  %mu = load float* %bgmodel_addr_2, align 4, !dbg !67 ; [#uses=2 type=float] [debug line = 47:44]
  call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !68), !dbg !67 ; [debug line = 47:44] [debug variable = mu]
  %tmp_40 = or i3 %tmp_8, 3                       ; [#uses=1 type=i3]
  %sum5 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_9, i3 %tmp_40) ; [#uses=1 type=i12]
  %sum5_cast = zext i12 %sum5 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_3 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum5_cast, !dbg !69 ; [#uses=2 type=float*] [debug line = 48:45]
  %var = load float* %bgmodel_addr_3, align 4, !dbg !69 ; [#uses=3 type=float] [debug line = 48:45]
  call void @llvm.dbg.value(metadata !{float %var}, i64 0, metadata !70), !dbg !69 ; [debug line = 48:45] [debug variable = var]
  %diff = fsub float %pix, %mu, !dbg !71          ; [#uses=3 type=float] [debug line = 49:43]
  call void @llvm.dbg.value(metadata !{float %diff}, i64 0, metadata !72), !dbg !71 ; [debug line = 49:43] [debug variable = diff]
  %d2 = fmul float %diff, %diff, !dbg !73         ; [#uses=3 type=float] [debug line = 50:42]
  call void @llvm.dbg.value(metadata !{float %d2}, i64 0, metadata !74), !dbg !73 ; [debug line = 50:42] [debug variable = d2]
  %tmp_10 = fmul float %var, 6.250000e+00, !dbg !75 ; [#uses=2 type=float] [debug line = 51:21]
  %d2_to_int = bitcast float %d2 to i32           ; [#uses=2 type=i32]
  %tmp_41 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_44 = trunc i32 %d2_to_int to i23           ; [#uses=1 type=i23]
  %tmp_10_to_int = bitcast float %tmp_10 to i32   ; [#uses=2 type=i32]
  %tmp_46 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_10_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_48 = trunc i32 %tmp_10_to_int to i23       ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp_41, -1               ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_44, 0               ; [#uses=1 type=i1]
  %tmp_51 = or i1 %notrhs3, %notlhs3              ; [#uses=1 type=i1]
  %notlhs4 = icmp ne i8 %tmp_46, -1               ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp_48, 0               ; [#uses=1 type=i1]
  %tmp_52 = or i1 %notrhs4, %notlhs4              ; [#uses=1 type=i1]
  %tmp_53 = and i1 %tmp_51, %tmp_52               ; [#uses=1 type=i1]
  %tmp_54 = fcmp olt float %d2, %tmp_10, !dbg !75 ; [#uses=1 type=i1] [debug line = 51:21]
  %tmp_55 = and i1 %tmp_53, %tmp_54, !dbg !75     ; [#uses=1 type=i1] [debug line = 51:21]
  br i1 %tmp_55, label %7, label %4, !dbg !75     ; [debug line = 51:21]

; <label>:7                                       ; preds = %6
  call void @llvm.dbg.value(metadata !{i2 %k}, i64 0, metadata !60), !dbg !62 ; [debug line = 41:65] [debug variable = k]
  %wsum_6 = fsub float %wsum_5, %w, !dbg !76      ; [#uses=2 type=float] [debug line = 53:25]
  call void @llvm.dbg.value(metadata !{float %wsum_6}, i64 0, metadata !65), !dbg !76 ; [debug line = 53:25] [debug variable = wsum]
  %tmp_16 = fsub float 1.000000e+00, %w, !dbg !78 ; [#uses=1 type=float] [debug line = 54:52]
  %dw = fmul float %tmp_16, %learningRate_read, !dbg !78 ; [#uses=1 type=float] [debug line = 54:52]
  call void @llvm.dbg.value(metadata !{float %dw}, i64 0, metadata !79), !dbg !78 ; [debug line = 54:52] [debug variable = dw]
  %tmp_17 = fadd float %w, %dw, !dbg !80          ; [#uses=1 type=float] [debug line = 55:25]
  store float %tmp_17, float* %bgmodel_addr, align 4, !dbg !80 ; [debug line = 55:25]
  %tmp_18 = fmul float %diff, %learningRate_read, !dbg !81 ; [#uses=1 type=float] [debug line = 56:25]
  %tmp_19 = fadd float %mu, %tmp_18, !dbg !81     ; [#uses=1 type=float] [debug line = 56:25]
  store float %tmp_19, float* %bgmodel_addr_2, align 4, !dbg !81 ; [debug line = 56:25]
  %tmp_20 = fsub float %d2, %var, !dbg !82        ; [#uses=1 type=float] [debug line = 57:31]
  %tmp_21 = fmul float %tmp_20, %learningRate_read, !dbg !82 ; [#uses=1 type=float] [debug line = 57:31]
  %tmp_22 = fadd float %var, %tmp_21, !dbg !82    ; [#uses=3 type=float] [debug line = 57:31]
  %tmp_22_to_int = bitcast float %tmp_22 to i32   ; [#uses=2 type=i32]
  %tmp_67 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_22_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_68 = trunc i32 %tmp_22_to_int to i23       ; [#uses=1 type=i23]
  %notlhs7 = icmp ne i8 %tmp_67, -1               ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp_68, 0               ; [#uses=1 type=i1]
  %tmp_69 = or i1 %notrhs7, %notlhs7              ; [#uses=1 type=i1]
  %tmp_70 = fcmp olt float %tmp_22, 2.250000e+02, !dbg !83 ; [#uses=1 type=i1] [debug line = 215:7@57:31]
  %tmp_71 = and i1 %tmp_69, %tmp_70, !dbg !83     ; [#uses=1 type=i1] [debug line = 215:7@57:31]
  %var_2 = select i1 %tmp_71, float 2.250000e+02, float %tmp_22, !dbg !82 ; [#uses=2 type=float] [debug line = 57:31]
  call void @llvm.dbg.value(metadata !{float %var_2}, i64 0, metadata !70), !dbg !82 ; [debug line = 57:31] [debug variable = var]
  store float %var_2, float* %bgmodel_addr_3, align 4, !dbg !94 ; [debug line = 58:25]
  call void @llvm.dbg.value(metadata !{float %var_2}, i64 0, metadata !95) nounwind, !dbg !102 ; [debug line = 415:14@59:39] [debug variable = __x]
  %tmp_i = call float @llvm.sqrt.f32(float %var_2) nounwind, !dbg !103 ; [#uses=1 type=float] [debug line = 416:12@59:39]
  %tmp_24 = fdiv float %w, %tmp_i, !dbg !101      ; [#uses=1 type=float] [debug line = 59:39]
  %sum8 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9 %tmp_9, i1 %tmp_12, i2 0) ; [#uses=1 type=i12]
  %sum8_cast = zext i12 %sum8 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_6 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum8_cast, !dbg !101 ; [#uses=1 type=float*] [debug line = 59:39]
  store float %tmp_24, float* %bgmodel_addr_6, align 4, !dbg !101 ; [debug line = 59:39]
  %sum = or i12 %mptr_1_sum, 1                    ; [#uses=1 type=i12]
  %sum11_cast = zext i12 %sum to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_9 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum11_cast, !dbg !105 ; [#uses=2 type=float*] [debug line = 64:2]
  br label %8, !dbg !108                          ; [debug line = 61:30]

; <label>:8                                       ; preds = %10, %7
  %kHit = phi i2 [ %k, %7 ], [ %k1, %10 ]         ; [#uses=3 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %kHit}, i64 0, metadata !109), !dbg !110 ; [debug line = 69:25] [debug variable = kHit]
  %k1 = add i2 -1, %kHit, !dbg !108               ; [#uses=2 type=i2] [debug line = 61:30]
  %tmp_73 = trunc i2 %k1 to i1, !dbg !108         ; [#uses=1 type=i1] [debug line = 61:30]
  call void @llvm.dbg.value(metadata !{i2 %k1}, i64 0, metadata !111), !dbg !108 ; [debug line = 61:30] [debug variable = k1]
  %tmp_25 = icmp eq i2 %kHit, 1, !dbg !108        ; [#uses=1 type=i1] [debug line = 61:30]
  br i1 %tmp_25, label %9, label %.loopexit11, !dbg !108 ; [debug line = 61:30]

; <label>:9                                       ; preds = %8
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1804), !dbg !112 ; [#uses=1 type=i32] [debug line = 62:26]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind, !dbg !113 ; [debug line = 63:1]
  %tmp_75 = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %mptr_1_sum, i32 1, i32 11) ; [#uses=1 type=i11]
  %sum2 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_75, i1 %tmp_73) ; [#uses=1 type=i12]
  %sum10_cast = zext i12 %sum2 to i64             ; [#uses=1 type=i64]
  %bgmodel_addr_8 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum10_cast, !dbg !105 ; [#uses=2 type=float*] [debug line = 64:2]
  %p_tmp = load float* %bgmodel_addr_8, align 4, !dbg !105 ; [#uses=3 type=float] [debug line = 64:2]
  %bgmodel_load_12 = load float* %bgmodel_addr_9, align 4, !dbg !105 ; [#uses=3 type=float] [debug line = 64:2]
  %p_a_read_assign_to_int = bitcast float %p_tmp to i32 ; [#uses=2 type=i32]
  %tmp_76 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_a_read_assign_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_77 = trunc i32 %p_a_read_assign_to_int to i23 ; [#uses=1 type=i23]
  %p_b_read_assign_to_int = bitcast float %bgmodel_load_12 to i32 ; [#uses=2 type=i32]
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_b_read_assign_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_82 = trunc i32 %p_b_read_assign_to_int to i23 ; [#uses=1 type=i23]
  %notlhs9 = icmp ne i8 %tmp_76, -1               ; [#uses=1 type=i1]
  %notrhs8 = icmp eq i23 %tmp_77, 0               ; [#uses=1 type=i1]
  %tmp_86 = or i1 %notrhs8, %notlhs9              ; [#uses=1 type=i1]
  %notlhs10 = icmp ne i8 %tmp_78, -1              ; [#uses=1 type=i1]
  %notrhs10 = icmp eq i23 %tmp_82, 0              ; [#uses=1 type=i1]
  %tmp_87 = or i1 %notrhs10, %notlhs10            ; [#uses=1 type=i1]
  %tmp_88 = and i1 %tmp_86, %tmp_87               ; [#uses=1 type=i1]
  %tmp_89 = fcmp oge float %p_tmp, %bgmodel_load_12, !dbg !105 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp_90 = and i1 %tmp_88, %tmp_89, !dbg !105    ; [#uses=1 type=i1] [debug line = 64:2]
  br i1 %tmp_90, label %.loopexit11, label %10, !dbg !105 ; [debug line = 64:2]

; <label>:10                                      ; preds = %9
  call void @llvm.dbg.value(metadata !{float %p_tmp}, i64 0, metadata !114), !dbg !122 ; [debug line = 122:15@66:29] [debug variable = __a]
  call void @llvm.dbg.value(metadata !{float %bgmodel_load_12}, i64 0, metadata !123), !dbg !124 ; [debug line = 122:25@66:29] [debug variable = __b]
  call void @llvm.dbg.value(metadata !{float %p_tmp}, i64 0, metadata !125), !dbg !127 ; [debug line = 127:24@66:29] [debug variable = __tmp]
  call void @llvm.dbg.value(metadata !{float %bgmodel_load_12}, i64 0, metadata !128), !dbg !122 ; [debug line = 122:15@66:29] [debug variable = __a]
  call void @llvm.dbg.value(metadata !{float %p_tmp}, i64 0, metadata !129), !dbg !124 ; [debug line = 122:25@66:29] [debug variable = __b]
  store float %bgmodel_load_12, float* %bgmodel_addr_8, align 4, !dbg !121 ; [debug line = 66:29]
  store float %p_tmp, float* %bgmodel_addr_9, align 4, !dbg !121 ; [debug line = 66:29]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1804, i32 %tmp_27), !dbg !130 ; [#uses=0 type=i32] [debug line = 67:25]
  br label %8, !dbg !131                          ; [debug line = 61:49]

.loopexit11:                                      ; preds = %9, %8, %5, %4
  %wsum_1 = phi float [ %wsum_6, %8 ], [ %wsum_6, %9 ], [ %wsum_5, %5 ], [ %wsum, %4 ] ; [#uses=2 type=float]
  %kHit1 = phi i2 [ 1, %9 ], [ %kHit, %8 ], [ -1, %4 ], [ -1, %5 ] ; [#uses=2 type=i2]
  %k_cast4 = zext i2 %k to i32, !dbg !62          ; [#uses=1 type=i32] [debug line = 41:65]
  %tmp_91 = trunc i2 %k to i1, !dbg !62           ; [#uses=1 type=i1] [debug line = 41:65]
  %tmp_92 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit1, i32 1), !dbg !132 ; [#uses=1 type=i1] [debug line = 74:17]
  br i1 %tmp_92, label %11, label %.preheader43, !dbg !132 ; [debug line = 74:17]

; <label>:11                                      ; preds = %.loopexit11
  %tmp_95 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1), !dbg !133 ; [#uses=1 type=i1] [debug line = 192:7@76:32]
  %k_10 = or i1 %tmp_95, %tmp_91, !dbg !142       ; [#uses=3 type=i1] [debug line = 76:32]
  %k_10_cast1 = zext i1 %k_10 to i2, !dbg !142    ; [#uses=1 type=i2] [debug line = 76:32]
  call void @llvm.dbg.value(metadata !{i1 %k_10}, i64 0, metadata !60), !dbg !142 ; [debug line = 76:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i1 %k_10}, i64 0, metadata !109), !dbg !142 ; [debug line = 76:32] [debug variable = kHit]
  %tmp_32 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %k_10, i2 0), !dbg !144 ; [#uses=3 type=i3] [debug line = 77:21]
  %tmp_96 = or i3 %tmp_32, 1                      ; [#uses=1 type=i3]
  %tmp_97 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_1_sum, i32 3, i32 11) ; [#uses=4 type=i9]
  %sum10 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_97, i3 %tmp_96) ; [#uses=1 type=i12]
  %sum12_cast = zext i12 %sum10 to i64            ; [#uses=1 type=i64]
  %bgmodel_addr_10 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum12_cast, !dbg !144 ; [#uses=2 type=float*] [debug line = 77:21]
  %bgmodel_load_7 = load float* %bgmodel_addr_10, align 4, !dbg !144 ; [#uses=1 type=float] [debug line = 77:21]
  %tmp_34 = fsub float 0x3FA99999A0000000, %bgmodel_load_7, !dbg !144 ; [#uses=1 type=float] [debug line = 77:21]
  %wsum_7 = fadd float %wsum_1, %tmp_34, !dbg !144 ; [#uses=1 type=float] [debug line = 77:21]
  call void @llvm.dbg.value(metadata !{float %wsum_7}, i64 0, metadata !65), !dbg !144 ; [debug line = 77:21] [debug variable = wsum]
  store float 0x3FA99999A0000000, float* %bgmodel_addr_10, align 4, !dbg !145 ; [debug line = 78:21]
  %tmp_98 = or i3 %tmp_32, 2                      ; [#uses=1 type=i3]
  %sum11 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_97, i3 %tmp_98) ; [#uses=1 type=i12]
  %sum13_cast = zext i12 %sum11 to i64            ; [#uses=1 type=i64]
  %bgmodel_addr_11 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum13_cast, !dbg !146 ; [#uses=1 type=float*] [debug line = 79:21]
  store float %pix, float* %bgmodel_addr_11, align 4, !dbg !146 ; [debug line = 79:21]
  %tmp_99 = or i3 %tmp_32, 3                      ; [#uses=1 type=i3]
  %sum12 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_97, i3 %tmp_99) ; [#uses=1 type=i12]
  %sum14_cast = zext i12 %sum12 to i64            ; [#uses=1 type=i64]
  %bgmodel_addr_12 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum14_cast, !dbg !147 ; [#uses=1 type=float*] [debug line = 80:21]
  store float 9.000000e+02, float* %bgmodel_addr_12, align 4, !dbg !147 ; [debug line = 80:21]
  %sum13 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9 %tmp_97, i1 %k_10, i2 0) ; [#uses=1 type=i12]
  %sum15_cast = zext i12 %sum13 to i64            ; [#uses=1 type=i64]
  %bgmodel_addr_13 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum15_cast, !dbg !148 ; [#uses=1 type=float*] [debug line = 81:21]
  store float 0x3F5B4E81C0000000, float* %bgmodel_addr_13, align 4, !dbg !148 ; [debug line = 81:21]
  br label %.loopexit44, !dbg !149                ; [debug line = 82:17]

.preheader43:                                     ; preds = %12, %.loopexit11
  %k_1 = phi i32 [ %k_8, %12 ], [ %k_cast4, %.loopexit11 ] ; [#uses=3 type=i32]
  %wsum_2 = phi float [ %wsum_9, %12 ], [ %wsum_1, %.loopexit11 ] ; [#uses=2 type=float]
  %exitcond4 = icmp eq i32 %k_1, 2, !dbg !150     ; [#uses=1 type=i1] [debug line = 85:18]
  br i1 %exitcond4, label %.loopexit44, label %12, !dbg !150 ; [debug line = 85:18]

; <label>:12                                      ; preds = %.preheader43
  %tmp_43 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1806), !dbg !153 ; [#uses=1 type=i32] [debug line = 86:19]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 2, i32 2, [1 x i8]* @p_str1805) nounwind, !dbg !155 ; [debug line = 87:1]
  %tmp_103 = trunc i32 %k_1 to i11                ; [#uses=1 type=i11]
  %tmp_45 = call i13 @_ssdm_op_BitConcatenate.i13.i11.i2(i11 %tmp_103, i2 0), !dbg !156 ; [#uses=1 type=i13] [debug line = 88:2]
  %tmp_64_cast = or i13 %tmp_45, 1, !dbg !156     ; [#uses=1 type=i13] [debug line = 88:2]
  %sum14 = add i13 %mptr_1_sum_cast, %tmp_64_cast ; [#uses=1 type=i13]
  %sum16_cast = zext i13 %sum14 to i64            ; [#uses=1 type=i64]
  %bgmodel_addr_14 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum16_cast, !dbg !156 ; [#uses=1 type=float*] [debug line = 88:2]
  %bgmodel_load_9 = load float* %bgmodel_addr_14, align 4, !dbg !156 ; [#uses=1 type=float] [debug line = 88:2]
  %wsum_9 = fadd float %wsum_2, %bgmodel_load_9, !dbg !156 ; [#uses=1 type=float] [debug line = 88:2]
  call void @llvm.dbg.value(metadata !{float %wsum_9}, i64 0, metadata !65), !dbg !156 ; [debug line = 88:2] [debug variable = wsum]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1806, i32 %tmp_43), !dbg !157 ; [#uses=0 type=i32] [debug line = 89:18]
  %k_8 = add nsw i32 1, %k_1, !dbg !158           ; [#uses=1 type=i32] [debug line = 85:61]
  call void @llvm.dbg.value(metadata !{i32 %k_8}, i64 0, metadata !60), !dbg !158 ; [debug line = 85:61] [debug variable = k]
  br label %.preheader43, !dbg !158               ; [debug line = 85:61]

.loopexit44:                                      ; preds = %.preheader43, %11
  %wsum_3 = phi float [ %wsum_7, %11 ], [ %wsum_2, %.preheader43 ] ; [#uses=1 type=float]
  %kHit_1 = phi i2 [ %k_10_cast1, %11 ], [ %kHit1, %.preheader43 ] ; [#uses=1 type=i2]
  %kHit_1_cast = sext i2 %kHit_1 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 93:41]
  %wscale = fdiv float 1.000000e+00, %wsum_3, !dbg !159 ; [#uses=2 type=float] [debug line = 93:41]
  call void @llvm.dbg.value(metadata !{float %wscale}, i64 0, metadata !160), !dbg !159 ; [debug line = 93:41] [debug variable = wscale]
  br label %13, !dbg !161                         ; [debug line = 95:22]

; <label>:13                                      ; preds = %14, %.loopexit44
  %k_9 = phi i2 [ 0, %.loopexit44 ], [ %kForeground_1, %14 ] ; [#uses=3 type=i2]
  %wsum_4 = phi float [ 0.000000e+00, %.loopexit44 ], [ %wsum_10, %14 ] ; [#uses=1 type=float]
  %kForeground1 = phi i32 [ -1, %.loopexit44 ], [ %p_kForeground, %14 ] ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i2 %k_9}, i64 0, metadata !60), !dbg !163 ; [debug line = 95:65] [debug variable = k]
  %exitcond3 = icmp eq i2 %k_9, -2, !dbg !161     ; [#uses=1 type=i1] [debug line = 95:22]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %kForeground_1 = add i2 %k_9, 1, !dbg !164      ; [#uses=2 type=i2] [debug line = 100:25]
  br i1 %exitcond3, label %15, label %14, !dbg !161 ; [debug line = 95:22]

; <label>:14                                      ; preds = %13
  %tmp_108 = trunc i2 %k_9 to i1                  ; [#uses=2 type=i1]
  %tmp_47 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_108, i2 0), !dbg !166 ; [#uses=1 type=i3] [debug line = 97:21]
  %tmp_100 = or i3 %tmp_47, 1                     ; [#uses=1 type=i3]
  %tmp_101 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_1_sum, i32 3, i32 11) ; [#uses=2 type=i9]
  %sum15 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_101, i3 %tmp_100) ; [#uses=1 type=i12]
  %sum17_cast = zext i12 %sum15 to i64            ; [#uses=1 type=i64]
  %bgmodel_addr_15 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum17_cast, !dbg !166 ; [#uses=2 type=float*] [debug line = 97:21]
  %bgmodel_load_10 = load float* %bgmodel_addr_15, align 4, !dbg !166 ; [#uses=1 type=float] [debug line = 97:21]
  %tmp_49 = fmul float %bgmodel_load_10, %wscale, !dbg !166 ; [#uses=2 type=float] [debug line = 97:21]
  store float %tmp_49, float* %bgmodel_addr_15, align 4, !dbg !166 ; [debug line = 97:21]
  %wsum_10 = fadd float %wsum_4, %tmp_49, !dbg !166 ; [#uses=3 type=float] [debug line = 97:21]
  call void @llvm.dbg.value(metadata !{float %wsum_10}, i64 0, metadata !65), !dbg !166 ; [debug line = 97:21] [debug variable = wsum]
  %sum16 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9 %tmp_101, i1 %tmp_108, i2 0) ; [#uses=1 type=i12]
  %sum18_cast = zext i12 %sum16 to i64            ; [#uses=1 type=i64]
  %bgmodel_addr_16 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum18_cast, !dbg !167 ; [#uses=2 type=float*] [debug line = 98:21]
  %bgmodel_load_11 = load float* %bgmodel_addr_16, align 4, !dbg !167 ; [#uses=1 type=float] [debug line = 98:21]
  %tmp_50 = fmul float %bgmodel_load_11, %wscale, !dbg !167 ; [#uses=1 type=float] [debug line = 98:21]
  store float %tmp_50, float* %bgmodel_addr_16, align 4, !dbg !167 ; [debug line = 98:21]
  %wsum_10_to_int = bitcast float %wsum_10 to i32 ; [#uses=2 type=i32]
  %tmp_102 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_10_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_109 = trunc i32 %wsum_10_to_int to i23     ; [#uses=1 type=i23]
  %notlhs11 = icmp ne i8 %tmp_102, -1             ; [#uses=1 type=i1]
  %notrhs11 = icmp eq i23 %tmp_109, 0             ; [#uses=1 type=i1]
  %tmp_104 = or i1 %notrhs11, %notlhs11           ; [#uses=1 type=i1]
  %tmp_105 = fcmp ogt float %wsum_10, 0x3FE6666660000000, !dbg !168 ; [#uses=1 type=i1] [debug line = 99:21]
  %tmp_106 = and i1 %tmp_104, %tmp_105, !dbg !168 ; [#uses=1 type=i1] [debug line = 99:21]
  %tmp_110 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %kForeground1, i32 31), !dbg !168 ; [#uses=1 type=i1] [debug line = 99:21]
  %or_cond = and i1 %tmp_106, %tmp_110, !dbg !168 ; [#uses=1 type=i1] [debug line = 99:21]
  %kForeground_1_cast = zext i2 %kForeground_1 to i32, !dbg !164 ; [#uses=1 type=i32] [debug line = 100:25]
  call void @llvm.dbg.value(metadata !{i2 %kForeground_1}, i64 0, metadata !169), !dbg !164 ; [debug line = 100:25] [debug variable = kForeground]
  %p_kForeground = select i1 %or_cond, i32 %kForeground_1_cast, i32 %kForeground1, !dbg !168 ; [#uses=1 type=i32] [debug line = 99:21]
  br label %13, !dbg !163                         ; [debug line = 95:65]

; <label>:15                                      ; preds = %13
  %slt = icmp slt i32 %kHit_1_cast, %kForeground1, !dbg !170 ; [#uses=1 type=i1] [debug line = 103:17]
  %rev = xor i1 %slt, true, !dbg !170             ; [#uses=1 type=i1] [debug line = 103:17]
  %frame_out_addr_1 = getelementptr [320 x i1]* %frame_out, i64 0, i64 %sum_cast, !dbg !170 ; [#uses=1 type=i1*] [debug line = 103:17]
  store i1 %rev, i1* %frame_out_addr_1, align 1, !dbg !170 ; [debug line = 103:17]
  call void @llvm.dbg.value(metadata !{i9 %x_3}, i64 0, metadata !171), !dbg !52 ; [debug line = 35:35] [debug variable = x]
  %p_rec1 = add i12 %mptr_1_rec, 8, !dbg !52      ; [#uses=1 type=i12] [debug line = 35:35]
  br label %.preheader46, !dbg !52                ; [debug line = 35:35]

.preheader41:                                     ; preds = %.loopexit, %2
  %mptr_2_rec = phi i12 [ %p_rec, %.loopexit ], [ 0, %2 ] ; [#uses=2 type=i12]
  %x_1 = phi i9 [ %x_2, %.loopexit ], [ 0, %2 ]   ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %x_1, -192, !dbg !172    ; [#uses=1 type=i1] [debug line = 108:18]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_2 = add i9 %x_1, 1, !dbg !175                ; [#uses=1 type=i9] [debug line = 108:35]
  br i1 %exitcond, label %.loopexit42, label %16, !dbg !172 ; [debug line = 108:18]

; <label>:16                                      ; preds = %.preheader41
  %sum2_cast = zext i9 %x_1 to i64                ; [#uses=2 type=i64]
  %frame_in_addr_1 = getelementptr [320 x i8]* %frame_in, i64 0, i64 %sum2_cast, !dbg !176 ; [#uses=1 type=i8*] [debug line = 110:33]
  %frame_in_load_1 = load i8* %frame_in_addr_1, align 1, !dbg !176 ; [#uses=1 type=i8] [debug line = 110:33]
  %pix_s = zext i8 %frame_in_load_1 to i32, !dbg !176 ; [#uses=1 type=i32] [debug line = 110:33]
  %pix_1 = sitofp i32 %pix_s to float, !dbg !176  ; [#uses=1 type=float] [debug line = 110:33]
  call void @llvm.dbg.value(metadata !{float %pix_1}, i64 0, metadata !178), !dbg !176 ; [debug line = 110:33] [debug variable = pix]
  %mptr_2_sum = add i12 %mptr_0_rec, %mptr_2_rec, !dbg !179 ; [#uses=2 type=i12] [debug line = 115:21]
  br label %17, !dbg !182                         ; [debug line = 113:22]

; <label>:17                                      ; preds = %19, %16
  %kHit_4 = phi i2 [ 0, %16 ], [ %k_4, %19 ]      ; [#uses=4 type=i2]
  %kHit_4_cast = zext i2 %kHit_4 to i3, !dbg !183 ; [#uses=1 type=i3] [debug line = 123:25]
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !185), !dbg !183 ; [debug line = 123:25] [debug variable = kHit]
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !60), !dbg !186 ; [debug line = 113:65] [debug variable = k]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit_4, i32 1), !dbg !182 ; [#uses=1 type=i1] [debug line = 113:22]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_4 = add i2 %kHit_4, 1, !dbg !186             ; [#uses=1 type=i2] [debug line = 113:65]
  call void @llvm.dbg.value(metadata !{i2 %k_4}, i64 0, metadata !60), !dbg !186 ; [debug line = 113:65] [debug variable = k]
  br i1 %tmp_7, label %.loopexit7.loopexit, label %18, !dbg !182 ; [debug line = 113:22]

; <label>:18                                      ; preds = %17
  %tmp_29 = trunc i2 %kHit_4 to i1                ; [#uses=1 type=i1]
  %tmp_s = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_29, i2 0), !dbg !179 ; [#uses=3 type=i3] [debug line = 115:21]
  %tmp_28 = or i3 %tmp_s, 1                       ; [#uses=1 type=i3]
  %tmp_30 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_2_sum, i32 3, i32 11) ; [#uses=3 type=i9]
  %sum3 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_30, i3 %tmp_28) ; [#uses=1 type=i12]
  %sum3_cast = zext i12 %sum3 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_1 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum3_cast, !dbg !179 ; [#uses=1 type=float*] [debug line = 115:21]
  %bgmodel_load = load float* %bgmodel_addr_1, align 4, !dbg !179 ; [#uses=2 type=float] [debug line = 115:21]
  %bgmodel_load_to_int = bitcast float %bgmodel_load to i32 ; [#uses=2 type=i32]
  %tmp_31 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bgmodel_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_33 = trunc i32 %bgmodel_load_to_int to i23 ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp_31, -1               ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_33, 0               ; [#uses=1 type=i1]
  %tmp_35 = or i1 %notrhs2, %notlhs2              ; [#uses=1 type=i1]
  %tmp_36 = fcmp olt float %bgmodel_load, 0x3E80000000000000, !dbg !179 ; [#uses=1 type=i1] [debug line = 115:21]
  %tmp_38 = and i1 %tmp_35, %tmp_36, !dbg !179    ; [#uses=1 type=i1] [debug line = 115:21]
  br i1 %tmp_38, label %.loopexit7.loopexit, label %19, !dbg !179 ; [debug line = 115:21]

; <label>:19                                      ; preds = %18
  %tmp_56 = or i3 %tmp_s, 2                       ; [#uses=1 type=i3]
  %sum6 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_30, i3 %tmp_56) ; [#uses=1 type=i12]
  %sum6_cast = zext i12 %sum6 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_4 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum6_cast, !dbg !187 ; [#uses=1 type=float*] [debug line = 117:44]
  %mu_1 = load float* %bgmodel_addr_4, align 4, !dbg !187 ; [#uses=1 type=float] [debug line = 117:44]
  call void @llvm.dbg.value(metadata !{float %mu_1}, i64 0, metadata !188), !dbg !187 ; [debug line = 117:44] [debug variable = mu]
  %tmp_57 = or i3 %tmp_s, 3                       ; [#uses=1 type=i3]
  %sum7 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_30, i3 %tmp_57) ; [#uses=1 type=i12]
  %sum7_cast = zext i12 %sum7 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_5 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum7_cast, !dbg !189 ; [#uses=1 type=float*] [debug line = 118:45]
  %var_1 = load float* %bgmodel_addr_5, align 4, !dbg !189 ; [#uses=1 type=float] [debug line = 118:45]
  call void @llvm.dbg.value(metadata !{float %var_1}, i64 0, metadata !190), !dbg !189 ; [debug line = 118:45] [debug variable = var]
  %diff_1 = fsub float %pix_1, %mu_1, !dbg !191   ; [#uses=2 type=float] [debug line = 119:43]
  call void @llvm.dbg.value(metadata !{float %diff_1}, i64 0, metadata !192), !dbg !191 ; [debug line = 119:43] [debug variable = diff]
  %d2_1 = fmul float %diff_1, %diff_1, !dbg !193  ; [#uses=2 type=float] [debug line = 120:42]
  call void @llvm.dbg.value(metadata !{float %d2_1}, i64 0, metadata !194), !dbg !193 ; [debug line = 120:42] [debug variable = d2]
  %tmp_14 = fmul float %var_1, 6.250000e+00, !dbg !195 ; [#uses=2 type=float] [debug line = 121:21]
  %d2_1_to_int = bitcast float %d2_1 to i32       ; [#uses=2 type=i32]
  %tmp_58 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_59 = trunc i32 %d2_1_to_int to i23         ; [#uses=1 type=i23]
  %tmp_14_to_int = bitcast float %tmp_14 to i32   ; [#uses=2 type=i32]
  %tmp_60 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_14_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_61 = trunc i32 %tmp_14_to_int to i23       ; [#uses=1 type=i23]
  %notlhs5 = icmp ne i8 %tmp_58, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp_59, 0               ; [#uses=1 type=i1]
  %tmp_62 = or i1 %notrhs5, %notlhs5              ; [#uses=1 type=i1]
  %notlhs6 = icmp ne i8 %tmp_60, -1               ; [#uses=1 type=i1]
  %notrhs6 = icmp eq i23 %tmp_61, 0               ; [#uses=1 type=i1]
  %tmp_63 = or i1 %notrhs6, %notlhs6              ; [#uses=1 type=i1]
  %tmp_64 = and i1 %tmp_62, %tmp_63               ; [#uses=1 type=i1]
  %tmp_65 = fcmp olt float %d2_1, %tmp_14, !dbg !195 ; [#uses=1 type=i1] [debug line = 121:21]
  %tmp_66 = and i1 %tmp_64, %tmp_65, !dbg !195    ; [#uses=1 type=i1] [debug line = 121:21]
  br i1 %tmp_66, label %.loopexit7, label %17, !dbg !195 ; [debug line = 121:21]

.loopexit7.loopexit:                              ; preds = %18, %17
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !60), !dbg !186 ; [debug line = 113:65] [debug variable = k]
  br label %.loopexit7

.loopexit7:                                       ; preds = %.loopexit7.loopexit, %19
  %kHit2 = phi i3 [ -1, %.loopexit7.loopexit ], [ %kHit_4_cast, %19 ] ; [#uses=3 type=i3]
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !60), !dbg !186 ; [debug line = 113:65] [debug variable = k]
  %tmp_72 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %kHit2, i32 2), !dbg !196 ; [#uses=1 type=i1] [debug line = 128:17]
  br i1 %tmp_72, label %.loopexit, label %.preheader, !dbg !196 ; [debug line = 128:17]

.preheader:                                       ; preds = %20, %.loopexit7
  %k_5 = phi i2 [ %k_11, %20 ], [ 0, %.loopexit7 ] ; [#uses=3 type=i2]
  %wsum8 = phi float [ %wsum_8, %20 ], [ 0.000000e+00, %.loopexit7 ] ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{i2 %k_5}, i64 0, metadata !60), !dbg !197 ; [debug line = 131:69] [debug variable = k]
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k_5, i32 1), !dbg !200 ; [#uses=1 type=i1] [debug line = 131:26]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_11 = add i2 %k_5, 1, !dbg !197               ; [#uses=2 type=i2] [debug line = 131:69]
  call void @llvm.dbg.value(metadata !{i2 %k_11}, i64 0, metadata !60), !dbg !197 ; [debug line = 131:69] [debug variable = k]
  br i1 %tmp_74, label %.loopexit, label %20, !dbg !200 ; [debug line = 131:26]

; <label>:20                                      ; preds = %.preheader
  %tmp_93 = trunc i2 %k_5 to i1                   ; [#uses=1 type=i1]
  %tmp_37 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_93, i2 0), !dbg !201 ; [#uses=1 type=i3] [debug line = 133:25]
  %tmp_79 = or i3 %tmp_37, 1                      ; [#uses=1 type=i3]
  %tmp_80 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_2_sum, i32 3, i32 11) ; [#uses=1 type=i9]
  %sum9 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_80, i3 %tmp_79) ; [#uses=1 type=i12]
  %sum9_cast = zext i12 %sum9 to i64              ; [#uses=1 type=i64]
  %bgmodel_addr_7 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum9_cast, !dbg !201 ; [#uses=1 type=float*] [debug line = 133:25]
  %bgmodel_load_6 = load float* %bgmodel_addr_7, align 4, !dbg !201 ; [#uses=1 type=float] [debug line = 133:25]
  %wsum_8 = fadd float %wsum8, %bgmodel_load_6, !dbg !201 ; [#uses=3 type=float] [debug line = 133:25]
  call void @llvm.dbg.value(metadata !{float %wsum_8}, i64 0, metadata !203), !dbg !201 ; [debug line = 133:25] [debug variable = wsum]
  %wsum_8_to_int = bitcast float %wsum_8 to i32   ; [#uses=2 type=i32]
  %tmp_81 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_8_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_94 = trunc i32 %wsum_8_to_int to i23       ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp_81, -1               ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp_94, 0               ; [#uses=1 type=i1]
  %tmp_83 = or i1 %notrhs9, %notlhs8              ; [#uses=1 type=i1]
  %tmp_84 = fcmp ogt float %wsum_8, 0x3FE6666660000000, !dbg !204 ; [#uses=1 type=i1] [debug line = 134:25]
  %tmp_85 = and i1 %tmp_83, %tmp_84, !dbg !204    ; [#uses=1 type=i1] [debug line = 134:25]
  br i1 %tmp_85, label %21, label %.preheader, !dbg !204 ; [debug line = 134:25]

; <label>:21                                      ; preds = %20
  call void @llvm.dbg.value(metadata !{i2 %k_5}, i64 0, metadata !60), !dbg !197 ; [debug line = 131:69] [debug variable = k]
  %kForeground_cast = zext i2 %k_11 to i3, !dbg !205 ; [#uses=1 type=i3] [debug line = 136:29]
  call void @llvm.dbg.value(metadata !{i2 %k_11}, i64 0, metadata !207), !dbg !205 ; [debug line = 136:29] [debug variable = kForeground]
  br label %.loopexit, !dbg !208                  ; [debug line = 137:29]

.loopexit:                                        ; preds = %21, %.preheader, %.loopexit7
  %kForeground3_1 = phi i3 [ %kForeground_cast, %21 ], [ -1, %.loopexit7 ], [ -1, %.preheader ] ; [#uses=1 type=i3]
  %tmp_107 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %kHit2, i32 2), !dbg !209 ; [#uses=1 type=i1] [debug line = 142:17]
  %slt1 = icmp slt i3 %kHit2, %kForeground3_1, !dbg !209 ; [#uses=1 type=i1] [debug line = 142:17]
  %rev1 = xor i1 %slt1, true, !dbg !209           ; [#uses=1 type=i1] [debug line = 142:17]
  %tmp_42 = or i1 %tmp_107, %rev1, !dbg !209      ; [#uses=1 type=i1] [debug line = 142:17]
  %frame_out_addr = getelementptr [320 x i1]* %frame_out, i64 0, i64 %sum2_cast, !dbg !209 ; [#uses=1 type=i1*] [debug line = 142:17]
  store i1 %tmp_42, i1* %frame_out_addr, align 1, !dbg !209 ; [debug line = 142:17]
  call void @llvm.dbg.value(metadata !{i9 %x_2}, i64 0, metadata !171), !dbg !175 ; [debug line = 108:35] [debug variable = x]
  %p_rec = add i12 %mptr_2_rec, 8, !dbg !175      ; [#uses=1 type=i12] [debug line = 108:35]
  br label %.preheader41, !dbg !175               ; [debug line = 108:35]

.loopexit42:                                      ; preds = %.preheader41, %.preheader46
  %mptr_3_rec = add i12 %mptr_0_rec, -1536        ; [#uses=1 type=i12]
  br label %1, !dbg !210                          ; [debug line = 28:27]

; <label>:22                                      ; preds = %1
  ret void, !dbg !211                             ; [debug line = 146:1]
}

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

; [#uses=64]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @bgsub(i8* %gmem, float* %gmem_offset, i32 %frame_in, i32 %frame_out, i1 %init, i32 %bgmodel) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset), !map !212
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !218
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1805) nounwind, !dbg !225 ; [debug line = 153:1]
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !231
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @bgsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %bgmodel, [10 x i8]* @mode7, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @bundle8, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 1, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind, !dbg !237 ; [debug line = 155:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle6, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  %bgmodel_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_read}, i64 0, metadata !238), !dbg !242 ; [debug line = 151:12] [debug variable = bgmodel]
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %init_read}, i64 0, metadata !243), !dbg !244 ; [debug line = 150:11] [debug variable = init]
  %frame_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_out) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_out_read}, i64 0, metadata !245), !dbg !249 ; [debug line = 149:20] [debug variable = frame_out]
  %frame_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_in) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_in_read}, i64 0, metadata !250), !dbg !251 ; [debug line = 148:20] [debug variable = frame_in]
  call void @llvm.dbg.value(metadata !{i32 %frame_in}, i64 0, metadata !250), !dbg !251 ; [debug line = 148:20] [debug variable = frame_in]
  call void @llvm.dbg.value(metadata !{i32 %frame_out}, i64 0, metadata !245), !dbg !249 ; [debug line = 149:20] [debug variable = frame_out]
  call void @llvm.dbg.value(metadata !{i1 %init}, i64 0, metadata !243), !dbg !244 ; [debug line = 150:11] [debug variable = init]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel}, i64 0, metadata !238), !dbg !242 ; [debug line = 151:12] [debug variable = bgmodel]
  call fastcc void @bgsub_Block__proc(i1 %init_read, float* %gmem_offset, i32 %bgmodel_read, i8* %gmem, i32 %frame_out_read, i32 %frame_in_read)
  ret void, !dbg !252                             ; [debug line = 219:1]
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

; [#uses=3]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=3]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=12]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

; [#uses=19]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

; [#uses=9]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=2]
define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=2]
define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=5]
define weak i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; [#uses=1 type=i12]
  %empty_8 = trunc i12 %empty to i9               ; [#uses=1 type=i9]
  ret i9 %empty_8
}

; [#uses=12]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_9 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_9
}

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_10 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_10
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; [#uses=1 type=i12]
  %empty_11 = trunc i12 %empty to i11             ; [#uses=1 type=i11]
  ret i11 %empty_11
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_12 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_13 = icmp ne i32 %empty_12, 0            ; [#uses=1 type=i1]
  ret i1 %empty_13
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3                     ; [#uses=1 type=i3]
  %empty_14 = shl i3 1, %empty                    ; [#uses=1 type=i3]
  %empty_15 = and i3 %0, %empty_14                ; [#uses=1 type=i3]
  %empty_16 = icmp ne i3 %empty_15, 0             ; [#uses=1 type=i1]
  ret i1 %empty_16
}

; [#uses=5]
define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2                     ; [#uses=1 type=i2]
  %empty_17 = shl i2 1, %empty                    ; [#uses=1 type=i2]
  %empty_18 = and i2 %0, %empty_17                ; [#uses=1 type=i2]
  %empty_19 = icmp ne i2 %empty_18, 0             ; [#uses=1 type=i1]
  ret i1 %empty_19
}

; [#uses=5]
define weak i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1, i2) nounwind readnone {
entry:
  %empty = zext i1 %0 to i3                       ; [#uses=1 type=i3]
  %empty_20 = zext i2 %1 to i3                    ; [#uses=1 type=i3]
  %empty_21 = shl i3 %empty, 2                    ; [#uses=1 type=i3]
  %empty_22 = or i3 %empty_21, %empty_20          ; [#uses=1 type=i3]
  ret i3 %empty_22
}

; [#uses=2]
define weak i18 @_ssdm_op_BitConcatenate.i18.i7.i11(i7, i11) nounwind readnone {
entry:
  %empty = zext i7 %0 to i18                      ; [#uses=1 type=i18]
  %empty_23 = zext i11 %1 to i18                  ; [#uses=1 type=i18]
  %empty_24 = shl i18 %empty, 11                  ; [#uses=1 type=i18]
  %empty_25 = or i18 %empty_24, %empty_23         ; [#uses=1 type=i18]
  ret i18 %empty_25
}

; [#uses=2]
define weak i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7, i9) nounwind readnone {
entry:
  %empty = zext i7 %0 to i16                      ; [#uses=1 type=i16]
  %empty_26 = zext i9 %1 to i16                   ; [#uses=1 type=i16]
  %empty_27 = shl i16 %empty, 9                   ; [#uses=1 type=i16]
  %empty_28 = or i16 %empty_27, %empty_26         ; [#uses=1 type=i16]
  ret i16 %empty_28
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i7.i8(i7, i8) nounwind readnone {
entry:
  %empty = zext i7 %0 to i15                      ; [#uses=1 type=i15]
  %empty_29 = zext i8 %1 to i15                   ; [#uses=1 type=i15]
  %empty_30 = shl i15 %empty, 8                   ; [#uses=1 type=i15]
  %empty_31 = or i15 %empty_30, %empty_29         ; [#uses=1 type=i15]
  ret i15 %empty_31
}

; [#uses=2]
define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13                      ; [#uses=1 type=i13]
  %empty_32 = zext i6 %1 to i13                   ; [#uses=1 type=i13]
  %empty_33 = shl i13 %empty, 6                   ; [#uses=1 type=i13]
  %empty_34 = or i13 %empty_33, %empty_32         ; [#uses=1 type=i13]
  ret i13 %empty_34
}

; [#uses=1]
define weak i13 @_ssdm_op_BitConcatenate.i13.i11.i2(i11, i2) nounwind readnone {
entry:
  %empty = zext i11 %0 to i13                     ; [#uses=1 type=i13]
  %empty_35 = zext i2 %1 to i13                   ; [#uses=1 type=i13]
  %empty_36 = shl i13 %empty, 2                   ; [#uses=1 type=i13]
  %empty_37 = or i13 %empty_36, %empty_35         ; [#uses=1 type=i13]
  ret i13 %empty_37
}

; [#uses=11]
define weak i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9, i3) nounwind readnone {
entry:
  %empty = zext i9 %0 to i12                      ; [#uses=1 type=i12]
  %empty_38 = zext i3 %1 to i12                   ; [#uses=1 type=i12]
  %empty_39 = shl i12 %empty, 3                   ; [#uses=1 type=i12]
  %empty_40 = or i12 %empty_39, %empty_38         ; [#uses=1 type=i12]
  ret i12 %empty_40
}

; [#uses=3]
define weak i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9, i1, i2) nounwind readnone {
entry:
  %empty = zext i1 %1 to i3                       ; [#uses=1 type=i3]
  %empty_41 = zext i2 %2 to i3                    ; [#uses=1 type=i3]
  %empty_42 = shl i3 %empty, 2                    ; [#uses=1 type=i3]
  %empty_43 = or i3 %empty_42, %empty_41          ; [#uses=1 type=i3]
  %empty_44 = zext i9 %0 to i12                   ; [#uses=1 type=i12]
  %empty_45 = zext i3 %empty_43 to i12            ; [#uses=1 type=i12]
  %empty_46 = shl i12 %empty_44, 3                ; [#uses=1 type=i12]
  %empty_47 = or i12 %empty_46, %empty_45         ; [#uses=1 type=i12]
  ret i12 %empty_47
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12                     ; [#uses=1 type=i12]
  %empty_48 = zext i1 %1 to i12                   ; [#uses=1 type=i12]
  %empty_49 = shl i12 %empty, 1                   ; [#uses=1 type=i12]
  %empty_50 = or i12 %empty_49, %empty_48         ; [#uses=1 type=i12]
  ret i12 %empty_50
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define internal fastcc void @bgsub_Block__proc(i1 %init, float* %bgmodel, i32 %bgmodel1, i8* %frame_out, i32 %frame_out2, i32 %frame_in) {
newFuncRoot:
  %frame_in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_in) ; [#uses=1 type=i32]
  %frame_out2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_out2) ; [#uses=1 type=i32]
  %bgmodel1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel1) ; [#uses=1 type=i32]
  %init_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %init) ; [#uses=1 type=i1]
  %tmp_111_cast = sext i32 %frame_in_read to i33  ; [#uses=2 type=i33]
  %tmp_112_cast = sext i32 %frame_out2_read to i33 ; [#uses=2 type=i33]
  %tmp_111 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel1_read, i32 2, i32 31) ; [#uses=2 type=i30]
  %tmp_113_cast = zext i30 %tmp_111 to i31        ; [#uses=2 type=i31]
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  %part_bgmodel = alloca [2560 x float], align 16 ; [#uses=3 type=[2560 x float]*]
  %part_frame_in = alloca [320 x i8], align 16    ; [#uses=2 type=[320 x i8]*]
  %part_frame_out = alloca [320 x i1], align 1    ; [#uses=2 type=[320 x i1]*]
  %part2_bgmodel = alloca [2560 x float], align 16 ; [#uses=3 type=[2560 x float]*]
  %part2_frame_in = alloca [320 x i8], align 16   ; [#uses=2 type=[320 x i8]*]
  %part2_frame_out = alloca [320 x i1], align 1   ; [#uses=2 type=[320 x i1]*]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part_bgmodel}, metadata !253), !dbg !255 ; [debug line = 160:9] [debug variable = part_bgmodel]
  call void @llvm.dbg.declare(metadata !{[320 x i8]* %part_frame_in}, metadata !256), !dbg !258 ; [debug line = 161:13] [debug variable = part_frame_in]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part2_bgmodel}, metadata !259), !dbg !260 ; [debug line = 165:12] [debug variable = part2_bgmodel]
  call void @llvm.dbg.declare(metadata !{[320 x i8]* %part2_frame_in}, metadata !261), !dbg !262 ; [debug line = 166:13] [debug variable = part2_frame_in]
  br i1 %init_read, label %.preheader.preheader, label %.loopexit, !dbg !263 ; [debug line = 170:5]

.preheader.preheader:                             ; preds = %newFuncRoot
  %tmp_112 = zext i30 %tmp_111 to i64             ; [#uses=1 type=i64]
  %bgmodel_addr = getelementptr float* %bgmodel, i64 %tmp_112 ; [#uses=3 type=float*]
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr, i32 307200), !dbg !264 ; [#uses=0 type=i1] [debug line = 179:13]
  br label %.preheader, !dbg !267                 ; [debug line = 178:20]

.exitStub:                                        ; preds = %1
  ret void

.preheader:                                       ; preds = %0, %.preheader.preheader
  %p = phi i19 [ %p_1, %0 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i19]
  %exitcond = icmp eq i19 %p, -217088, !dbg !267  ; [#uses=1 type=i1] [debug line = 178:20]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 307200, i64 307200, i64 307200)
  %p_1 = add i19 %p, 1, !dbg !268                 ; [#uses=1 type=i19] [debug line = 178:66]
  br i1 %exitcond, label %.loopexit.loopexit, label %0, !dbg !267 ; [debug line = 178:20]

.loopexit.loopexit:                               ; preds = %.preheader
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr), !dbg !264 ; [#uses=0 type=i1] [debug line = 179:13]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %newFuncRoot
  %learningRate = phi float [ 0.000000e+00, %newFuncRoot ], [ 1.000000e+00, %.loopexit.loopexit ] ; [#uses=2 type=float]
  br label %1, !dbg !269                          ; [debug line = 191:19]

; <label>:0                                       ; preds = %.preheader
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr, float 0.000000e+00, i4 -1), !dbg !264 ; [debug line = 179:13]
  call void @llvm.dbg.value(metadata !{i19 %p_1}, i64 0, metadata !271), !dbg !268 ; [debug line = 178:66] [debug variable = p]
  br label %.preheader, !dbg !268                 ; [debug line = 178:66]

; <label>:1                                       ; preds = %burst.wr.end83, %.loopexit
  %part = phi i7 [ 0, %.loopexit ], [ %part_1, %burst.wr.end83 ] ; [#uses=7 type=i7]
  %tmp_53 = icmp ult i7 %part, -8, !dbg !269      ; [#uses=1 type=i1] [debug line = 191:19]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 60, i64 60, i64 60)
  br i1 %tmp_53, label %2, label %.exitStub, !dbg !269 ; [debug line = 191:19]

burst.wr.end83:                                   ; preds = %burst.wr.header84
  %p_wr_resp105 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_4), !dbg !272 ; [#uses=0 type=i1] [debug line = 211:9]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1812, i32 %tmp_65) nounwind, !dbg !275 ; [#uses=0 type=i32] [debug line = 212:6]
  %part_1 = add i7 %part, 2, !dbg !276            ; [#uses=1 type=i7] [debug line = 191:29]
  call void @llvm.dbg.value(metadata !{i7 %part_1}, i64 0, metadata !277), !dbg !276 ; [debug line = 191:29] [debug variable = part]
  br label %1, !dbg !276                          ; [debug line = 191:29]

burst.wr.header84:                                ; preds = %burst.wr.header84.preheader, %burst.wr.body85
  %indvar6 = phi i9 [ %indvar_next7, %burst.wr.body85 ], [ 0, %burst.wr.header84.preheader ] ; [#uses=3 type=i9]
  %exitcond2 = icmp eq i9 %indvar6, -192          ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next7 = add i9 %indvar6, 1              ; [#uses=1 type=i9]
  br i1 %exitcond2, label %burst.wr.end83, label %burst.wr.body85

burst.wr.body85:                                  ; preds = %burst.wr.header84
  %burstwrite_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str52) nounwind ; [#uses=0 type=i32]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind ; [#uses=0 type=i32]
  %tmp_74 = zext i9 %indvar6 to i64, !dbg !272    ; [#uses=1 type=i64] [debug line = 211:9]
  %part2_frame_out_addr = getelementptr [320 x i1]* %part2_frame_out, i64 0, i64 %tmp_74, !dbg !272 ; [#uses=1 type=i1*] [debug line = 211:9]
  %part2_frame_out_load = load i1* %part2_frame_out_addr, align 1 ; [#uses=1 type=i1]
  %extLd1 = select i1 %part2_frame_out_load, i8 -1, i8 0 ; [#uses=1 type=i8]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_4, i8 %extLd1, i1 true), !dbg !272 ; [debug line = 211:9]
  %burstwrite_rend96 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin3) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header84

burst.wr.header70:                                ; preds = %burst.wr.header70.preheader, %burst.wr.body71
  %indvar5 = phi i12 [ %indvar_next6, %burst.wr.body71 ], [ 0, %burst.wr.header70.preheader ] ; [#uses=3 type=i12]
  %exitcond9 = icmp eq i12 %indvar5, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next6 = add i12 %indvar5, 1             ; [#uses=1 type=i12]
  br i1 %exitcond9, label %burst.wr.header84.preheader, label %burst.wr.body71

burst.wr.header84.preheader:                      ; preds = %burst.wr.header70
  %p_wr_resp107 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_18), !dbg !278 ; [#uses=0 type=i1] [debug line = 210:9]
  %tmp_127 = add i33 %tmp_119, %tmp_112_cast      ; [#uses=1 type=i33]
  %tmp_128 = sext i33 %tmp_127 to i64             ; [#uses=1 type=i64]
  %frame_out_addr_4 = getelementptr i8* %frame_out, i64 %tmp_128 ; [#uses=3 type=i8*]
  %p_wr_req104 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_4, i32 320), !dbg !272 ; [#uses=0 type=i1] [debug line = 211:9]
  br label %burst.wr.header84

burst.wr.body71:                                  ; preds = %burst.wr.header70
  %burstwrite_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str41) nounwind ; [#uses=0 type=i32]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopName([33 x i8]* @memcpy_OC_bgmodel_OC_part2_bgm) nounwind ; [#uses=0 type=i32]
  %tmp_72 = zext i12 %indvar5 to i64, !dbg !278   ; [#uses=1 type=i64] [debug line = 210:9]
  %part2_bgmodel_addr_1 = getelementptr [2560 x float]* %part2_bgmodel, i64 0, i64 %tmp_72, !dbg !278 ; [#uses=1 type=float*] [debug line = 210:9]
  %part2_bgmodel_load = load float* %part2_bgmodel_addr_1, align 4, !dbg !278 ; [#uses=1 type=float] [debug line = 210:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr_18, float %part2_bgmodel_load, i4 -1), !dbg !278 ; [debug line = 210:9]
  %burstwrite_rend81 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin2) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header70

burst.wr.header57:                                ; preds = %burst.wr.header57.preheader, %burst.wr.body58
  %indvar4 = phi i9 [ %indvar_next5, %burst.wr.body58 ], [ 0, %burst.wr.header57.preheader ] ; [#uses=3 type=i9]
  %exitcond8 = icmp eq i9 %indvar4, -192          ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next5 = add i9 %indvar4, 1              ; [#uses=1 type=i9]
  br i1 %exitcond8, label %burst.wr.header70.preheader, label %burst.wr.body58

burst.wr.header70.preheader:                      ; preds = %burst.wr.header57
  %p_wr_resp109 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_3), !dbg !279 ; [#uses=0 type=i1] [debug line = 209:9]
  %p_wr_req106 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_18, i32 2560), !dbg !278 ; [#uses=0 type=i1] [debug line = 210:9]
  br label %burst.wr.header70

burst.wr.body58:                                  ; preds = %burst.wr.header57
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str39) nounwind ; [#uses=0 type=i32]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind ; [#uses=0 type=i32]
  %tmp_70 = zext i9 %indvar4 to i64, !dbg !279    ; [#uses=1 type=i64] [debug line = 209:9]
  %part_frame_out_addr = getelementptr [320 x i1]* %part_frame_out, i64 0, i64 %tmp_70, !dbg !279 ; [#uses=1 type=i1*] [debug line = 209:9]
  %part_frame_out_load = load i1* %part_frame_out_addr, align 1 ; [#uses=1 type=i1]
  %extLd = select i1 %part_frame_out_load, i8 -1, i8 0 ; [#uses=1 type=i8]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_3, i8 %extLd, i1 true), !dbg !279 ; [debug line = 209:9]
  %burstwrite_rend67 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header57

burst.wr.header:                                  ; preds = %burst.wr.body, %burst.rd.end33
  %indvar3 = phi i12 [ 0, %burst.rd.end33 ], [ %indvar_next4, %burst.wr.body ] ; [#uses=3 type=i12]
  %exitcond7 = icmp eq i12 %indvar3, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next4 = add i12 %indvar3, 1             ; [#uses=1 type=i12]
  br i1 %exitcond7, label %burst.wr.header57.preheader, label %burst.wr.body

burst.wr.header57.preheader:                      ; preds = %burst.wr.header
  %p_wr_resp114 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_17), !dbg !280 ; [#uses=0 type=i1] [debug line = 208:9]
  %tmp_125 = add i33 %tmp_113, %tmp_112_cast      ; [#uses=1 type=i33]
  %tmp_126 = sext i33 %tmp_125 to i64             ; [#uses=1 type=i64]
  %frame_out_addr_3 = getelementptr i8* %frame_out, i64 %tmp_126 ; [#uses=3 type=i8*]
  %p_wr_req108 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_3, i32 320), !dbg !279 ; [#uses=0 type=i1] [debug line = 209:9]
  br label %burst.wr.header57

burst.rd.end33:                                   ; preds = %burst.rd.header34
  %empty_57 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1810, i32 %tmp) nounwind, !dbg !281 ; [#uses=0 type=i32] [debug line = 198:6]
  call fastcc void @bgsub_process([320 x i8]* %part_frame_in, [320 x i1]* %part_frame_out, [2560 x float]* %part_bgmodel, float %learningRate) nounwind, !dbg !283 ; [debug line = 201:9]
  call fastcc void @bgsub_process([320 x i8]* %part2_frame_in, [320 x i1]* %part2_frame_out, [2560 x float]* %part2_bgmodel, float %learningRate) nounwind, !dbg !285 ; [debug line = 203:9]
  %tmp_65 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1812) nounwind, !dbg !286 ; [#uses=1 type=i32] [debug line = 207:17]
  %p_wr_req113 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_17, i32 2560), !dbg !280 ; [#uses=0 type=i1] [debug line = 208:9]
  br label %burst.wr.header

burst.rd.header34:                                ; preds = %burst.rd.body35, %burst.rd.end18
  %indvar2 = phi i12 [ 0, %burst.rd.end18 ], [ %indvar_next3, %burst.rd.body35 ] ; [#uses=3 type=i12]
  %exitcond6 = icmp eq i12 %indvar2, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next3 = add i12 %indvar2, 1             ; [#uses=1 type=i12]
  br i1 %exitcond6, label %burst.rd.end33, label %burst.rd.body35

burst.rd.end18:                                   ; preds = %burst.rd.header19
  %p_shl7 = call i18 @_ssdm_op_BitConcatenate.i18.i7.i11(i7 %tmp_58, i11 0), !dbg !287 ; [#uses=1 type=i18] [debug line = 197:9]
  %p_shl7_cast = zext i18 %p_shl7 to i19, !dbg !287 ; [#uses=1 type=i19] [debug line = 197:9]
  %p_shl8 = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %tmp_58, i9 0), !dbg !287 ; [#uses=1 type=i16] [debug line = 197:9]
  %p_shl8_cast = zext i16 %p_shl8 to i19, !dbg !287 ; [#uses=1 type=i19] [debug line = 197:9]
  %tmp_62 = add i19 %p_shl7_cast, %p_shl8_cast, !dbg !287 ; [#uses=1 type=i19] [debug line = 197:9]
  %tmp_122 = zext i19 %tmp_62 to i31              ; [#uses=1 type=i31]
  %tmp_123 = add i31 %tmp_113_cast, %tmp_122      ; [#uses=1 type=i31]
  %tmp_124 = zext i31 %tmp_123 to i64             ; [#uses=1 type=i64]
  %bgmodel_addr_18 = getelementptr float* %bgmodel, i64 %tmp_124 ; [#uses=5 type=float*]
  %p_rd_req112 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_18, i32 2560), !dbg !287 ; [#uses=0 type=i1] [debug line = 197:9]
  br label %burst.rd.header34

burst.rd.header19:                                ; preds = %burst.rd.body20, %burst.rd.end6
  %indvar1 = phi i9 [ 0, %burst.rd.end6 ], [ %indvar_next2, %burst.rd.body20 ] ; [#uses=3 type=i9]
  %exitcond5 = icmp eq i9 %indvar1, -192          ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next2 = add i9 %indvar1, 1              ; [#uses=1 type=i9]
  br i1 %exitcond5, label %burst.rd.end18, label %burst.rd.body20

burst.rd.end6:                                    ; preds = %burst.rd.header7
  %tmp_58 = or i7 %part, 1, !dbg !288             ; [#uses=4 type=i7] [debug line = 196:9]
  %p_shl5 = call i15 @_ssdm_op_BitConcatenate.i15.i7.i8(i7 %tmp_58, i8 0), !dbg !288 ; [#uses=1 type=i15] [debug line = 196:9]
  %p_shl5_cast = zext i15 %p_shl5 to i16, !dbg !288 ; [#uses=1 type=i16] [debug line = 196:9]
  %p_shl6 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_58, i6 0), !dbg !288 ; [#uses=1 type=i13] [debug line = 196:9]
  %p_shl6_cast = zext i13 %p_shl6 to i16, !dbg !288 ; [#uses=1 type=i16] [debug line = 196:9]
  %tmp_59 = add i16 %p_shl5_cast, %p_shl6_cast, !dbg !288 ; [#uses=1 type=i16] [debug line = 196:9]
  %tmp_119 = zext i16 %tmp_59 to i33              ; [#uses=2 type=i33]
  %tmp_120 = add i33 %tmp_111_cast, %tmp_119      ; [#uses=1 type=i33]
  %tmp_121 = sext i33 %tmp_120 to i64             ; [#uses=1 type=i64]
  %frame_out_addr_2 = getelementptr i8* %frame_out, i64 %tmp_121 ; [#uses=2 type=i8*]
  %p_rd_req111 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr_2, i32 320), !dbg !288 ; [#uses=0 type=i1] [debug line = 196:9]
  br label %burst.rd.header19

burst.rd.header7:                                 ; preds = %burst.rd.body8, %burst.rd.end
  %indvar9 = phi i12 [ 0, %burst.rd.end ], [ %indvar_next1, %burst.rd.body8 ] ; [#uses=3 type=i12]
  %exitcond4 = icmp eq i12 %indvar9, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next1 = add i12 %indvar9, 1             ; [#uses=1 type=i12]
  br i1 %exitcond4, label %burst.rd.end6, label %burst.rd.body8

burst.rd.end:                                     ; preds = %burst.rd.header
  %p_shl3 = call i18 @_ssdm_op_BitConcatenate.i18.i7.i11(i7 %part, i11 0), !dbg !289 ; [#uses=1 type=i18] [debug line = 195:9]
  %p_shl3_cast = zext i18 %p_shl3 to i19, !dbg !289 ; [#uses=1 type=i19] [debug line = 195:9]
  %p_shl4 = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %part, i9 0), !dbg !289 ; [#uses=1 type=i16] [debug line = 195:9]
  %p_shl4_cast = zext i16 %p_shl4 to i19, !dbg !289 ; [#uses=1 type=i19] [debug line = 195:9]
  %tmp_55 = add i19 %p_shl3_cast, %p_shl4_cast, !dbg !289 ; [#uses=1 type=i19] [debug line = 195:9]
  %tmp_116 = zext i19 %tmp_55 to i31              ; [#uses=1 type=i31]
  %tmp_117 = add i31 %tmp_113_cast, %tmp_116      ; [#uses=1 type=i31]
  %tmp_118 = zext i31 %tmp_117 to i64             ; [#uses=1 type=i64]
  %bgmodel_addr_17 = getelementptr float* %bgmodel, i64 %tmp_118 ; [#uses=5 type=float*]
  %p_rd_req110 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_17, i32 2560), !dbg !289 ; [#uses=0 type=i1] [debug line = 195:9]
  br label %burst.rd.header7

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i9 [ 0, %2 ], [ %indvar_next, %burst.rd.body ] ; [#uses=3 type=i9]
  %exitcond1 = icmp eq i9 %indvar, -192           ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next = add i9 %indvar, 1                ; [#uses=1 type=i9]
  br i1 %exitcond1, label %burst.rd.end, label %burst.rd.body

; <label>:2                                       ; preds = %1
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1810) nounwind, !dbg !290 ; [#uses=1 type=i32] [debug line = 193:16]
  %p_shl = call i15 @_ssdm_op_BitConcatenate.i15.i7.i8(i7 %part, i8 0), !dbg !291 ; [#uses=1 type=i15] [debug line = 194:9]
  %p_shl_cast = zext i15 %p_shl to i16, !dbg !291 ; [#uses=1 type=i16] [debug line = 194:9]
  %p_shl2 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %part, i6 0), !dbg !291 ; [#uses=1 type=i13] [debug line = 194:9]
  %p_shl2_cast = zext i13 %p_shl2 to i16, !dbg !291 ; [#uses=1 type=i16] [debug line = 194:9]
  %tmp_54 = add i16 %p_shl_cast, %p_shl2_cast, !dbg !291 ; [#uses=1 type=i16] [debug line = 194:9]
  %tmp_113 = zext i16 %tmp_54 to i33              ; [#uses=2 type=i33]
  %tmp_114 = add i33 %tmp_111_cast, %tmp_113      ; [#uses=1 type=i33]
  %tmp_115 = sext i33 %tmp_114 to i64             ; [#uses=1 type=i64]
  %frame_out_addr = getelementptr i8* %frame_out, i64 %tmp_115 ; [#uses=2 type=i8*]
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr, i32 320), !dbg !291 ; [#uses=0 type=i1] [debug line = 194:9]
  br label %burst.rd.header

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind ; [#uses=0 type=i32]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind ; [#uses=0 type=i32]
  %frame_out_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr), !dbg !291 ; [#uses=1 type=i8] [debug line = 194:9]
  %tmp_57 = zext i9 %indvar to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 194:9]
  %part_frame_in_addr = getelementptr [320 x i8]* %part_frame_in, i64 0, i64 %tmp_57, !dbg !291 ; [#uses=1 type=i8*] [debug line = 194:9]
  store i8 %frame_out_addr_read, i8* %part_frame_in_addr, align 1, !dbg !291 ; [debug line = 194:9]
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.body8:                                   ; preds = %burst.rd.header7
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind ; [#uses=0 type=i32]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_part_bgmodel_OC_bgmo) nounwind ; [#uses=0 type=i32]
  %bgmodel_addr_17_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_17), !dbg !289 ; [#uses=1 type=float] [debug line = 195:9]
  %tmp_61 = zext i12 %indvar9 to i64, !dbg !289   ; [#uses=1 type=i64] [debug line = 195:9]
  %part_bgmodel_addr = getelementptr [2560 x float]* %part_bgmodel, i64 0, i64 %tmp_61, !dbg !289 ; [#uses=1 type=float*] [debug line = 195:9]
  store float %bgmodel_addr_17_read, float* %part_bgmodel_addr, align 4, !dbg !289 ; [debug line = 195:9]
  %burstread_rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header7

burst.rd.body20:                                  ; preds = %burst.rd.header19
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind ; [#uses=0 type=i32]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind ; [#uses=0 type=i32]
  %frame_out_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr_2), !dbg !288 ; [#uses=1 type=i8] [debug line = 196:9]
  %tmp_64 = zext i9 %indvar1 to i64, !dbg !288    ; [#uses=1 type=i64] [debug line = 196:9]
  %part2_frame_in_addr = getelementptr [320 x i8]* %part2_frame_in, i64 0, i64 %tmp_64, !dbg !288 ; [#uses=1 type=i8*] [debug line = 196:9]
  store i8 %frame_out_addr_2_read, i8* %part2_frame_in_addr, align 1, !dbg !288 ; [debug line = 196:9]
  %burstread_rend31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin2) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header19

burst.rd.body35:                                  ; preds = %burst.rd.header34
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15) nounwind ; [#uses=0 type=i32]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopName([29 x i8]* @memcpy_OC_part2_bgmodel_OC_bgm) nounwind ; [#uses=0 type=i32]
  %bgmodel_addr_18_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_18), !dbg !287 ; [#uses=1 type=float] [debug line = 197:9]
  %tmp_67 = zext i12 %indvar2 to i64, !dbg !287   ; [#uses=1 type=i64] [debug line = 197:9]
  %part2_bgmodel_addr = getelementptr [2560 x float]* %part2_bgmodel, i64 0, i64 %tmp_67, !dbg !287 ; [#uses=1 type=float*] [debug line = 197:9]
  store float %bgmodel_addr_18_read, float* %part2_bgmodel_addr, align 4, !dbg !287 ; [debug line = 197:9]
  %burstread_rend45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin3) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header34

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str29) nounwind ; [#uses=0 type=i32]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_bgmodel_OC_part_bgmo) nounwind ; [#uses=0 type=i32]
  %tmp_68 = zext i12 %indvar3 to i64, !dbg !280   ; [#uses=1 type=i64] [debug line = 208:9]
  %part_bgmodel_addr_1 = getelementptr [2560 x float]* %part_bgmodel, i64 0, i64 %tmp_68, !dbg !280 ; [#uses=1 type=float*] [debug line = 208:9]
  %part_bgmodel_load = load float* %part_bgmodel_addr_1, align 4, !dbg !280 ; [#uses=1 type=float] [debug line = 208:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr_17, float %part_bgmodel_load, i4 -1), !dbg !280 ; [debug line = 208:9]
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7, !8}
!axi4.slave.bundlemap = !{!9, !10, !11}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !"gmem", metadata !"frame_in", metadata !"READONLY", metadata !"frame_out", metadata !"WRITEONLY"}
!8 = metadata !{metadata !"gmem_offset", metadata !"bgmodel", metadata !"READWRITE"}
!9 = metadata !{metadata !"frame_in", metadata !""}
!10 = metadata !{metadata !"frame_out", metadata !""}
!11 = metadata !{metadata !"bgmodel", metadata !""}
!12 = metadata !{i32 786689, metadata !13, metadata !"learningRate", metadata !14, i32 67108884, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 786478, i32 0, metadata !14, metadata !"process", metadata !"process", metadata !"_Z7processPhS_Pff", metadata !14, i32 17, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 21} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786473, metadata !"backsub_gmm_new_180110/core.cpp", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !17, metadata !20, metadata !22}
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !14, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ]
!23 = metadata !{i32 786454, null, metadata !"data_t", metadata !14, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{i32 20, i32 18, metadata !13, null}
!27 = metadata !{i32 786689, metadata !13, metadata !"frame_in", null, i32 17, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !18, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 319}      ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 17, i32 22, metadata !13, null}
!32 = metadata !{i32 786689, metadata !13, metadata !"frame_out", null, i32 18, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 18, i32 22, metadata !13, null}
!34 = metadata !{i32 786689, metadata !13, metadata !"bgmodel", null, i32 19, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 81920, i64 32, i32 0, i32 0, metadata !21, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 2559}     ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 19, i32 11, metadata !13, null}
!39 = metadata !{i32 786688, metadata !40, metadata !"alpha", metadata !14, i32 23, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 786443, metadata !13, i32 21, i32 1, metadata !14, i32 0} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 23, i32 86, metadata !40, null}
!42 = metadata !{i32 786688, metadata !40, metadata !"mptr", null, i32 24, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !23, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{i32 24, i32 27, metadata !40, null}
!45 = metadata !{i32 33, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 29, i32 5, metadata !14, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !40, i32 28, i32 5, metadata !14, i32 1} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 28, i32 10, metadata !47, null}
!49 = metadata !{i32 35, i32 18, metadata !50, null}
!50 = metadata !{i32 786443, metadata !51, i32 35, i32 13, metadata !14, i32 4} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !46, i32 34, i32 9, metadata !14, i32 3} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 35, i32 35, metadata !50, null}
!53 = metadata !{i32 38, i32 33, metadata !54, null}
!54 = metadata !{i32 786443, metadata !50, i32 36, i32 13, metadata !14, i32 5} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786688, metadata !54, metadata !"pix", metadata !14, i32 38, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 43, i32 40, metadata !57, null}
!57 = metadata !{i32 786443, metadata !58, i32 42, i32 17, metadata !14, i32 7} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !54, i32 41, i32 17, metadata !14, i32 6} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 41, i32 22, metadata !58, null}
!60 = metadata !{i32 786688, metadata !40, metadata !"k", metadata !14, i32 22, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 41, i32 65, metadata !58, null}
!63 = metadata !{i32 786688, metadata !57, metadata !"w", metadata !14, i32 43, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 44, i32 21, metadata !57, null}
!65 = metadata !{i32 786688, metadata !54, metadata !"wsum", metadata !14, i32 37, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 45, i32 21, metadata !57, null}
!67 = metadata !{i32 47, i32 44, metadata !57, null}
!68 = metadata !{i32 786688, metadata !57, metadata !"mu", metadata !14, i32 47, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 48, i32 45, metadata !57, null}
!70 = metadata !{i32 786688, metadata !57, metadata !"var", metadata !14, i32 48, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 49, i32 43, metadata !57, null}
!72 = metadata !{i32 786688, metadata !57, metadata !"diff", metadata !14, i32 49, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 50, i32 42, metadata !57, null}
!74 = metadata !{i32 786688, metadata !57, metadata !"d2", metadata !14, i32 50, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 51, i32 21, metadata !57, null}
!76 = metadata !{i32 53, i32 25, metadata !77, null}
!77 = metadata !{i32 786443, metadata !57, i32 52, i32 21, metadata !14, i32 8} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 54, i32 52, metadata !77, null}
!79 = metadata !{i32 786688, metadata !77, metadata !"dw", metadata !14, i32 54, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 55, i32 25, metadata !77, null}
!81 = metadata !{i32 56, i32 25, metadata !77, null}
!82 = metadata !{i32 57, i32 31, metadata !77, null}
!83 = metadata !{i32 215, i32 7, metadata !84, metadata !82}
!84 = metadata !{i32 786443, metadata !85, i32 211, i32 5, metadata !87, i32 38} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786478, i32 0, metadata !86, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !87, i32 210, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !92, null, metadata !24, i32 211} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786489, null, metadata !"std", metadata !87, i32 73} ; [ DW_TAG_namespace ]
!87 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !90, metadata !90, metadata !90}
!90 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_reference_type ]
!91 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!92 = metadata !{metadata !93}
!93 = metadata !{i32 786479, null, metadata !"_Tp", metadata !21, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!94 = metadata !{i32 58, i32 25, metadata !77, null}
!95 = metadata !{i32 786689, metadata !96, metadata !"__x", metadata !98, i32 16777631, metadata !21, i32 0, metadata !101} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 786478, i32 0, metadata !97, metadata !"sqrt", metadata !"sqrt", metadata !"_ZSt4sqrtf", metadata !98, i32 415, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 416} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786489, null, metadata !"std", metadata !98, i32 76} ; [ DW_TAG_namespace ]
!98 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !21, metadata !21}
!101 = metadata !{i32 59, i32 39, metadata !77, null}
!102 = metadata !{i32 415, i32 14, metadata !96, metadata !101}
!103 = metadata !{i32 416, i32 12, metadata !104, metadata !101}
!104 = metadata !{i32 786443, metadata !96, i32 416, i32 3, metadata !98, i32 154} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 64, i32 2, metadata !106, null}
!106 = metadata !{i32 786443, metadata !107, i32 62, i32 25, metadata !14, i32 10} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !77, i32 61, i32 25, metadata !14, i32 9} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 61, i32 30, metadata !107, null}
!109 = metadata !{i32 786688, metadata !54, metadata !"kHit", metadata !14, i32 39, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 69, i32 25, metadata !77, null}
!111 = metadata !{i32 786688, metadata !40, metadata !"k1", metadata !14, i32 22, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 62, i32 26, metadata !106, null}
!113 = metadata !{i32 63, i32 1, metadata !106, null}
!114 = metadata !{i32 790532, metadata !115, metadata !"__a", null, i32 122, metadata !120, i32 0, metadata !121} ; [ DW_TAG_arg_variable_ro ]
!115 = metadata !{i32 786478, i32 0, metadata !116, metadata !"swap<float>", metadata !"swap<float>", metadata !"_ZSt4swapIfEvRT_S1_", metadata !117, i32 122, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !92, null, metadata !24, i32 123} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786489, null, metadata !"std", metadata !117, i32 109} ; [ DW_TAG_namespace ]
!117 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !120, metadata !120}
!120 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!121 = metadata !{i32 66, i32 29, metadata !106, null}
!122 = metadata !{i32 122, i32 15, metadata !115, metadata !121}
!123 = metadata !{i32 790532, metadata !115, metadata !"__b", null, i32 122, metadata !120, i32 0, metadata !121} ; [ DW_TAG_arg_variable_ro ]
!124 = metadata !{i32 122, i32 25, metadata !115, metadata !121}
!125 = metadata !{i32 786688, metadata !126, metadata !"__tmp", metadata !117, i32 127, metadata !21, i32 0, metadata !121} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 786443, metadata !115, i32 123, i32 5, metadata !117, i32 37} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 127, i32 24, metadata !126, metadata !121}
!128 = metadata !{i32 790534, metadata !115, metadata !"__a", null, i32 122, metadata !120, i32 0, metadata !121} ; [ DW_TAG_arg_variable_wo ]
!129 = metadata !{i32 790534, metadata !115, metadata !"__b", null, i32 122, metadata !120, i32 0, metadata !121} ; [ DW_TAG_arg_variable_wo ]
!130 = metadata !{i32 67, i32 25, metadata !106, null}
!131 = metadata !{i32 61, i32 49, metadata !107, null}
!132 = metadata !{i32 74, i32 17, metadata !54, null}
!133 = metadata !{i32 192, i32 7, metadata !134, metadata !142}
!134 = metadata !{i32 786443, metadata !135, i32 188, i32 5, metadata !87, i32 36} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 786478, i32 0, metadata !86, metadata !"min<int>", metadata !"min<int>", metadata !"_ZSt3minIiERKT_S2_S2_", metadata !87, i32 187, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !140, null, metadata !24, i32 188} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{metadata !138, metadata !138, metadata !138}
!138 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_reference_type ]
!139 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_const_type ]
!140 = metadata !{metadata !141}
!141 = metadata !{i32 786479, null, metadata !"_Tp", metadata !61, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!142 = metadata !{i32 76, i32 32, metadata !143, null}
!143 = metadata !{i32 786443, metadata !54, i32 75, i32 17, metadata !14, i32 11} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 77, i32 21, metadata !143, null}
!145 = metadata !{i32 78, i32 21, metadata !143, null}
!146 = metadata !{i32 79, i32 21, metadata !143, null}
!147 = metadata !{i32 80, i32 21, metadata !143, null}
!148 = metadata !{i32 81, i32 21, metadata !143, null}
!149 = metadata !{i32 82, i32 17, metadata !143, null}
!150 = metadata !{i32 85, i32 18, metadata !151, null}
!151 = metadata !{i32 786443, metadata !152, i32 85, i32 18, metadata !14, i32 13} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786443, metadata !54, i32 84, i32 17, metadata !14, i32 12} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 86, i32 19, metadata !154, null}
!154 = metadata !{i32 786443, metadata !151, i32 86, i32 18, metadata !14, i32 14} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 87, i32 1, metadata !154, null}
!156 = metadata !{i32 88, i32 2, metadata !154, null}
!157 = metadata !{i32 89, i32 18, metadata !154, null}
!158 = metadata !{i32 85, i32 61, metadata !151, null}
!159 = metadata !{i32 93, i32 41, metadata !54, null}
!160 = metadata !{i32 786688, metadata !54, metadata !"wscale", metadata !14, i32 93, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 95, i32 22, metadata !162, null}
!162 = metadata !{i32 786443, metadata !54, i32 95, i32 17, metadata !14, i32 15} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 95, i32 65, metadata !162, null}
!164 = metadata !{i32 100, i32 25, metadata !165, null}
!165 = metadata !{i32 786443, metadata !162, i32 96, i32 17, metadata !14, i32 16} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 97, i32 21, metadata !165, null}
!167 = metadata !{i32 98, i32 21, metadata !165, null}
!168 = metadata !{i32 99, i32 21, metadata !165, null}
!169 = metadata !{i32 786688, metadata !54, metadata !"kForeground", metadata !14, i32 39, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 103, i32 17, metadata !54, null}
!171 = metadata !{i32 786688, metadata !40, metadata !"x", metadata !14, i32 22, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 108, i32 18, metadata !173, null}
!173 = metadata !{i32 786443, metadata !174, i32 108, i32 13, metadata !14, i32 18} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786443, metadata !46, i32 107, i32 9, metadata !14, i32 17} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 108, i32 35, metadata !173, null}
!176 = metadata !{i32 110, i32 33, metadata !177, null}
!177 = metadata !{i32 786443, metadata !173, i32 109, i32 13, metadata !14, i32 19} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 786688, metadata !177, metadata !"pix", metadata !14, i32 110, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 115, i32 21, metadata !180, null}
!180 = metadata !{i32 786443, metadata !181, i32 114, i32 17, metadata !14, i32 21} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !177, i32 113, i32 17, metadata !14, i32 20} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 113, i32 22, metadata !181, null}
!183 = metadata !{i32 123, i32 25, metadata !184, null}
!184 = metadata !{i32 786443, metadata !180, i32 122, i32 21, metadata !14, i32 22} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786688, metadata !177, metadata !"kHit", metadata !14, i32 111, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 113, i32 65, metadata !181, null}
!187 = metadata !{i32 117, i32 44, metadata !180, null}
!188 = metadata !{i32 786688, metadata !180, metadata !"mu", metadata !14, i32 117, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 118, i32 45, metadata !180, null}
!190 = metadata !{i32 786688, metadata !180, metadata !"var", metadata !14, i32 118, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 119, i32 43, metadata !180, null}
!192 = metadata !{i32 786688, metadata !180, metadata !"diff", metadata !14, i32 119, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 120, i32 42, metadata !180, null}
!194 = metadata !{i32 786688, metadata !180, metadata !"d2", metadata !14, i32 120, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 121, i32 21, metadata !180, null}
!196 = metadata !{i32 128, i32 17, metadata !177, null}
!197 = metadata !{i32 131, i32 69, metadata !198, null}
!198 = metadata !{i32 786443, metadata !199, i32 131, i32 21, metadata !14, i32 24} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 786443, metadata !177, i32 129, i32 17, metadata !14, i32 23} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 131, i32 26, metadata !198, null}
!201 = metadata !{i32 133, i32 25, metadata !202, null}
!202 = metadata !{i32 786443, metadata !198, i32 132, i32 21, metadata !14, i32 25} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 786688, metadata !199, metadata !"wsum", metadata !14, i32 130, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 134, i32 25, metadata !202, null}
!205 = metadata !{i32 136, i32 29, metadata !206, null}
!206 = metadata !{i32 786443, metadata !202, i32 135, i32 25, metadata !14, i32 26} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 786688, metadata !177, metadata !"kForeground", metadata !14, i32 111, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 137, i32 29, metadata !206, null}
!209 = metadata !{i32 142, i32 17, metadata !177, null}
!210 = metadata !{i32 28, i32 27, metadata !47, null}
!211 = metadata !{i32 146, i32 1, metadata !40, null}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 31, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"bgmodel", metadata !216, metadata !"float", i32 0, i32 31}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 0, i32 307199, i32 1}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 7, metadata !220}
!220 = metadata !{metadata !221, metadata !224}
!221 = metadata !{metadata !"frame_in", metadata !222, metadata !"unsigned char", i32 0, i32 7}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 0, i32 38399, i32 1}
!224 = metadata !{metadata !"frame_out", metadata !222, metadata !"unsigned char", i32 0, i32 7}
!225 = metadata !{i32 153, i32 1, metadata !226, null}
!226 = metadata !{i32 786443, metadata !227, i32 152, i32 1, metadata !14, i32 27} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 786478, i32 0, metadata !14, metadata !"bgsub", metadata !"bgsub", metadata !"_Z5bgsubPhS_bPf", metadata !14, i32 148, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 152} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{null, metadata !17, metadata !17, metadata !230, metadata !20}
!230 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!231 = metadata !{metadata !232}
!232 = metadata !{i32 0, i32 0, metadata !233}
!233 = metadata !{metadata !234}
!234 = metadata !{metadata !"init", metadata !235, metadata !"bool", i32 0, i32 0}
!235 = metadata !{metadata !236}
!236 = metadata !{i32 0, i32 0, i32 0}
!237 = metadata !{i32 155, i32 1, metadata !226, null}
!238 = metadata !{i32 786689, metadata !227, metadata !"bgmodel", null, i32 151, metadata !239, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 9830400, i64 32, i32 0, i32 0, metadata !21, metadata !240, i32 0, i32 0} ; [ DW_TAG_array_type ]
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786465, i64 0, i64 307199}  ; [ DW_TAG_subrange_type ]
!242 = metadata !{i32 151, i32 12, metadata !227, null}
!243 = metadata !{i32 786689, metadata !227, metadata !"init", metadata !14, i32 50331798, metadata !230, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!244 = metadata !{i32 150, i32 11, metadata !227, null}
!245 = metadata !{i32 786689, metadata !227, metadata !"frame_out", null, i32 149, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!246 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !18, metadata !247, i32 0, i32 0} ; [ DW_TAG_array_type ]
!247 = metadata !{metadata !248}
!248 = metadata !{i32 786465, i64 0, i64 38399}   ; [ DW_TAG_subrange_type ]
!249 = metadata !{i32 149, i32 20, metadata !227, null}
!250 = metadata !{i32 786689, metadata !227, metadata !"frame_in", null, i32 148, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!251 = metadata !{i32 148, i32 20, metadata !227, null}
!252 = metadata !{i32 219, i32 1, metadata !226, null}
!253 = metadata !{i32 786688, metadata !226, metadata !"part_bgmodel", metadata !14, i32 160, metadata !254, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 81920, i64 32, i32 0, i32 0, metadata !23, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!255 = metadata !{i32 160, i32 9, metadata !226, null}
!256 = metadata !{i32 786688, metadata !226, metadata !"part_frame_in", metadata !14, i32 161, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2560, i64 8, i32 0, i32 0, metadata !18, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!258 = metadata !{i32 161, i32 13, metadata !226, null}
!259 = metadata !{i32 786688, metadata !226, metadata !"part2_bgmodel", metadata !14, i32 165, metadata !254, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 165, i32 12, metadata !226, null}
!261 = metadata !{i32 786688, metadata !226, metadata !"part2_frame_in", metadata !14, i32 166, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 166, i32 13, metadata !226, null}
!263 = metadata !{i32 170, i32 5, metadata !226, null}
!264 = metadata !{i32 179, i32 13, metadata !265, null}
!265 = metadata !{i32 786443, metadata !266, i32 178, i32 9, metadata !14, i32 29} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 786443, metadata !226, i32 171, i32 5, metadata !14, i32 28} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 178, i32 20, metadata !265, null}
!268 = metadata !{i32 178, i32 66, metadata !265, null}
!269 = metadata !{i32 191, i32 19, metadata !270, null}
!270 = metadata !{i32 786443, metadata !226, i32 191, i32 5, metadata !14, i32 31} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 786688, metadata !265, metadata !"p", metadata !14, i32 178, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 211, i32 9, metadata !273, null}
!273 = metadata !{i32 786443, metadata !274, i32 207, i32 16, metadata !14, i32 35} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 786443, metadata !270, i32 192, i32 5, metadata !14, i32 32} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 212, i32 6, metadata !273, null}
!276 = metadata !{i32 191, i32 29, metadata !270, null}
!277 = metadata !{i32 786688, metadata !270, metadata !"part", metadata !14, i32 191, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 210, i32 9, metadata !273, null}
!279 = metadata !{i32 209, i32 9, metadata !273, null}
!280 = metadata !{i32 208, i32 9, metadata !273, null}
!281 = metadata !{i32 198, i32 6, metadata !282, null}
!282 = metadata !{i32 786443, metadata !274, i32 193, i32 15, metadata !14, i32 33} ; [ DW_TAG_lexical_block ]
!283 = metadata !{i32 201, i32 9, metadata !284, null}
!284 = metadata !{i32 786443, metadata !274, i32 200, i32 17, metadata !14, i32 34} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 203, i32 9, metadata !284, null}
!286 = metadata !{i32 207, i32 17, metadata !273, null}
!287 = metadata !{i32 197, i32 9, metadata !282, null}
!288 = metadata !{i32 196, i32 9, metadata !282, null}
!289 = metadata !{i32 195, i32 9, metadata !282, null}
!290 = metadata !{i32 193, i32 16, metadata !282, null}
!291 = metadata !{i32 194, i32 9, metadata !282, null}
