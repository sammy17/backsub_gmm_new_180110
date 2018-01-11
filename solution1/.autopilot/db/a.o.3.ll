; ModuleID = '/home/fyp-zc702/FYP/backsub_gmm_new_180110/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mode5 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode13 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@memcpy_OC_part_bgmodel_OC_sort = internal unnamed_addr constant [45 x i8] c"memcpy.part_bgmodel.sortKey.addr.bgmodel.var\00" ; [#uses=1 type=[45 x i8]*]
@memcpy_OC_part2_bgmodel_OC_sor = internal unnamed_addr constant [46 x i8] c"memcpy.part2_bgmodel.sortKey.addr.bgmodel.var\00" ; [#uses=1 type=[46 x i8]*]
@memcpy_OC_frame_out_OC_str = internal unnamed_addr constant [18 x i8] c"memcpy.frame_out.\00" ; [#uses=2 type=[18 x i8]*]
@memcpy_OC_bgmodel_OC_var_OC_pa_1 = internal unnamed_addr constant [46 x i8] c"memcpy.bgmodel.var.part2_bgmodel.sortKey.addr\00" ; [#uses=1 type=[46 x i8]*]
@memcpy_OC_bgmodel_OC_var_OC_pa = internal unnamed_addr constant [45 x i8] c"memcpy.bgmodel.var.part_bgmodel.sortKey.addr\00" ; [#uses=1 type=[45 x i8]*]
@memcpy_OC_OC_frame_in_str = internal unnamed_addr constant [17 x i8] c"memcpy..frame_in\00" ; [#uses=2 type=[17 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00" ; [#uses=8 type=[18 x i8]*]
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=8 type=[17 x i8]*]
@bundle6 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle14 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bgsub_str = internal unnamed_addr constant [6 x i8] c"bgsub\00" ; [#uses=1 type=[6 x i8]*]
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1812 = private unnamed_addr constant [10 x i8] c"write_mem\00", align 1 ; [#uses=2 type=[10 x i8]*]
@p_str1810 = private unnamed_addr constant [9 x i8] c"read_mem\00", align 1 ; [#uses=2 type=[9 x i8]*]
@p_str1809 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str1808 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=11 type=[6 x i8]*]
@p_str1807 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=8 type=[6 x i8]*]
@p_str1806 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=37 type=[1 x i8]*]
@p_str1804 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]

; [#uses=2]
define internal fastcc void @bgsub_process([1280 x i8]* nocapture %frame_in, [1280 x i1]* nocapture %frame_out, [2560 x float]* nocapture %bgmodel_sortKey, [2560 x float]* nocapture %bgmodel_weight, [2560 x float]* nocapture %bgmodel_mean, [2560 x float]* nocapture %bgmodel_var, float %learningRate) {
  %learningRate_read = call float @_ssdm_op_Read.ap_auto.float(float %learningRate) ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %learningRate_read}, i64 0, metadata !15), !dbg !36 ; [debug line = 20:18] [debug variable = learningRate]
  call void @llvm.dbg.value(metadata !{[1280 x i8]* %frame_in}, i64 0, metadata !37), !dbg !41 ; [debug line = 17:22] [debug variable = frame_in]
  call void @llvm.dbg.value(metadata !{[1280 x i1]* %frame_out}, i64 0, metadata !42), !dbg !43 ; [debug line = 18:22] [debug variable = frame_out]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_sortKey}, i64 0, metadata !44), !dbg !51 ; [debug line = 19:13] [debug variable = bgmodel.sortKey]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_weight}, i64 0, metadata !52), !dbg !51 ; [debug line = 19:13] [debug variable = bgmodel.weight]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_mean}, i64 0, metadata !56), !dbg !51 ; [debug line = 19:13] [debug variable = bgmodel.mean]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_var}, i64 0, metadata !60), !dbg !51 ; [debug line = 19:13] [debug variable = bgmodel.var]
  call void @llvm.dbg.value(metadata !{float %learningRate}, i64 0, metadata !15), !dbg !36 ; [debug line = 20:18] [debug variable = learningRate]
  call void @llvm.dbg.value(metadata !{float %learningRate}, i64 0, metadata !64), !dbg !66 ; [debug line = 23:86] [debug variable = alpha]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_sortKey}, i64 0, metadata !67), !dbg !69 ; [debug line = 24:28] [debug variable = mptr.sortKey]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_weight}, i64 0, metadata !70), !dbg !69 ; [debug line = 24:28] [debug variable = mptr.weight]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_mean}, i64 0, metadata !71), !dbg !69 ; [debug line = 24:28] [debug variable = mptr.mean]
  call void @llvm.dbg.value(metadata !{[2560 x float]* %bgmodel_var}, i64 0, metadata !72), !dbg !69 ; [debug line = 24:28] [debug variable = mptr.var]
  %learningRate_to_int = bitcast float %learningRate_read to i32 ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %learningRate_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_3 = trunc i32 %learningRate_to_int to i23  ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_3, 0                 ; [#uses=1 type=i1]
  %tmp_5 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_9 = fcmp ogt float %learningRate_read, 0.000000e+00, !dbg !73 ; [#uses=1 type=i1] [debug line = 33:9]
  %tmp_s = and i1 %tmp_5, %tmp_9, !dbg !73        ; [#uses=1 type=i1] [debug line = 33:9]
  br label %1, !dbg !76                           ; [debug line = 28:10]

; <label>:1                                       ; preds = %.loopexit42, %0
  %mptr_0_rec = phi i12 [ 0, %0 ], [ %mptr_3_rec, %.loopexit42 ] ; [#uses=3 type=i12]
  %y = phi i3 [ 0, %0 ], [ %y_1, %.loopexit42 ]   ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %y, -4, !dbg !76        ; [#uses=1 type=i1] [debug line = 28:10]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %y_1 = add i3 %y, 1, !dbg !77                   ; [#uses=1 type=i3] [debug line = 28:27]
  br i1 %exitcond1, label %22, label %2, !dbg !76 ; [debug line = 28:10]

; <label>:2                                       ; preds = %1
  %tmp_6 = trunc i3 %y to i2                      ; [#uses=2 type=i2]
  %tmp_1 = call i10 @_ssdm_op_BitConcatenate.i10.i2.i2.i6(i2 %tmp_6, i2 %tmp_6, i6 0), !dbg !78 ; [#uses=1 type=i10] [debug line = 30:46]
  %tmp_2_cast = zext i10 %tmp_1 to i11, !dbg !73  ; [#uses=2 type=i11] [debug line = 33:9]
  br i1 %tmp_s, label %.preheader46, label %.preheader41, !dbg !73 ; [debug line = 33:9]

.preheader46:                                     ; preds = %15, %2
  %mptr_1_rec = phi i10 [ %p_rec1, %15 ], [ 0, %2 ] ; [#uses=2 type=i10]
  %x = phi i9 [ %x_3, %15 ], [ 0, %2 ]            ; [#uses=3 type=i9]
  %exitcond2 = icmp eq i9 %x, -192, !dbg !79      ; [#uses=1 type=i1] [debug line = 35:18]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_3 = add i9 %x, 1, !dbg !82                   ; [#uses=1 type=i9] [debug line = 35:35]
  br i1 %exitcond2, label %.loopexit42, label %3, !dbg !79 ; [debug line = 35:18]

; <label>:3                                       ; preds = %.preheader46
  %tmp_3_cast = zext i9 %x to i11                 ; [#uses=1 type=i11]
  %sum = add i11 %tmp_2_cast, %tmp_3_cast         ; [#uses=1 type=i11]
  %sum_cast = zext i11 %sum to i64                ; [#uses=2 type=i64]
  %frame_in_addr = getelementptr [1280 x i8]* %frame_in, i64 0, i64 %sum_cast, !dbg !83 ; [#uses=1 type=i8*] [debug line = 38:33]
  %frame_in_load = load i8* %frame_in_addr, align 1, !dbg !83 ; [#uses=1 type=i8] [debug line = 38:33]
  %pix1 = zext i8 %frame_in_load to i32, !dbg !83 ; [#uses=1 type=i32] [debug line = 38:33]
  %pix = sitofp i32 %pix1 to float, !dbg !83      ; [#uses=2 type=float] [debug line = 38:33]
  call void @llvm.dbg.value(metadata !{float %pix}, i64 0, metadata !85), !dbg !83 ; [debug line = 38:33] [debug variable = pix]
  %mptr_1_rec_cast = zext i10 %mptr_1_rec to i12, !dbg !79 ; [#uses=1 type=i12] [debug line = 35:18]
  %mptr_1_sum = add i12 %mptr_0_rec, %mptr_1_rec_cast, !dbg !86 ; [#uses=6 type=i12] [debug line = 43:43]
  %mptr_1_sum_cast = zext i12 %mptr_1_sum to i13, !dbg !86 ; [#uses=1 type=i13] [debug line = 43:43]
  br label %4, !dbg !89                           ; [debug line = 41:22]

; <label>:4                                       ; preds = %6, %3
  %k = phi i2 [ 0, %3 ], [ %k_2, %6 ]             ; [#uses=7 type=i2]
  %wsum = phi float [ 0.000000e+00, %3 ], [ %wsum_5, %6 ] ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{i2 %k}, i64 0, metadata !90), !dbg !92 ; [debug line = 41:65] [debug variable = k]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1), !dbg !89 ; [#uses=1 type=i1] [debug line = 41:22]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_2 = add i2 %k, 1, !dbg !92                   ; [#uses=1 type=i2] [debug line = 41:65]
  call void @llvm.dbg.value(metadata !{i2 %k_2}, i64 0, metadata !90), !dbg !92 ; [debug line = 41:65] [debug variable = k]
  br i1 %tmp_7, label %.loopexit11, label %5, !dbg !89 ; [debug line = 41:22]

; <label>:5                                       ; preds = %4
  %tmp_8_cast = zext i2 %k to i12                 ; [#uses=1 type=i12]
  %sum1 = add i12 %mptr_1_sum, %tmp_8_cast        ; [#uses=1 type=i12]
  %sum1_cast = zext i12 %sum1 to i64              ; [#uses=4 type=i64]
  %bgmodel_weight_addr = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum1_cast, !dbg !86 ; [#uses=2 type=float*] [debug line = 43:43]
  %w = load float* %bgmodel_weight_addr, align 4, !dbg !86 ; [#uses=7 type=float] [debug line = 43:43]
  call void @llvm.dbg.value(metadata !{float %w}, i64 0, metadata !93), !dbg !86 ; [debug line = 43:43] [debug variable = w]
  %wsum_5 = fadd float %wsum, %w, !dbg !94        ; [#uses=3 type=float] [debug line = 44:21]
  call void @llvm.dbg.value(metadata !{float %wsum_5}, i64 0, metadata !95), !dbg !94 ; [debug line = 44:21] [debug variable = wsum]
  %w_to_int = bitcast float %w to i32             ; [#uses=2 type=i32]
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_21 = trunc i32 %w_to_int to i23            ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_19, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_21, 0               ; [#uses=1 type=i1]
  %tmp_22 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp_23 = fcmp olt float %w, 0x3E80000000000000, !dbg !96 ; [#uses=1 type=i1] [debug line = 45:21]
  %tmp_25 = and i1 %tmp_22, %tmp_23, !dbg !96     ; [#uses=1 type=i1] [debug line = 45:21]
  br i1 %tmp_25, label %.loopexit11, label %6, !dbg !96 ; [debug line = 45:21]

; <label>:6                                       ; preds = %5
  %bgmodel_mean_addr = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum1_cast, !dbg !97 ; [#uses=2 type=float*] [debug line = 47:45]
  %mu = load float* %bgmodel_mean_addr, align 4, !dbg !97 ; [#uses=2 type=float] [debug line = 47:45]
  call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !98), !dbg !97 ; [debug line = 47:45] [debug variable = mu]
  %bgmodel_var_addr = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum1_cast, !dbg !99 ; [#uses=2 type=float*] [debug line = 48:45]
  %var = load float* %bgmodel_var_addr, align 4, !dbg !99 ; [#uses=3 type=float] [debug line = 48:45]
  call void @llvm.dbg.value(metadata !{float %var}, i64 0, metadata !100), !dbg !99 ; [debug line = 48:45] [debug variable = var]
  %diff = fsub float %pix, %mu, !dbg !101         ; [#uses=3 type=float] [debug line = 49:43]
  call void @llvm.dbg.value(metadata !{float %diff}, i64 0, metadata !102), !dbg !101 ; [debug line = 49:43] [debug variable = diff]
  %d2 = fmul float %diff, %diff, !dbg !103        ; [#uses=3 type=float] [debug line = 50:42]
  call void @llvm.dbg.value(metadata !{float %d2}, i64 0, metadata !104), !dbg !103 ; [debug line = 50:42] [debug variable = d2]
  %tmp_2 = fmul float %var, 6.250000e+00, !dbg !105 ; [#uses=2 type=float] [debug line = 51:21]
  %d2_to_int = bitcast float %d2 to i32           ; [#uses=2 type=i32]
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_36 = trunc i32 %d2_to_int to i23           ; [#uses=1 type=i23]
  %tmp_2_to_int = bitcast float %tmp_2 to i32     ; [#uses=2 type=i32]
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_38 = trunc i32 %tmp_2_to_int to i23        ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp_35, -1               ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_36, 0               ; [#uses=1 type=i1]
  %tmp_39 = or i1 %notrhs3, %notlhs3              ; [#uses=1 type=i1]
  %notlhs4 = icmp ne i8 %tmp_37, -1               ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp_38, 0               ; [#uses=1 type=i1]
  %tmp_40 = or i1 %notrhs4, %notlhs4              ; [#uses=1 type=i1]
  %tmp_41 = and i1 %tmp_39, %tmp_40               ; [#uses=1 type=i1]
  %tmp_42 = fcmp olt float %d2, %tmp_2, !dbg !105 ; [#uses=1 type=i1] [debug line = 51:21]
  %tmp_43 = and i1 %tmp_41, %tmp_42, !dbg !105    ; [#uses=1 type=i1] [debug line = 51:21]
  br i1 %tmp_43, label %7, label %4, !dbg !105    ; [debug line = 51:21]

; <label>:7                                       ; preds = %6
  call void @llvm.dbg.value(metadata !{i2 %k}, i64 0, metadata !90), !dbg !92 ; [debug line = 41:65] [debug variable = k]
  %wsum_6 = fsub float %wsum_5, %w, !dbg !106     ; [#uses=2 type=float] [debug line = 53:25]
  call void @llvm.dbg.value(metadata !{float %wsum_6}, i64 0, metadata !95), !dbg !106 ; [debug line = 53:25] [debug variable = wsum]
  %tmp_8 = fsub float 1.000000e+00, %w, !dbg !108 ; [#uses=1 type=float] [debug line = 54:52]
  %dw = fmul float %tmp_8, %learningRate_read, !dbg !108 ; [#uses=1 type=float] [debug line = 54:52]
  call void @llvm.dbg.value(metadata !{float %dw}, i64 0, metadata !109), !dbg !108 ; [debug line = 54:52] [debug variable = dw]
  %tmp_10 = fadd float %w, %dw, !dbg !110         ; [#uses=1 type=float] [debug line = 55:25]
  store float %tmp_10, float* %bgmodel_weight_addr, align 4, !dbg !110 ; [debug line = 55:25]
  %tmp_11 = fmul float %diff, %learningRate_read, !dbg !111 ; [#uses=1 type=float] [debug line = 56:25]
  %tmp_12 = fadd float %mu, %tmp_11, !dbg !111    ; [#uses=1 type=float] [debug line = 56:25]
  store float %tmp_12, float* %bgmodel_mean_addr, align 4, !dbg !111 ; [debug line = 56:25]
  %tmp_13 = fsub float %d2, %var, !dbg !112       ; [#uses=1 type=float] [debug line = 57:31]
  %tmp_14 = fmul float %tmp_13, %learningRate_read, !dbg !112 ; [#uses=1 type=float] [debug line = 57:31]
  %tmp_15 = fadd float %var, %tmp_14, !dbg !112   ; [#uses=3 type=float] [debug line = 57:31]
  %tmp_15_to_int = bitcast float %tmp_15 to i32   ; [#uses=2 type=i32]
  %tmp_53 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_15_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_54 = trunc i32 %tmp_15_to_int to i23       ; [#uses=1 type=i23]
  %notlhs7 = icmp ne i8 %tmp_53, -1               ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp_54, 0               ; [#uses=1 type=i1]
  %tmp_55 = or i1 %notrhs7, %notlhs7              ; [#uses=1 type=i1]
  %tmp_56 = fcmp olt float %tmp_15, 2.250000e+02, !dbg !113 ; [#uses=1 type=i1] [debug line = 215:7@57:31]
  %tmp_57 = and i1 %tmp_55, %tmp_56, !dbg !113    ; [#uses=1 type=i1] [debug line = 215:7@57:31]
  %var_2 = select i1 %tmp_57, float 2.250000e+02, float %tmp_15, !dbg !112 ; [#uses=2 type=float] [debug line = 57:31]
  call void @llvm.dbg.value(metadata !{float %var_2}, i64 0, metadata !100), !dbg !112 ; [debug line = 57:31] [debug variable = var]
  store float %var_2, float* %bgmodel_var_addr, align 4, !dbg !124 ; [debug line = 58:25]
  call void @llvm.dbg.value(metadata !{float %var_2}, i64 0, metadata !125) nounwind, !dbg !132 ; [debug line = 415:14@59:45] [debug variable = __x]
  %tmp_i = call float @llvm.sqrt.f32(float %var_2) nounwind, !dbg !133 ; [#uses=1 type=float] [debug line = 416:12@59:45]
  %tmp_17 = fdiv float %w, %tmp_i, !dbg !131      ; [#uses=1 type=float] [debug line = 59:45]
  %bgmodel_sortKey_addr = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum1_cast, !dbg !131 ; [#uses=1 type=float*] [debug line = 59:45]
  store float %tmp_17, float* %bgmodel_sortKey_addr, align 4, !dbg !131 ; [debug line = 59:45]
  %sum6 = or i12 %mptr_1_sum, 1                   ; [#uses=1 type=i12]
  %sum6_cast = zext i12 %sum6 to i64              ; [#uses=4 type=i64]
  %bgmodel_sortKey_addr_2 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum6_cast, !dbg !135 ; [#uses=2 type=float*] [debug line = 64:2]
  %bgmodel_weight_addr_4 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum6_cast, !dbg !138 ; [#uses=2 type=float*] [debug line = 66:29]
  %bgmodel_mean_addr_3 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum6_cast, !dbg !138 ; [#uses=2 type=float*] [debug line = 66:29]
  %bgmodel_var_addr_3 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum6_cast, !dbg !138 ; [#uses=2 type=float*] [debug line = 66:29]
  br label %8, !dbg !139                          ; [debug line = 61:30]

; <label>:8                                       ; preds = %10, %7
  %kHit = phi i2 [ %k, %7 ], [ %k1, %10 ]         ; [#uses=3 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %kHit}, i64 0, metadata !140), !dbg !141 ; [debug line = 69:25] [debug variable = kHit]
  %k1 = add i2 %kHit, -1, !dbg !139               ; [#uses=2 type=i2] [debug line = 61:30]
  call void @llvm.dbg.value(metadata !{i2 %k1}, i64 0, metadata !142), !dbg !139 ; [debug line = 61:30] [debug variable = k1]
  %tmp_18 = icmp eq i2 %kHit, 1, !dbg !139        ; [#uses=1 type=i1] [debug line = 61:30]
  br i1 %tmp_18, label %9, label %.loopexit11, !dbg !139 ; [debug line = 61:30]

; <label>:9                                       ; preds = %8
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1804), !dbg !143 ; [#uses=1 type=i32] [debug line = 62:26]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind, !dbg !144 ; [debug line = 63:1]
  %tmp_26_cast = zext i2 %k1 to i12               ; [#uses=1 type=i12]
  %sum5 = add i12 %mptr_1_sum, %tmp_26_cast       ; [#uses=1 type=i12]
  %sum5_cast = zext i12 %sum5 to i64              ; [#uses=4 type=i64]
  %bgmodel_sortKey_addr_1 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum5_cast, !dbg !135 ; [#uses=2 type=float*] [debug line = 64:2]
  %p_tmp_sortKey = load float* %bgmodel_sortKey_addr_1, align 4, !dbg !135 ; [#uses=3 type=float] [debug line = 64:2]
  %bgmodel_sortKey_load_2 = load float* %bgmodel_sortKey_addr_2, align 4, !dbg !135 ; [#uses=3 type=float] [debug line = 64:2]
  %p_a_sortKey_read_assign_to_int = bitcast float %p_tmp_sortKey to i32 ; [#uses=2 type=i32]
  %tmp_60 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_a_sortKey_read_assign_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_61 = trunc i32 %p_a_sortKey_read_assign_to_int to i23 ; [#uses=1 type=i23]
  %p_b_sortKey_read_assign_to_int = bitcast float %bgmodel_sortKey_load_2 to i32 ; [#uses=2 type=i32]
  %tmp_62 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_b_sortKey_read_assign_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_63 = trunc i32 %p_b_sortKey_read_assign_to_int to i23 ; [#uses=1 type=i23]
  %notlhs9 = icmp ne i8 %tmp_60, -1               ; [#uses=1 type=i1]
  %notrhs8 = icmp eq i23 %tmp_61, 0               ; [#uses=1 type=i1]
  %tmp_64 = or i1 %notrhs8, %notlhs9              ; [#uses=1 type=i1]
  %notlhs10 = icmp ne i8 %tmp_62, -1              ; [#uses=1 type=i1]
  %notrhs10 = icmp eq i23 %tmp_63, 0              ; [#uses=1 type=i1]
  %tmp_65 = or i1 %notrhs10, %notlhs10            ; [#uses=1 type=i1]
  %tmp_66 = and i1 %tmp_64, %tmp_65               ; [#uses=1 type=i1]
  %tmp_68 = fcmp oge float %p_tmp_sortKey, %bgmodel_sortKey_load_2, !dbg !135 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp_72 = and i1 %tmp_66, %tmp_68, !dbg !135    ; [#uses=1 type=i1] [debug line = 64:2]
  br i1 %tmp_72, label %.loopexit11, label %10, !dbg !135 ; [debug line = 64:2]

; <label>:10                                      ; preds = %9
  %bgmodel_weight_addr_3 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum5_cast, !dbg !138 ; [#uses=2 type=float*] [debug line = 66:29]
  %bgmodel_mean_addr_2 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum5_cast, !dbg !138 ; [#uses=2 type=float*] [debug line = 66:29]
  %bgmodel_var_addr_2 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum5_cast, !dbg !138 ; [#uses=2 type=float*] [debug line = 66:29]
  %p_tmp_weight = load float* %bgmodel_weight_addr_3, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 66:29]
  %p_tmp_mean = load float* %bgmodel_mean_addr_2, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 66:29]
  %p_tmp_var = load float* %bgmodel_var_addr_2, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 66:29]
  %bgmodel_weight_load_7 = load float* %bgmodel_weight_addr_4, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 66:29]
  %bgmodel_mean_load_1 = load float* %bgmodel_mean_addr_3, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 66:29]
  %bgmodel_var_load_1 = load float* %bgmodel_var_addr_3, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 66:29]
  call void @llvm.dbg.value(metadata !{float %p_tmp_sortKey}, i64 0, metadata !145), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.sortKey]
  call void @llvm.dbg.value(metadata !{float %p_tmp_weight}, i64 0, metadata !157), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.weight]
  call void @llvm.dbg.value(metadata !{float %p_tmp_mean}, i64 0, metadata !159), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.mean]
  call void @llvm.dbg.value(metadata !{float %p_tmp_var}, i64 0, metadata !161), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.var]
  call void @llvm.dbg.value(metadata !{float %bgmodel_sortKey_load_2}, i64 0, metadata !163), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.sortKey]
  call void @llvm.dbg.value(metadata !{float %bgmodel_weight_load_7}, i64 0, metadata !166), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.weight]
  call void @llvm.dbg.value(metadata !{float %bgmodel_mean_load_1}, i64 0, metadata !167), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.mean]
  call void @llvm.dbg.value(metadata !{float %bgmodel_var_load_1}, i64 0, metadata !168), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.var]
  call void @llvm.dbg.value(metadata !{float %p_tmp_sortKey}, i64 0, metadata !169), !dbg !172 ; [debug line = 127:24@66:29] [debug variable = __tmp.sortKey]
  call void @llvm.dbg.value(metadata !{float %p_tmp_weight}, i64 0, metadata !173), !dbg !172 ; [debug line = 127:24@66:29] [debug variable = __tmp.weight]
  call void @llvm.dbg.value(metadata !{float %p_tmp_mean}, i64 0, metadata !174), !dbg !172 ; [debug line = 127:24@66:29] [debug variable = __tmp.mean]
  call void @llvm.dbg.value(metadata !{float %p_tmp_var}, i64 0, metadata !175), !dbg !172 ; [debug line = 127:24@66:29] [debug variable = __tmp.var]
  call void @llvm.dbg.value(metadata !{float %bgmodel_sortKey_load_2}, i64 0, metadata !176), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.sortKey]
  call void @llvm.dbg.value(metadata !{float %bgmodel_weight_load_7}, i64 0, metadata !177), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.weight]
  call void @llvm.dbg.value(metadata !{float %bgmodel_mean_load_1}, i64 0, metadata !178), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.mean]
  call void @llvm.dbg.value(metadata !{float %bgmodel_var_load_1}, i64 0, metadata !179), !dbg !156 ; [debug line = 122:15@66:29] [debug variable = __a.var]
  call void @llvm.dbg.value(metadata !{float %p_tmp_sortKey}, i64 0, metadata !180), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.sortKey]
  call void @llvm.dbg.value(metadata !{float %p_tmp_weight}, i64 0, metadata !181), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.weight]
  call void @llvm.dbg.value(metadata !{float %p_tmp_mean}, i64 0, metadata !182), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.mean]
  call void @llvm.dbg.value(metadata !{float %p_tmp_var}, i64 0, metadata !183), !dbg !165 ; [debug line = 122:25@66:29] [debug variable = __b.var]
  store float %bgmodel_sortKey_load_2, float* %bgmodel_sortKey_addr_1, align 4, !dbg !138 ; [debug line = 66:29]
  store float %bgmodel_weight_load_7, float* %bgmodel_weight_addr_3, align 4, !dbg !138 ; [debug line = 66:29]
  store float %bgmodel_mean_load_1, float* %bgmodel_mean_addr_2, align 4, !dbg !138 ; [debug line = 66:29]
  store float %bgmodel_var_load_1, float* %bgmodel_var_addr_2, align 4, !dbg !138 ; [debug line = 66:29]
  store float %p_tmp_sortKey, float* %bgmodel_sortKey_addr_2, align 4, !dbg !138 ; [debug line = 66:29]
  store float %p_tmp_weight, float* %bgmodel_weight_addr_4, align 4, !dbg !138 ; [debug line = 66:29]
  store float %p_tmp_mean, float* %bgmodel_mean_addr_3, align 4, !dbg !138 ; [debug line = 66:29]
  store float %p_tmp_var, float* %bgmodel_var_addr_3, align 4, !dbg !138 ; [debug line = 66:29]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1804, i32 %tmp_20), !dbg !184 ; [#uses=0 type=i32] [debug line = 67:25]
  br label %8, !dbg !185                          ; [debug line = 61:49]

.loopexit11:                                      ; preds = %9, %8, %5, %4
  %wsum_1 = phi float [ %wsum_6, %8 ], [ %wsum_6, %9 ], [ %wsum_5, %5 ], [ %wsum, %4 ] ; [#uses=2 type=float]
  %kHit1 = phi i2 [ 1, %9 ], [ %kHit, %8 ], [ -1, %4 ], [ -1, %5 ] ; [#uses=2 type=i2]
  %k_cast3 = zext i2 %k to i32, !dbg !92          ; [#uses=1 type=i32] [debug line = 41:65]
  %tmp_73 = trunc i2 %k to i1, !dbg !92           ; [#uses=1 type=i1] [debug line = 41:65]
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit1, i32 1), !dbg !186 ; [#uses=1 type=i1] [debug line = 74:17]
  br i1 %tmp_74, label %11, label %.preheader43, !dbg !186 ; [debug line = 74:17]

; <label>:11                                      ; preds = %.loopexit11
  %tmp_76 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1), !dbg !187 ; [#uses=1 type=i1] [debug line = 192:7@76:32]
  %k_10 = or i1 %tmp_76, %tmp_73, !dbg !196       ; [#uses=2 type=i1] [debug line = 76:32]
  %k_10_cast = zext i1 %k_10 to i2, !dbg !196     ; [#uses=1 type=i2] [debug line = 76:32]
  call void @llvm.dbg.value(metadata !{i1 %k_10}, i64 0, metadata !90), !dbg !196 ; [debug line = 76:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i1 %k_10}, i64 0, metadata !140), !dbg !196 ; [debug line = 76:32] [debug variable = kHit]
  %tmp_77 = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %mptr_1_sum, i32 1, i32 11) ; [#uses=1 type=i11]
  %sum7 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_77, i1 %k_10) ; [#uses=1 type=i12]
  %sum7_cast = zext i12 %sum7 to i64              ; [#uses=4 type=i64]
  %bgmodel_weight_addr_5 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum7_cast, !dbg !198 ; [#uses=2 type=float*] [debug line = 77:21]
  %bgmodel_weight_load_1 = load float* %bgmodel_weight_addr_5, align 4, !dbg !198 ; [#uses=1 type=float] [debug line = 77:21]
  %tmp_24 = fsub float 0x3FA99999A0000000, %bgmodel_weight_load_1, !dbg !198 ; [#uses=1 type=float] [debug line = 77:21]
  %wsum_7 = fadd float %wsum_1, %tmp_24, !dbg !198 ; [#uses=1 type=float] [debug line = 77:21]
  call void @llvm.dbg.value(metadata !{float %wsum_7}, i64 0, metadata !95), !dbg !198 ; [debug line = 77:21] [debug variable = wsum]
  store float 0x3FA99999A0000000, float* %bgmodel_weight_addr_5, align 4, !dbg !199 ; [debug line = 78:21]
  %bgmodel_mean_addr_4 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum7_cast, !dbg !200 ; [#uses=1 type=float*] [debug line = 79:21]
  store float %pix, float* %bgmodel_mean_addr_4, align 4, !dbg !200 ; [debug line = 79:21]
  %bgmodel_var_addr_4 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum7_cast, !dbg !201 ; [#uses=1 type=float*] [debug line = 80:21]
  store float 9.000000e+02, float* %bgmodel_var_addr_4, align 4, !dbg !201 ; [debug line = 80:21]
  %bgmodel_sortKey_addr_3 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum7_cast, !dbg !202 ; [#uses=1 type=float*] [debug line = 81:21]
  store float 0x3F5B4E81C0000000, float* %bgmodel_sortKey_addr_3, align 4, !dbg !202 ; [debug line = 81:21]
  br label %.loopexit44, !dbg !203                ; [debug line = 82:17]

.preheader43:                                     ; preds = %12, %.loopexit11
  %k_1 = phi i32 [ %k_8, %12 ], [ %k_cast3, %.loopexit11 ] ; [#uses=3 type=i32]
  %wsum_2 = phi float [ %wsum_9, %12 ], [ %wsum_1, %.loopexit11 ] ; [#uses=2 type=float]
  %exitcond4 = icmp eq i32 %k_1, 2, !dbg !204     ; [#uses=1 type=i1] [debug line = 85:18]
  br i1 %exitcond4, label %.loopexit44, label %12, !dbg !204 ; [debug line = 85:18]

; <label>:12                                      ; preds = %.preheader43
  %tmp_29 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1806), !dbg !207 ; [#uses=1 type=i32] [debug line = 86:19]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 2, i32 2, [1 x i8]* @p_str1805) nounwind, !dbg !209 ; [debug line = 87:1]
  %tmp_78 = trunc i32 %k_1 to i13                 ; [#uses=1 type=i13]
  %sum8 = add i13 %tmp_78, %mptr_1_sum_cast       ; [#uses=1 type=i13]
  %sum8_cast = zext i13 %sum8 to i64              ; [#uses=1 type=i64]
  %bgmodel_weight_addr_6 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum8_cast, !dbg !210 ; [#uses=1 type=float*] [debug line = 88:2]
  %bgmodel_weight_load_3 = load float* %bgmodel_weight_addr_6, align 4, !dbg !210 ; [#uses=1 type=float] [debug line = 88:2]
  %wsum_9 = fadd float %wsum_2, %bgmodel_weight_load_3, !dbg !210 ; [#uses=1 type=float] [debug line = 88:2]
  call void @llvm.dbg.value(metadata !{float %wsum_9}, i64 0, metadata !95), !dbg !210 ; [debug line = 88:2] [debug variable = wsum]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1806, i32 %tmp_29), !dbg !211 ; [#uses=0 type=i32] [debug line = 89:18]
  %k_8 = add nsw i32 1, %k_1, !dbg !212           ; [#uses=1 type=i32] [debug line = 85:61]
  call void @llvm.dbg.value(metadata !{i32 %k_8}, i64 0, metadata !90), !dbg !212 ; [debug line = 85:61] [debug variable = k]
  br label %.preheader43, !dbg !212               ; [debug line = 85:61]

.loopexit44:                                      ; preds = %.preheader43, %11
  %wsum_3 = phi float [ %wsum_7, %11 ], [ %wsum_2, %.preheader43 ] ; [#uses=1 type=float]
  %kHit_1 = phi i2 [ %k_10_cast, %11 ], [ %kHit1, %.preheader43 ] ; [#uses=1 type=i2]
  %kHit_1_cast = sext i2 %kHit_1 to i32, !dbg !213 ; [#uses=1 type=i32] [debug line = 93:41]
  %wscale = fdiv float 1.000000e+00, %wsum_3, !dbg !213 ; [#uses=2 type=float] [debug line = 93:41]
  call void @llvm.dbg.value(metadata !{float %wscale}, i64 0, metadata !214), !dbg !213 ; [debug line = 93:41] [debug variable = wscale]
  br label %13, !dbg !215                         ; [debug line = 95:22]

; <label>:13                                      ; preds = %14, %.loopexit44
  %k_9 = phi i2 [ 0, %.loopexit44 ], [ %kForeground_1, %14 ] ; [#uses=3 type=i2]
  %wsum_4 = phi float [ 0.000000e+00, %.loopexit44 ], [ %wsum_10, %14 ] ; [#uses=1 type=float]
  %kForeground1 = phi i32 [ -1, %.loopexit44 ], [ %p_kForeground, %14 ] ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i2 %k_9}, i64 0, metadata !90), !dbg !217 ; [debug line = 95:65] [debug variable = k]
  %exitcond3 = icmp eq i2 %k_9, -2, !dbg !215     ; [#uses=1 type=i1] [debug line = 95:22]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %kForeground_1 = add i2 %k_9, 1, !dbg !218      ; [#uses=2 type=i2] [debug line = 100:25]
  br i1 %exitcond3, label %15, label %14, !dbg !215 ; [debug line = 95:22]

; <label>:14                                      ; preds = %13
  %tmp_43_cast = zext i2 %k_9 to i12              ; [#uses=1 type=i12]
  %sum9 = add i12 %tmp_43_cast, %mptr_1_sum       ; [#uses=1 type=i12]
  %sum9_cast = zext i12 %sum9 to i64              ; [#uses=2 type=i64]
  %bgmodel_weight_addr_7 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum9_cast, !dbg !220 ; [#uses=2 type=float*] [debug line = 97:21]
  %bgmodel_weight_load_4 = load float* %bgmodel_weight_addr_7, align 4, !dbg !220 ; [#uses=1 type=float] [debug line = 97:21]
  %tmp_31 = fmul float %bgmodel_weight_load_4, %wscale, !dbg !220 ; [#uses=2 type=float] [debug line = 97:21]
  store float %tmp_31, float* %bgmodel_weight_addr_7, align 4, !dbg !220 ; [debug line = 97:21]
  %wsum_10 = fadd float %wsum_4, %tmp_31, !dbg !220 ; [#uses=3 type=float] [debug line = 97:21]
  call void @llvm.dbg.value(metadata !{float %wsum_10}, i64 0, metadata !95), !dbg !220 ; [debug line = 97:21] [debug variable = wsum]
  %bgmodel_sortKey_addr_4 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum9_cast, !dbg !221 ; [#uses=2 type=float*] [debug line = 98:21]
  %bgmodel_sortKey_load = load float* %bgmodel_sortKey_addr_4, align 4, !dbg !221 ; [#uses=1 type=float] [debug line = 98:21]
  %tmp_32 = fmul float %bgmodel_sortKey_load, %wscale, !dbg !221 ; [#uses=1 type=float] [debug line = 98:21]
  store float %tmp_32, float* %bgmodel_sortKey_addr_4, align 4, !dbg !221 ; [debug line = 98:21]
  %wsum_10_to_int = bitcast float %wsum_10 to i32 ; [#uses=2 type=i32]
  %tmp_80 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_10_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_81 = trunc i32 %wsum_10_to_int to i23      ; [#uses=1 type=i23]
  %notlhs11 = icmp ne i8 %tmp_80, -1              ; [#uses=1 type=i1]
  %notrhs11 = icmp eq i23 %tmp_81, 0              ; [#uses=1 type=i1]
  %tmp_82 = or i1 %notrhs11, %notlhs11            ; [#uses=1 type=i1]
  %tmp_83 = fcmp ogt float %wsum_10, 0x3FE6666660000000, !dbg !222 ; [#uses=1 type=i1] [debug line = 99:21]
  %tmp_84 = and i1 %tmp_82, %tmp_83, !dbg !222    ; [#uses=1 type=i1] [debug line = 99:21]
  %tmp_85 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %kForeground1, i32 31), !dbg !222 ; [#uses=1 type=i1] [debug line = 99:21]
  %or_cond = and i1 %tmp_84, %tmp_85, !dbg !222   ; [#uses=1 type=i1] [debug line = 99:21]
  %kForeground_1_cast = zext i2 %kForeground_1 to i32, !dbg !218 ; [#uses=1 type=i32] [debug line = 100:25]
  call void @llvm.dbg.value(metadata !{i2 %kForeground_1}, i64 0, metadata !223), !dbg !218 ; [debug line = 100:25] [debug variable = kForeground]
  %p_kForeground = select i1 %or_cond, i32 %kForeground_1_cast, i32 %kForeground1, !dbg !222 ; [#uses=1 type=i32] [debug line = 99:21]
  br label %13, !dbg !217                         ; [debug line = 95:65]

; <label>:15                                      ; preds = %13
  %slt = icmp slt i32 %kHit_1_cast, %kForeground1, !dbg !224 ; [#uses=1 type=i1] [debug line = 103:17]
  %rev = xor i1 %slt, true, !dbg !224             ; [#uses=1 type=i1] [debug line = 103:17]
  %frame_out_addr_1 = getelementptr [1280 x i1]* %frame_out, i64 0, i64 %sum_cast, !dbg !224 ; [#uses=1 type=i1*] [debug line = 103:17]
  store i1 %rev, i1* %frame_out_addr_1, align 1, !dbg !224 ; [debug line = 103:17]
  call void @llvm.dbg.value(metadata !{i9 %x_3}, i64 0, metadata !225), !dbg !82 ; [debug line = 35:35] [debug variable = x]
  %p_rec1 = add i10 %mptr_1_rec, 2, !dbg !82      ; [#uses=1 type=i10] [debug line = 35:35]
  br label %.preheader46, !dbg !82                ; [debug line = 35:35]

.preheader41:                                     ; preds = %.loopexit, %2
  %mptr_2_rec = phi i10 [ %p_rec, %.loopexit ], [ 0, %2 ] ; [#uses=2 type=i10]
  %x_1 = phi i9 [ %x_2, %.loopexit ], [ 0, %2 ]   ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %x_1, -192, !dbg !226    ; [#uses=1 type=i1] [debug line = 108:18]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_2 = add i9 %x_1, 1, !dbg !229                ; [#uses=1 type=i9] [debug line = 108:35]
  br i1 %exitcond, label %.loopexit42, label %16, !dbg !226 ; [debug line = 108:18]

; <label>:16                                      ; preds = %.preheader41
  %tmp_4_cast = zext i9 %x_1 to i11               ; [#uses=1 type=i11]
  %sum2 = add i11 %tmp_2_cast, %tmp_4_cast        ; [#uses=1 type=i11]
  %sum2_cast = zext i11 %sum2 to i64              ; [#uses=2 type=i64]
  %frame_in_addr_1 = getelementptr [1280 x i8]* %frame_in, i64 0, i64 %sum2_cast, !dbg !230 ; [#uses=1 type=i8*] [debug line = 110:33]
  %frame_in_load_1 = load i8* %frame_in_addr_1, align 1, !dbg !230 ; [#uses=1 type=i8] [debug line = 110:33]
  %pix_s = zext i8 %frame_in_load_1 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 110:33]
  %pix_1 = sitofp i32 %pix_s to float, !dbg !230  ; [#uses=1 type=float] [debug line = 110:33]
  call void @llvm.dbg.value(metadata !{float %pix_1}, i64 0, metadata !232), !dbg !230 ; [debug line = 110:33] [debug variable = pix]
  %mptr_2_rec_cast = zext i10 %mptr_2_rec to i12, !dbg !226 ; [#uses=1 type=i12] [debug line = 108:18]
  %mptr_2_sum = add i12 %mptr_0_rec, %mptr_2_rec_cast, !dbg !233 ; [#uses=2 type=i12] [debug line = 115:21]
  br label %17, !dbg !236                         ; [debug line = 113:22]

; <label>:17                                      ; preds = %19, %16
  %kHit_4 = phi i2 [ 0, %16 ], [ %k_4, %19 ]      ; [#uses=4 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !237), !dbg !238 ; [debug line = 123:25] [debug variable = kHit]
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !90), !dbg !240 ; [debug line = 113:65] [debug variable = k]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit_4, i32 1), !dbg !236 ; [#uses=1 type=i1] [debug line = 113:22]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_4 = add i2 %kHit_4, 1, !dbg !240             ; [#uses=1 type=i2] [debug line = 113:65]
  call void @llvm.dbg.value(metadata !{i2 %k_4}, i64 0, metadata !90), !dbg !240 ; [debug line = 113:65] [debug variable = k]
  br i1 %tmp_16, label %.loopexit7.loopexit, label %18, !dbg !236 ; [debug line = 113:22]

; <label>:18                                      ; preds = %17
  %tmp_5_cast = zext i2 %kHit_4 to i12            ; [#uses=1 type=i12]
  %sum3 = add i12 %mptr_2_sum, %tmp_5_cast        ; [#uses=1 type=i12]
  %sum3_cast = zext i12 %sum3 to i64              ; [#uses=3 type=i64]
  %bgmodel_weight_addr_1 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum3_cast, !dbg !233 ; [#uses=1 type=float*] [debug line = 115:21]
  %bgmodel_weight_load = load float* %bgmodel_weight_addr_1, align 4, !dbg !233 ; [#uses=2 type=float] [debug line = 115:21]
  %bgmodel_weight_load_to_int = bitcast float %bgmodel_weight_load to i32 ; [#uses=2 type=i32]
  %tmp_26 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bgmodel_weight_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_27 = trunc i32 %bgmodel_weight_load_to_int to i23 ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp_26, -1               ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_27, 0               ; [#uses=1 type=i1]
  %tmp_30 = or i1 %notrhs2, %notlhs2              ; [#uses=1 type=i1]
  %tmp_33 = fcmp olt float %bgmodel_weight_load, 0x3E80000000000000, !dbg !233 ; [#uses=1 type=i1] [debug line = 115:21]
  %tmp_34 = and i1 %tmp_30, %tmp_33, !dbg !233    ; [#uses=1 type=i1] [debug line = 115:21]
  br i1 %tmp_34, label %.loopexit7.loopexit, label %19, !dbg !233 ; [debug line = 115:21]

; <label>:19                                      ; preds = %18
  %bgmodel_mean_addr_1 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum3_cast, !dbg !241 ; [#uses=1 type=float*] [debug line = 117:45]
  %mu_1 = load float* %bgmodel_mean_addr_1, align 4, !dbg !241 ; [#uses=1 type=float] [debug line = 117:45]
  call void @llvm.dbg.value(metadata !{float %mu_1}, i64 0, metadata !242), !dbg !241 ; [debug line = 117:45] [debug variable = mu]
  %bgmodel_var_addr_1 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum3_cast, !dbg !243 ; [#uses=1 type=float*] [debug line = 118:45]
  %var_1 = load float* %bgmodel_var_addr_1, align 4, !dbg !243 ; [#uses=1 type=float] [debug line = 118:45]
  call void @llvm.dbg.value(metadata !{float %var_1}, i64 0, metadata !244), !dbg !243 ; [debug line = 118:45] [debug variable = var]
  %diff_1 = fsub float %pix_1, %mu_1, !dbg !245   ; [#uses=2 type=float] [debug line = 119:43]
  call void @llvm.dbg.value(metadata !{float %diff_1}, i64 0, metadata !246), !dbg !245 ; [debug line = 119:43] [debug variable = diff]
  %d2_1 = fmul float %diff_1, %diff_1, !dbg !247  ; [#uses=2 type=float] [debug line = 120:42]
  call void @llvm.dbg.value(metadata !{float %d2_1}, i64 0, metadata !248), !dbg !247 ; [debug line = 120:42] [debug variable = d2]
  %tmp_4 = fmul float %var_1, 6.250000e+00, !dbg !249 ; [#uses=2 type=float] [debug line = 121:21]
  %d2_1_to_int = bitcast float %d2_1 to i32       ; [#uses=2 type=i32]
  %tmp_44 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_45 = trunc i32 %d2_1_to_int to i23         ; [#uses=1 type=i23]
  %tmp_4_to_int = bitcast float %tmp_4 to i32     ; [#uses=2 type=i32]
  %tmp_46 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_4_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_47 = trunc i32 %tmp_4_to_int to i23        ; [#uses=1 type=i23]
  %notlhs5 = icmp ne i8 %tmp_44, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp_45, 0               ; [#uses=1 type=i1]
  %tmp_48 = or i1 %notrhs5, %notlhs5              ; [#uses=1 type=i1]
  %notlhs6 = icmp ne i8 %tmp_46, -1               ; [#uses=1 type=i1]
  %notrhs6 = icmp eq i23 %tmp_47, 0               ; [#uses=1 type=i1]
  %tmp_49 = or i1 %notrhs6, %notlhs6              ; [#uses=1 type=i1]
  %tmp_50 = and i1 %tmp_48, %tmp_49               ; [#uses=1 type=i1]
  %tmp_51 = fcmp olt float %d2_1, %tmp_4, !dbg !249 ; [#uses=1 type=i1] [debug line = 121:21]
  %tmp_52 = and i1 %tmp_50, %tmp_51, !dbg !249    ; [#uses=1 type=i1] [debug line = 121:21]
  br i1 %tmp_52, label %.loopexit7, label %17, !dbg !249 ; [debug line = 121:21]

.loopexit7.loopexit:                              ; preds = %18, %17
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !90), !dbg !240 ; [debug line = 113:65] [debug variable = k]
  br label %.loopexit7

.loopexit7:                                       ; preds = %.loopexit7.loopexit, %19
  %kHit2 = phi i2 [ -1, %.loopexit7.loopexit ], [ %kHit_4, %19 ] ; [#uses=3 type=i2]
  %kHit2_cast = sext i2 %kHit2 to i3, !dbg !240   ; [#uses=1 type=i3] [debug line = 113:65]
  call void @llvm.dbg.value(metadata !{i2 %kHit_4}, i64 0, metadata !90), !dbg !240 ; [debug line = 113:65] [debug variable = k]
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit2, i32 1), !dbg !250 ; [#uses=1 type=i1] [debug line = 128:17]
  br i1 %tmp_58, label %.loopexit, label %.preheader, !dbg !250 ; [debug line = 128:17]

.preheader:                                       ; preds = %20, %.loopexit7
  %k_5 = phi i2 [ %k_11, %20 ], [ 0, %.loopexit7 ] ; [#uses=3 type=i2]
  %wsum8 = phi float [ %wsum_8, %20 ], [ 0.000000e+00, %.loopexit7 ] ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{i2 %k_5}, i64 0, metadata !90), !dbg !251 ; [debug line = 131:69] [debug variable = k]
  %tmp_59 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k_5, i32 1), !dbg !254 ; [#uses=1 type=i1] [debug line = 131:26]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_11 = add i2 %k_5, 1, !dbg !251               ; [#uses=2 type=i2] [debug line = 131:69]
  call void @llvm.dbg.value(metadata !{i2 %k_11}, i64 0, metadata !90), !dbg !251 ; [debug line = 131:69] [debug variable = k]
  br i1 %tmp_59, label %.loopexit, label %20, !dbg !254 ; [debug line = 131:26]

; <label>:20                                      ; preds = %.preheader
  %tmp_34_cast = zext i2 %k_5 to i12              ; [#uses=1 type=i12]
  %sum4 = add i12 %tmp_34_cast, %mptr_2_sum       ; [#uses=1 type=i12]
  %sum4_cast = zext i12 %sum4 to i64              ; [#uses=1 type=i64]
  %bgmodel_weight_addr_2 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum4_cast, !dbg !255 ; [#uses=1 type=float*] [debug line = 133:25]
  %bgmodel_weight_load_2 = load float* %bgmodel_weight_addr_2, align 4, !dbg !255 ; [#uses=1 type=float] [debug line = 133:25]
  %wsum_8 = fadd float %wsum8, %bgmodel_weight_load_2, !dbg !255 ; [#uses=3 type=float] [debug line = 133:25]
  call void @llvm.dbg.value(metadata !{float %wsum_8}, i64 0, metadata !257), !dbg !255 ; [debug line = 133:25] [debug variable = wsum]
  %wsum_8_to_int = bitcast float %wsum_8 to i32   ; [#uses=2 type=i32]
  %tmp_67 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_8_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_75 = trunc i32 %wsum_8_to_int to i23       ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp_67, -1               ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp_75, 0               ; [#uses=1 type=i1]
  %tmp_69 = or i1 %notrhs9, %notlhs8              ; [#uses=1 type=i1]
  %tmp_70 = fcmp ogt float %wsum_8, 0x3FE6666660000000, !dbg !258 ; [#uses=1 type=i1] [debug line = 134:25]
  %tmp_71 = and i1 %tmp_69, %tmp_70, !dbg !258    ; [#uses=1 type=i1] [debug line = 134:25]
  br i1 %tmp_71, label %21, label %.preheader, !dbg !258 ; [debug line = 134:25]

; <label>:21                                      ; preds = %20
  call void @llvm.dbg.value(metadata !{i2 %k_5}, i64 0, metadata !90), !dbg !251 ; [debug line = 131:69] [debug variable = k]
  %kForeground_cast = zext i2 %k_11 to i3, !dbg !259 ; [#uses=1 type=i3] [debug line = 136:29]
  call void @llvm.dbg.value(metadata !{i2 %k_11}, i64 0, metadata !261), !dbg !259 ; [debug line = 136:29] [debug variable = kForeground]
  br label %.loopexit, !dbg !262                  ; [debug line = 137:29]

.loopexit:                                        ; preds = %21, %.preheader, %.loopexit7
  %kForeground3_1 = phi i3 [ %kForeground_cast, %21 ], [ -1, %.loopexit7 ], [ -1, %.preheader ] ; [#uses=1 type=i3]
  %tmp_79 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit2, i32 1), !dbg !263 ; [#uses=1 type=i1] [debug line = 142:17]
  %slt1 = icmp slt i3 %kHit2_cast, %kForeground3_1, !dbg !263 ; [#uses=1 type=i1] [debug line = 142:17]
  %rev1 = xor i1 %slt1, true, !dbg !263           ; [#uses=1 type=i1] [debug line = 142:17]
  %tmp_28 = or i1 %tmp_79, %rev1, !dbg !263       ; [#uses=1 type=i1] [debug line = 142:17]
  %frame_out_addr = getelementptr [1280 x i1]* %frame_out, i64 0, i64 %sum2_cast, !dbg !263 ; [#uses=1 type=i1*] [debug line = 142:17]
  store i1 %tmp_28, i1* %frame_out_addr, align 1, !dbg !263 ; [debug line = 142:17]
  call void @llvm.dbg.value(metadata !{i9 %x_2}, i64 0, metadata !225), !dbg !229 ; [debug line = 108:35] [debug variable = x]
  %p_rec = add i10 %mptr_2_rec, 2, !dbg !229      ; [#uses=1 type=i10] [debug line = 108:35]
  br label %.preheader41, !dbg !229               ; [debug line = 108:35]

.loopexit42:                                      ; preds = %.preheader41, %.preheader46
  %mptr_3_rec = add i12 %mptr_0_rec, 640          ; [#uses=1 type=i12]
  call void @llvm.dbg.value(metadata !{i3 %y_1}, i64 0, metadata !264), !dbg !77 ; [debug line = 28:27] [debug variable = y]
  br label %1, !dbg !77                           ; [debug line = 28:27]

; <label>:22                                      ; preds = %1
  ret void, !dbg !265                             ; [debug line = 146:1]
}

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

; [#uses=92]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @bgsub(i8* %gmem, float* %gmem_offset, i32 %frame_in, i32 %frame_out, i1 %init, i32 %bgmodel_sortKey, i32 %bgmodel_weight, i32 %bgmodel_mean, i32 %bgmodel_var) {
codeRepl:
  %bgmodel_var_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_var) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_var_read}, i64 0, metadata !266), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.var]
  %bgmodel_mean_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_mean) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_mean_read}, i64 0, metadata !276), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.mean]
  %bgmodel_weight_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_weight) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_weight_read}, i64 0, metadata !278), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.weight]
  %bgmodel_sortKey_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_sortKey) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_sortKey_read}, i64 0, metadata !280), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.sortKey]
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %init_read}, i64 0, metadata !282), !dbg !283 ; [debug line = 150:11] [debug variable = init]
  %frame_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_out) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_out_read}, i64 0, metadata !284), !dbg !288 ; [debug line = 149:20] [debug variable = frame_out]
  %frame_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_in) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_in_read}, i64 0, metadata !289), !dbg !290 ; [debug line = 148:20] [debug variable = frame_in]
  %bgmodel_var1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_var_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp = zext i30 %bgmodel_var1 to i64            ; [#uses=1 type=i64]
  %gmem_offset_addr = getelementptr float* %gmem_offset, i64 %tmp ; [#uses=1 type=float*]
  %bgmodel_mean9 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_mean_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_36 = zext i30 %bgmodel_mean9 to i64        ; [#uses=1 type=i64]
  %gmem_offset_addr_1 = getelementptr float* %gmem_offset, i64 %tmp_36 ; [#uses=1 type=float*]
  %bgmodel_weight7 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_weight_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_37 = zext i30 %bgmodel_weight7 to i64      ; [#uses=1 type=i64]
  %gmem_offset_addr_2 = getelementptr float* %gmem_offset, i64 %tmp_37 ; [#uses=1 type=float*]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset), !map !291
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !300
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1805) nounwind, !dbg !307 ; [debug line = 153:1]
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init), !map !309
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @bgsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset, float* %gmem_offset_addr_2, float* %gmem_offset_addr_1, float* %gmem_offset_addr, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %bgmodel_sortKey, i32 %bgmodel_weight, i32 %bgmodel_mean, i32 %bgmodel_var, [10 x i8]* @mode13, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @bundle14, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 1, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind, !dbg !315 ; [debug line = 155:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle6, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void @llvm.dbg.value(metadata !{i32 %frame_in}, i64 0, metadata !289), !dbg !290 ; [debug line = 148:20] [debug variable = frame_in]
  call void @llvm.dbg.value(metadata !{i32 %frame_out}, i64 0, metadata !284), !dbg !288 ; [debug line = 149:20] [debug variable = frame_out]
  call void @llvm.dbg.value(metadata !{i1 %init}, i64 0, metadata !282), !dbg !283 ; [debug line = 150:11] [debug variable = init]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_sortKey}, i64 0, metadata !280), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.sortKey]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_weight}, i64 0, metadata !278), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.weight]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_mean}, i64 0, metadata !276), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.mean]
  call void @llvm.dbg.value(metadata !{i32 %bgmodel_var}, i64 0, metadata !266), !dbg !275 ; [debug line = 151:14] [debug variable = bgmodel.var]
  call fastcc void @bgsub_Block__proc(i1 %init_read, float* %gmem_offset, i32 %bgmodel_sortKey_read, i32 %bgmodel_weight_read, i32 %bgmodel_mean_read, i32 %bgmodel_var_read, i8* %gmem, i32 %frame_out_read, i32 %frame_in_read)
  ret void, !dbg !316                             ; [debug line = 218:1]
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

; [#uses=12]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=12]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

; [#uses=12]
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

; [#uses=12]
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

; [#uses=8]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=6]
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

; [#uses=8]
define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=6]
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

; [#uses=12]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_8 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_8
}

; [#uses=7]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_9 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_9
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=0]
declare i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; [#uses=1 type=i12]
  %empty_10 = trunc i12 %empty to i11             ; [#uses=1 type=i11]
  ret i11 %empty_10
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
  %empty_11 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_12 = icmp ne i32 %empty_11, 0            ; [#uses=1 type=i1]
  ret i1 %empty_12
}

; [#uses=7]
define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2                     ; [#uses=1 type=i2]
  %empty_13 = shl i2 1, %empty                    ; [#uses=1 type=i2]
  %empty_14 = and i2 %0, %empty_13                ; [#uses=1 type=i2]
  %empty_15 = icmp ne i2 %empty_14, 0             ; [#uses=1 type=i1]
  ret i1 %empty_15
}

; [#uses=2]
define weak i17 @_ssdm_op_BitConcatenate.i17.i6.i11(i6, i11) nounwind readnone {
entry:
  %empty = zext i6 %0 to i17                      ; [#uses=1 type=i17]
  %empty_16 = zext i11 %1 to i17                  ; [#uses=1 type=i17]
  %empty_17 = shl i17 %empty, 11                  ; [#uses=1 type=i17]
  %empty_18 = or i17 %empty_17, %empty_16         ; [#uses=1 type=i17]
  ret i17 %empty_18
}

; [#uses=2]
define weak i16 @_ssdm_op_BitConcatenate.i16.i6.i10(i6, i10) nounwind readnone {
entry:
  %empty = zext i6 %0 to i16                      ; [#uses=1 type=i16]
  %empty_19 = zext i10 %1 to i16                  ; [#uses=1 type=i16]
  %empty_20 = shl i16 %empty, 10                  ; [#uses=1 type=i16]
  %empty_21 = or i16 %empty_20, %empty_19         ; [#uses=1 type=i16]
  ret i16 %empty_21
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i6.i9(i6, i9) nounwind readnone {
entry:
  %empty = zext i6 %0 to i15                      ; [#uses=1 type=i15]
  %empty_22 = zext i9 %1 to i15                   ; [#uses=1 type=i15]
  %empty_23 = shl i15 %empty, 9                   ; [#uses=1 type=i15]
  %empty_24 = or i15 %empty_23, %empty_22         ; [#uses=1 type=i15]
  ret i15 %empty_24
}

; [#uses=2]
define weak i14 @_ssdm_op_BitConcatenate.i14.i6.i8(i6, i8) nounwind readnone {
entry:
  %empty = zext i6 %0 to i14                      ; [#uses=1 type=i14]
  %empty_25 = zext i8 %1 to i14                   ; [#uses=1 type=i14]
  %empty_26 = shl i14 %empty, 8                   ; [#uses=1 type=i14]
  %empty_27 = or i14 %empty_26, %empty_25         ; [#uses=1 type=i14]
  ret i14 %empty_27
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12                     ; [#uses=1 type=i12]
  %empty_28 = zext i1 %1 to i12                   ; [#uses=1 type=i12]
  %empty_29 = shl i12 %empty, 1                   ; [#uses=1 type=i12]
  %empty_30 = or i12 %empty_29, %empty_28         ; [#uses=1 type=i12]
  ret i12 %empty_30
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i2.i2.i6(i2, i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %1 to i8                       ; [#uses=1 type=i8]
  %empty_31 = zext i6 %2 to i8                    ; [#uses=1 type=i8]
  %empty_32 = shl i8 %empty, 6                    ; [#uses=1 type=i8]
  %empty_33 = or i8 %empty_32, %empty_31          ; [#uses=1 type=i8]
  %empty_34 = zext i2 %0 to i10                   ; [#uses=1 type=i10]
  %empty_35 = zext i8 %empty_33 to i10            ; [#uses=1 type=i10]
  %empty_36 = shl i10 %empty_34, 8                ; [#uses=1 type=i10]
  %empty_37 = or i10 %empty_36, %empty_35         ; [#uses=1 type=i10]
  ret i10 %empty_37
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define internal fastcc void @bgsub_Block__proc(i1 %init, float* %bgmodel_sortKey, i32 %bgmodel_sortKey1, i32 %bgmodel_weight, i32 %bgmodel_mean, i32 %bgmodel_var, i8* %frame_out, i32 %frame_out2, i32 %frame_in) {
newFuncRoot:
  %frame_in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_in) ; [#uses=1 type=i32]
  %frame_out2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_out2) ; [#uses=1 type=i32]
  %bgmodel_var_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_var) ; [#uses=1 type=i32]
  %bgmodel_mean_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_mean) ; [#uses=1 type=i32]
  %bgmodel_weight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_weight) ; [#uses=1 type=i32]
  %bgmodel_sortKey1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_sortKey1) ; [#uses=1 type=i32]
  %init_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %init) ; [#uses=1 type=i1]
  %tmp_61_cast = sext i32 %frame_in_read to i33   ; [#uses=2 type=i33]
  %tmp_62_cast = sext i32 %frame_out2_read to i33 ; [#uses=2 type=i33]
  %tmp_86 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_var_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_63_cast = zext i30 %tmp_86 to i31          ; [#uses=5 type=i31]
  %tmp_87 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_mean_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_64_cast = zext i30 %tmp_87 to i31          ; [#uses=5 type=i31]
  %tmp_88 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_weight_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_65_cast = zext i30 %tmp_88 to i31          ; [#uses=5 type=i31]
  %tmp_89 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_sortKey1_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_66_cast = zext i30 %tmp_89 to i31          ; [#uses=5 type=i31]
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  %part_bgmodel_sortKey = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part_bgmodel_weight = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part_bgmodel_mean = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part_bgmodel_var = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part_frame_in = alloca [1280 x i8], align 16   ; [#uses=2 type=[1280 x i8]*]
  %part_frame_out = alloca [1280 x i1], align 1   ; [#uses=2 type=[1280 x i1]*]
  %part2_bgmodel_sortKey = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part2_bgmodel_weight = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part2_bgmodel_mean = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part2_bgmodel_var = alloca [2560 x float], align 4 ; [#uses=3 type=[2560 x float]*]
  %part2_frame_in = alloca [1280 x i8], align 16  ; [#uses=2 type=[1280 x i8]*]
  %part2_frame_out = alloca [1280 x i1], align 1  ; [#uses=2 type=[1280 x i1]*]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part_bgmodel_sortKey}, metadata !317), !dbg !320 ; [debug line = 160:10] [debug variable = part_bgmodel.sortKey]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part_bgmodel_weight}, metadata !321), !dbg !320 ; [debug line = 160:10] [debug variable = part_bgmodel.weight]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part_bgmodel_mean}, metadata !322), !dbg !320 ; [debug line = 160:10] [debug variable = part_bgmodel.mean]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part_bgmodel_var}, metadata !323), !dbg !320 ; [debug line = 160:10] [debug variable = part_bgmodel.var]
  call void @llvm.dbg.declare(metadata !{[1280 x i8]* %part_frame_in}, metadata !324), !dbg !326 ; [debug line = 161:13] [debug variable = part_frame_in]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part2_bgmodel_sortKey}, metadata !327), !dbg !329 ; [debug line = 165:13] [debug variable = part2_bgmodel.sortKey]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part2_bgmodel_weight}, metadata !330), !dbg !329 ; [debug line = 165:13] [debug variable = part2_bgmodel.weight]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part2_bgmodel_mean}, metadata !331), !dbg !329 ; [debug line = 165:13] [debug variable = part2_bgmodel.mean]
  call void @llvm.dbg.declare(metadata !{[2560 x float]* %part2_bgmodel_var}, metadata !332), !dbg !329 ; [debug line = 165:13] [debug variable = part2_bgmodel.var]
  call void @llvm.dbg.declare(metadata !{[1280 x i8]* %part2_frame_in}, metadata !333), !dbg !334 ; [debug line = 166:13] [debug variable = part2_frame_in]
  br i1 %init_read, label %.preheader, label %.loopexit, !dbg !335 ; [debug line = 170:5]

.exitStub:                                        ; preds = %1
  ret void

.preheader:                                       ; preds = %0, %newFuncRoot
  %p = phi i18 [ %p_1, %0 ], [ 0, %newFuncRoot ]  ; [#uses=3 type=i18]
  %exitcond = icmp eq i18 %p, -108544, !dbg !336  ; [#uses=1 type=i1] [debug line = 178:20]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 153600, i64 153600, i64 153600)
  %p_1 = add i18 %p, 1, !dbg !339                 ; [#uses=1 type=i18] [debug line = 178:62]
  br i1 %exitcond, label %.loopexit, label %0, !dbg !336 ; [debug line = 178:20]

.loopexit:                                        ; preds = %.preheader, %newFuncRoot
  %learningRate = phi float [ 0.000000e+00, %newFuncRoot ], [ 1.000000e+00, %.preheader ] ; [#uses=2 type=float]
  br label %1, !dbg !340                          ; [debug line = 190:19]

; <label>:0                                       ; preds = %.preheader
  %tmp_cast = zext i18 %p to i31                  ; [#uses=4 type=i31]
  %sum = add i31 %tmp_66_cast, %tmp_cast          ; [#uses=1 type=i31]
  %sum_cast = zext i31 %sum to i64                ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr = getelementptr float* %bgmodel_sortKey, i64 %sum_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr, i32 1), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr, float 0.000000e+00, i4 -1), !dbg !342 ; [debug line = 179:13]
  %bgmodel_sortKey_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  %sum1 = add i31 %tmp_65_cast, %tmp_cast         ; [#uses=1 type=i31]
  %sum1_cast = zext i31 %sum1 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_5 = getelementptr float* %bgmodel_sortKey, i64 %sum1_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_5, i32 1), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_5, float 0.000000e+00, i4 -1), !dbg !342 ; [debug line = 179:13]
  %bgmodel_sortKey_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_5), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  %sum2 = add i31 %tmp_64_cast, %tmp_cast         ; [#uses=1 type=i31]
  %sum2_cast = zext i31 %sum2 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_6 = getelementptr float* %bgmodel_sortKey, i64 %sum2_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_6, i32 1), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_6, float 0.000000e+00, i4 -1), !dbg !342 ; [debug line = 179:13]
  %bgmodel_sortKey_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_6), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  %sum3 = add i31 %tmp_63_cast, %tmp_cast         ; [#uses=1 type=i31]
  %sum3_cast = zext i31 %sum3 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_7 = getelementptr float* %bgmodel_sortKey, i64 %sum3_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_7, i32 1), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_7, float 0.000000e+00, i4 -1), !dbg !342 ; [debug line = 179:13]
  %bgmodel_sortKey_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_7), !dbg !342 ; [#uses=0 type=i1] [debug line = 179:13]
  call void @llvm.dbg.value(metadata !{i18 %p_1}, i64 0, metadata !343), !dbg !339 ; [debug line = 178:62] [debug variable = p]
  br label %.preheader, !dbg !339                 ; [debug line = 178:62]

; <label>:1                                       ; preds = %burst.wr.end30, %.loopexit
  %part = phi i6 [ 0, %.loopexit ], [ %part_1, %burst.wr.end30 ] ; [#uses=7 type=i6]
  %tmp_34 = icmp ult i6 %part, -4, !dbg !340      ; [#uses=1 type=i1] [debug line = 190:19]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 30, i64 30, i64 30)
  br i1 %tmp_34, label %2, label %.exitStub, !dbg !340 ; [debug line = 190:19]

burst.wr.end30:                                   ; preds = %burst.wr.header31
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_4), !dbg !344 ; [#uses=0 type=i1] [debug line = 210:9]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1812, i32 %tmp_47), !dbg !347 ; [#uses=0 type=i32] [debug line = 211:6]
  %part_1 = add i6 %part, 2, !dbg !348            ; [#uses=1 type=i6] [debug line = 190:28]
  call void @llvm.dbg.value(metadata !{i6 %part_1}, i64 0, metadata !349), !dbg !348 ; [debug line = 190:28] [debug variable = part]
  br label %1, !dbg !348                          ; [debug line = 190:28]

burst.wr.header31:                                ; preds = %burst.wr.header31.preheader, %burst.wr.body32
  %indvar3 = phi i11 [ %indvar_next3, %burst.wr.body32 ], [ 0, %burst.wr.header31.preheader ] ; [#uses=3 type=i11]
  %exitcond6 = icmp eq i11 %indvar3, -768         ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next3 = add i11 %indvar3, 1             ; [#uses=1 type=i11]
  br i1 %exitcond6, label %burst.wr.end30, label %burst.wr.body32

burst.wr.body32:                                  ; preds = %burst.wr.header31
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_38 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15) nounwind ; [#uses=0 type=i32]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind ; [#uses=0 type=i32]
  %tmp_59 = zext i11 %indvar3 to i64, !dbg !344   ; [#uses=1 type=i64] [debug line = 210:9]
  %part2_frame_out_addr = getelementptr [1280 x i1]* %part2_frame_out, i64 0, i64 %tmp_59, !dbg !344 ; [#uses=1 type=i1*] [debug line = 210:9]
  %part2_frame_out_load = load i1* %part2_frame_out_addr, align 1 ; [#uses=1 type=i1]
  %extLd1 = select i1 %part2_frame_out_load, i8 -1, i8 0 ; [#uses=1 type=i8]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_4, i8 %extLd1, i1 true), !dbg !344 ; [debug line = 210:9]
  %burstwrite_rend43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header31

burst.wr.header134:                               ; preds = %burst.wr.header134.preheader, %burst.wr.body135
  %indvar7 = phi i12 [ %indvar_next7, %burst.wr.body135 ], [ 0, %burst.wr.header134.preheader ] ; [#uses=4 type=i12]
  %indvar7_cast = zext i12 %indvar7 to i18        ; [#uses=1 type=i18]
  %exitcond2 = icmp eq i12 %indvar7, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next7 = add i12 %indvar7, 1             ; [#uses=1 type=i12]
  br i1 %exitcond2, label %burst.wr.header31.preheader, label %burst.wr.body135

burst.wr.header31.preheader:                      ; preds = %burst.wr.header134
  %tmp_98 = add i33 %tmp_93, %tmp_62_cast         ; [#uses=1 type=i33]
  %tmp_99 = sext i33 %tmp_98 to i64               ; [#uses=1 type=i64]
  %frame_out_addr_4 = getelementptr i8* %frame_out, i64 %tmp_99 ; [#uses=3 type=i8*]
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_4, i32 1280), !dbg !344 ; [#uses=0 type=i1] [debug line = 210:9]
  br label %burst.wr.header31

burst.wr.body135:                                 ; preds = %burst.wr.header134
  %burstwrite_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) ; [#uses=1 type=i32]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopName([46 x i8]* @memcpy_OC_bgmodel_OC_var_OC_pa_1) ; [#uses=0 type=i32]
  %tmp_56 = zext i12 %indvar7 to i64, !dbg !350   ; [#uses=4 type=i64] [debug line = 209:9]
  %part2_bgmodel_sortKey_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_sortKey, i64 0, i64 %tmp_56, !dbg !350 ; [#uses=1 type=float*] [debug line = 209:9]
  %part2_bgmodel_sortKey_load = load float* %part2_bgmodel_sortKey_addr_1, align 4, !dbg !350 ; [#uses=1 type=float] [debug line = 209:9]
  %tmp_57 = add i18 %indvar7_cast, %tmp_44        ; [#uses=1 type=i18]
  %tmp_58_cast = zext i18 %tmp_57 to i31          ; [#uses=4 type=i31]
  %sum5 = add i31 %tmp_66_cast, %tmp_58_cast      ; [#uses=1 type=i31]
  %sum5_cast = zext i31 %sum5 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_20 = getelementptr float* %bgmodel_sortKey, i64 %sum5_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_24_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_20, i32 1), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_20, float %part2_bgmodel_sortKey_load, i4 -1), !dbg !350 ; [debug line = 209:9]
  %bgmodel_sortKey_addr_24_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_20), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  %part2_bgmodel_weight_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_weight, i64 0, i64 %tmp_56, !dbg !350 ; [#uses=1 type=float*] [debug line = 209:9]
  %part2_bgmodel_weight_load = load float* %part2_bgmodel_weight_addr_1, align 4, !dbg !350 ; [#uses=1 type=float] [debug line = 209:9]
  %sum17 = add i31 %tmp_65_cast, %tmp_58_cast     ; [#uses=1 type=i31]
  %sum17_cast = zext i31 %sum17 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_21 = getelementptr float* %bgmodel_sortKey, i64 %sum17_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_25_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_21, i32 1), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_21, float %part2_bgmodel_weight_load, i4 -1), !dbg !350 ; [debug line = 209:9]
  %bgmodel_sortKey_addr_25_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_21), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  %part2_bgmodel_mean_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_mean, i64 0, i64 %tmp_56, !dbg !350 ; [#uses=1 type=float*] [debug line = 209:9]
  %part2_bgmodel_mean_load = load float* %part2_bgmodel_mean_addr_1, align 4, !dbg !350 ; [#uses=1 type=float] [debug line = 209:9]
  %sum18 = add i31 %tmp_64_cast, %tmp_58_cast     ; [#uses=1 type=i31]
  %sum21_cast = zext i31 %sum18 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_22 = getelementptr float* %bgmodel_sortKey, i64 %sum21_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_26_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_22, i32 1), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_22, float %part2_bgmodel_mean_load, i4 -1), !dbg !350 ; [debug line = 209:9]
  %bgmodel_sortKey_addr_26_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_22), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  %part2_bgmodel_var_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_var, i64 0, i64 %tmp_56, !dbg !350 ; [#uses=1 type=float*] [debug line = 209:9]
  %part2_bgmodel_var_load = load float* %part2_bgmodel_var_addr_1, align 4, !dbg !350 ; [#uses=1 type=float] [debug line = 209:9]
  %sum19 = add i31 %tmp_63_cast, %tmp_58_cast     ; [#uses=1 type=i31]
  %sum22_cast = zext i31 %sum19 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_23 = getelementptr float* %bgmodel_sortKey, i64 %sum22_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_27_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_23, i32 1), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_23, float %part2_bgmodel_var_load, i4 -1), !dbg !350 ; [debug line = 209:9]
  %bgmodel_sortKey_addr_27_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_23), !dbg !350 ; [#uses=0 type=i1] [debug line = 209:9]
  %burstwrite_rend168 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin3) ; [#uses=0 type=i32]
  br label %burst.wr.header134

burst.wr.header:                                  ; preds = %burst.wr.header.preheader, %burst.wr.body
  %indvar2 = phi i11 [ %indvar_next2, %burst.wr.body ], [ 0, %burst.wr.header.preheader ] ; [#uses=3 type=i11]
  %exitcond5 = icmp eq i11 %indvar2, -768         ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next2 = add i11 %indvar2, 1             ; [#uses=1 type=i11]
  br i1 %exitcond5, label %burst.wr.header134.preheader, label %burst.wr.body

burst.wr.header134.preheader:                     ; preds = %burst.wr.header
  %p_wr_resp267 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_3), !dbg !351 ; [#uses=0 type=i1] [debug line = 208:9]
  br label %burst.wr.header134

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind ; [#uses=0 type=i32]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind ; [#uses=0 type=i32]
  %tmp_54 = zext i11 %indvar2 to i64, !dbg !351   ; [#uses=1 type=i64] [debug line = 208:9]
  %part_frame_out_addr = getelementptr [1280 x i1]* %part_frame_out, i64 0, i64 %tmp_54, !dbg !351 ; [#uses=1 type=i1*] [debug line = 208:9]
  %part_frame_out_load = load i1* %part_frame_out_addr, align 1 ; [#uses=1 type=i1]
  %extLd = select i1 %part_frame_out_load, i8 -1, i8 0 ; [#uses=1 type=i8]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_3, i8 %extLd, i1 true), !dbg !351 ; [debug line = 208:9]
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header

burst.wr.header97:                                ; preds = %burst.wr.body98, %burst.rd.end64
  %indvar6 = phi i12 [ 0, %burst.rd.end64 ], [ %indvar_next6, %burst.wr.body98 ] ; [#uses=4 type=i12]
  %indvar6_cast = zext i12 %indvar6 to i18        ; [#uses=1 type=i18]
  %exitcond9 = icmp eq i12 %indvar6, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next6 = add i12 %indvar6, 1             ; [#uses=1 type=i12]
  br i1 %exitcond9, label %burst.wr.header.preheader, label %burst.wr.body98

burst.wr.header.preheader:                        ; preds = %burst.wr.header97
  %tmp_96 = add i33 %tmp_90, %tmp_62_cast         ; [#uses=1 type=i33]
  %tmp_97 = sext i33 %tmp_96 to i64               ; [#uses=1 type=i64]
  %frame_out_addr_3 = getelementptr i8* %frame_out, i64 %tmp_97 ; [#uses=3 type=i8*]
  %p_wr_req266 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_3, i32 1280), !dbg !351 ; [#uses=0 type=i1] [debug line = 208:9]
  br label %burst.wr.header

burst.rd.end64:                                   ; preds = %burst.rd.header65
  %empty_44 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1810, i32 %tmp), !dbg !352 ; [#uses=0 type=i32] [debug line = 197:6]
  call fastcc void @bgsub_process([1280 x i8]* %part_frame_in, [1280 x i1]* %part_frame_out, [2560 x float]* %part_bgmodel_sortKey, [2560 x float]* %part_bgmodel_weight, [2560 x float]* %part_bgmodel_mean, [2560 x float]* %part_bgmodel_var, float %learningRate), !dbg !354 ; [debug line = 200:9]
  call fastcc void @bgsub_process([1280 x i8]* %part2_frame_in, [1280 x i1]* %part2_frame_out, [2560 x float]* %part2_bgmodel_sortKey, [2560 x float]* %part2_bgmodel_weight, [2560 x float]* %part2_bgmodel_mean, [2560 x float]* %part2_bgmodel_var, float %learningRate), !dbg !356 ; [debug line = 202:9]
  %tmp_47 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1812), !dbg !357 ; [#uses=1 type=i32] [debug line = 206:17]
  br label %burst.wr.header97

burst.rd.header65:                                ; preds = %burst.rd.body66, %burst.rd.end7
  %indvar5 = phi i12 [ 0, %burst.rd.end7 ], [ %indvar_next5, %burst.rd.body66 ] ; [#uses=4 type=i12]
  %indvar5_cast = zext i12 %indvar5 to i18        ; [#uses=1 type=i18]
  %exitcond8 = icmp eq i12 %indvar5, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next5 = add i12 %indvar5, 1             ; [#uses=1 type=i12]
  br i1 %exitcond8, label %burst.rd.end64, label %burst.rd.body66

burst.rd.end7:                                    ; preds = %burst.rd.header8
  %p_shl7 = call i17 @_ssdm_op_BitConcatenate.i17.i6.i11(i6 %tmp_39, i11 0), !dbg !358 ; [#uses=1 type=i17] [debug line = 196:9]
  %p_shl7_cast = zext i17 %p_shl7 to i18, !dbg !358 ; [#uses=1 type=i18] [debug line = 196:9]
  %p_shl8 = call i15 @_ssdm_op_BitConcatenate.i15.i6.i9(i6 %tmp_39, i9 0), !dbg !358 ; [#uses=1 type=i15] [debug line = 196:9]
  %p_shl8_cast = zext i15 %p_shl8 to i18, !dbg !358 ; [#uses=1 type=i18] [debug line = 196:9]
  %tmp_44 = add i18 %p_shl8_cast, %p_shl7_cast, !dbg !358 ; [#uses=2 type=i18] [debug line = 196:9]
  br label %burst.rd.header65

burst.rd.header8:                                 ; preds = %burst.rd.body9, %burst.rd.end37
  %indvar1 = phi i11 [ 0, %burst.rd.end37 ], [ %indvar_next1, %burst.rd.body9 ] ; [#uses=3 type=i11]
  %exitcond4 = icmp eq i11 %indvar1, -768         ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next1 = add i11 %indvar1, 1             ; [#uses=1 type=i11]
  br i1 %exitcond4, label %burst.rd.end7, label %burst.rd.body9

burst.rd.end37:                                   ; preds = %burst.rd.header38
  %tmp_39 = or i6 %part, 1, !dbg !359             ; [#uses=4 type=i6] [debug line = 195:9]
  %p_shl5 = call i16 @_ssdm_op_BitConcatenate.i16.i6.i10(i6 %tmp_39, i10 0), !dbg !359 ; [#uses=1 type=i16] [debug line = 195:9]
  %p_shl5_cast = zext i16 %p_shl5 to i17, !dbg !359 ; [#uses=1 type=i17] [debug line = 195:9]
  %p_shl6 = call i14 @_ssdm_op_BitConcatenate.i14.i6.i8(i6 %tmp_39, i8 0), !dbg !359 ; [#uses=1 type=i14] [debug line = 195:9]
  %p_shl6_cast = zext i14 %p_shl6 to i17, !dbg !359 ; [#uses=1 type=i17] [debug line = 195:9]
  %tmp_40 = add i17 %p_shl5_cast, %p_shl6_cast, !dbg !359 ; [#uses=1 type=i17] [debug line = 195:9]
  %tmp_93 = zext i17 %tmp_40 to i33               ; [#uses=2 type=i33]
  %tmp_94 = add i33 %tmp_61_cast, %tmp_93         ; [#uses=1 type=i33]
  %tmp_95 = sext i33 %tmp_94 to i64               ; [#uses=1 type=i64]
  %frame_out_addr_2 = getelementptr i8* %frame_out, i64 %tmp_95 ; [#uses=2 type=i8*]
  %p_rd_req268 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr_2, i32 1280), !dbg !359 ; [#uses=0 type=i1] [debug line = 195:9]
  br label %burst.rd.header8

burst.rd.header38:                                ; preds = %burst.rd.body39, %burst.rd.end
  %indvar4 = phi i12 [ 0, %burst.rd.end ], [ %indvar_next4, %burst.rd.body39 ] ; [#uses=4 type=i12]
  %indvar4_cast = zext i12 %indvar4 to i18        ; [#uses=1 type=i18]
  %exitcond7 = icmp eq i12 %indvar4, -1536        ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next4 = add i12 %indvar4, 1             ; [#uses=1 type=i12]
  br i1 %exitcond7, label %burst.rd.end37, label %burst.rd.body39

burst.rd.end:                                     ; preds = %burst.rd.header
  %p_shl3 = call i17 @_ssdm_op_BitConcatenate.i17.i6.i11(i6 %part, i11 0), !dbg !360 ; [#uses=1 type=i17] [debug line = 194:9]
  %p_shl3_cast = zext i17 %p_shl3 to i18, !dbg !360 ; [#uses=1 type=i18] [debug line = 194:9]
  %p_shl4 = call i15 @_ssdm_op_BitConcatenate.i15.i6.i9(i6 %part, i9 0), !dbg !360 ; [#uses=1 type=i15] [debug line = 194:9]
  %p_shl4_cast = zext i15 %p_shl4 to i18, !dbg !360 ; [#uses=1 type=i18] [debug line = 194:9]
  %tmp_36 = add i18 %p_shl4_cast, %p_shl3_cast, !dbg !360 ; [#uses=2 type=i18] [debug line = 194:9]
  br label %burst.rd.header38

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i11 [ 0, %2 ], [ %indvar_next, %burst.rd.body ] ; [#uses=3 type=i11]
  %exitcond1 = icmp eq i11 %indvar, -768          ; [#uses=1 type=i1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next = add i11 %indvar, 1               ; [#uses=1 type=i11]
  br i1 %exitcond1, label %burst.rd.end, label %burst.rd.body

; <label>:2                                       ; preds = %1
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1810), !dbg !361 ; [#uses=1 type=i32] [debug line = 192:16]
  %p_shl = call i16 @_ssdm_op_BitConcatenate.i16.i6.i10(i6 %part, i10 0), !dbg !362 ; [#uses=1 type=i16] [debug line = 193:9]
  %p_shl_cast = zext i16 %p_shl to i17, !dbg !362 ; [#uses=1 type=i17] [debug line = 193:9]
  %p_shl2 = call i14 @_ssdm_op_BitConcatenate.i14.i6.i8(i6 %part, i8 0), !dbg !362 ; [#uses=1 type=i14] [debug line = 193:9]
  %p_shl2_cast = zext i14 %p_shl2 to i17, !dbg !362 ; [#uses=1 type=i17] [debug line = 193:9]
  %tmp_35 = add i17 %p_shl_cast, %p_shl2_cast, !dbg !362 ; [#uses=1 type=i17] [debug line = 193:9]
  %tmp_90 = zext i17 %tmp_35 to i33               ; [#uses=2 type=i33]
  %tmp_91 = add i33 %tmp_61_cast, %tmp_90         ; [#uses=1 type=i33]
  %tmp_92 = sext i33 %tmp_91 to i64               ; [#uses=1 type=i64]
  %frame_out_addr = getelementptr i8* %frame_out, i64 %tmp_92 ; [#uses=2 type=i8*]
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr, i32 1280), !dbg !362 ; [#uses=0 type=i1] [debug line = 193:9]
  br label %burst.rd.header

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind ; [#uses=0 type=i32]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind ; [#uses=0 type=i32]
  %frame_out_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr), !dbg !362 ; [#uses=1 type=i8] [debug line = 193:9]
  %tmp_38 = zext i11 %indvar to i64, !dbg !362    ; [#uses=1 type=i64] [debug line = 193:9]
  %part_frame_in_addr = getelementptr [1280 x i8]* %part_frame_in, i64 0, i64 %tmp_38, !dbg !362 ; [#uses=1 type=i8*] [debug line = 193:9]
  store i8 %frame_out_addr_read, i8* %part_frame_in_addr, align 1, !dbg !362 ; [debug line = 193:9]
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.body39:                                  ; preds = %burst.rd.header38
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) ; [#uses=1 type=i32]
  %empty_47 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecLoopName([45 x i8]* @memcpy_OC_part_bgmodel_OC_sort) ; [#uses=0 type=i32]
  %tmp_41 = add i18 %indvar4_cast, %tmp_36        ; [#uses=1 type=i18]
  %tmp_42_cast = zext i18 %tmp_41 to i31          ; [#uses=4 type=i31]
  %sum7 = add i31 %tmp_66_cast, %tmp_42_cast      ; [#uses=1 type=i31]
  %sum7_cast = zext i31 %sum7 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_8 = getelementptr float* %bgmodel_sortKey, i64 %sum7_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_8, i32 1), !dbg !360 ; [#uses=0 type=i1] [debug line = 194:9]
  %bgmodel_sortKey_addr_8_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_8), !dbg !360 ; [#uses=1 type=float] [debug line = 194:9]
  %tmp_43 = zext i12 %indvar4 to i64, !dbg !360   ; [#uses=4 type=i64] [debug line = 194:9]
  %part_bgmodel_sortKey_addr = getelementptr [2560 x float]* %part_bgmodel_sortKey, i64 0, i64 %tmp_43, !dbg !360 ; [#uses=1 type=float*] [debug line = 194:9]
  store float %bgmodel_sortKey_addr_8_read, float* %part_bgmodel_sortKey_addr, align 4, !dbg !360 ; [debug line = 194:9]
  %sum6 = add i31 %tmp_65_cast, %tmp_42_cast      ; [#uses=1 type=i31]
  %sum6_cast = zext i31 %sum6 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_9 = getelementptr float* %bgmodel_sortKey, i64 %sum6_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_9, i32 1), !dbg !360 ; [#uses=0 type=i1] [debug line = 194:9]
  %bgmodel_sortKey_addr_9_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_9), !dbg !360 ; [#uses=1 type=float] [debug line = 194:9]
  %part_bgmodel_weight_addr = getelementptr [2560 x float]* %part_bgmodel_weight, i64 0, i64 %tmp_43, !dbg !360 ; [#uses=1 type=float*] [debug line = 194:9]
  store float %bgmodel_sortKey_addr_9_read, float* %part_bgmodel_weight_addr, align 4, !dbg !360 ; [debug line = 194:9]
  %sum8 = add i31 %tmp_64_cast, %tmp_42_cast      ; [#uses=1 type=i31]
  %sum8_cast = zext i31 %sum8 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_10 = getelementptr float* %bgmodel_sortKey, i64 %sum8_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_10, i32 1), !dbg !360 ; [#uses=0 type=i1] [debug line = 194:9]
  %bgmodel_sortKey_addr_10_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_10), !dbg !360 ; [#uses=1 type=float] [debug line = 194:9]
  %part_bgmodel_mean_addr = getelementptr [2560 x float]* %part_bgmodel_mean, i64 0, i64 %tmp_43, !dbg !360 ; [#uses=1 type=float*] [debug line = 194:9]
  store float %bgmodel_sortKey_addr_10_read, float* %part_bgmodel_mean_addr, align 4, !dbg !360 ; [debug line = 194:9]
  %sum4 = add i31 %tmp_63_cast, %tmp_42_cast      ; [#uses=1 type=i31]
  %sum10_cast = zext i31 %sum4 to i64             ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_11 = getelementptr float* %bgmodel_sortKey, i64 %sum10_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_11, i32 1), !dbg !360 ; [#uses=0 type=i1] [debug line = 194:9]
  %bgmodel_sortKey_addr_11_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_11), !dbg !360 ; [#uses=1 type=float] [debug line = 194:9]
  %part_bgmodel_var_addr = getelementptr [2560 x float]* %part_bgmodel_var, i64 0, i64 %tmp_43, !dbg !360 ; [#uses=1 type=float*] [debug line = 194:9]
  store float %bgmodel_sortKey_addr_11_read, float* %part_bgmodel_var_addr, align 4, !dbg !360 ; [debug line = 194:9]
  %burstread_rend62 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin2) ; [#uses=0 type=i32]
  br label %burst.rd.header38

burst.rd.body9:                                   ; preds = %burst.rd.header8
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind ; [#uses=1 type=i32]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind ; [#uses=0 type=i32]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind ; [#uses=0 type=i32]
  %frame_out_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr_2), !dbg !359 ; [#uses=1 type=i8] [debug line = 195:9]
  %tmp_46 = zext i11 %indvar1 to i64, !dbg !359   ; [#uses=1 type=i64] [debug line = 195:9]
  %part2_frame_in_addr = getelementptr [1280 x i8]* %part2_frame_in, i64 0, i64 %tmp_46, !dbg !359 ; [#uses=1 type=i8*] [debug line = 195:9]
  store i8 %frame_out_addr_2_read, i8* %part2_frame_in_addr, align 1, !dbg !359 ; [debug line = 195:9]
  %burstread_rend20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header8

burst.rd.body66:                                  ; preds = %burst.rd.header65
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) ; [#uses=1 type=i32]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopName([46 x i8]* @memcpy_OC_part2_bgmodel_OC_sor) ; [#uses=0 type=i32]
  %tmp_48 = add i18 %indvar5_cast, %tmp_44        ; [#uses=1 type=i18]
  %tmp_49_cast = zext i18 %tmp_48 to i31          ; [#uses=4 type=i31]
  %sum9 = add i31 %tmp_66_cast, %tmp_49_cast      ; [#uses=1 type=i31]
  %sum9_cast = zext i31 %sum9 to i64              ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_12 = getelementptr float* %bgmodel_sortKey, i64 %sum9_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_12, i32 1), !dbg !358 ; [#uses=0 type=i1] [debug line = 196:9]
  %bgmodel_sortKey_addr_12_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_12), !dbg !358 ; [#uses=1 type=float] [debug line = 196:9]
  %tmp_50 = zext i12 %indvar5 to i64, !dbg !358   ; [#uses=4 type=i64] [debug line = 196:9]
  %part2_bgmodel_sortKey_addr = getelementptr [2560 x float]* %part2_bgmodel_sortKey, i64 0, i64 %tmp_50, !dbg !358 ; [#uses=1 type=float*] [debug line = 196:9]
  store float %bgmodel_sortKey_addr_12_read, float* %part2_bgmodel_sortKey_addr, align 4, !dbg !358 ; [debug line = 196:9]
  %sum10 = add i31 %tmp_65_cast, %tmp_49_cast     ; [#uses=1 type=i31]
  %sum13_cast = zext i31 %sum10 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_13 = getelementptr float* %bgmodel_sortKey, i64 %sum13_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_13, i32 1), !dbg !358 ; [#uses=0 type=i1] [debug line = 196:9]
  %bgmodel_sortKey_addr_13_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_13), !dbg !358 ; [#uses=1 type=float] [debug line = 196:9]
  %part2_bgmodel_weight_addr = getelementptr [2560 x float]* %part2_bgmodel_weight, i64 0, i64 %tmp_50, !dbg !358 ; [#uses=1 type=float*] [debug line = 196:9]
  store float %bgmodel_sortKey_addr_13_read, float* %part2_bgmodel_weight_addr, align 4, !dbg !358 ; [debug line = 196:9]
  %sum12 = add i31 %tmp_64_cast, %tmp_49_cast     ; [#uses=1 type=i31]
  %sum14_cast = zext i31 %sum12 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_14 = getelementptr float* %bgmodel_sortKey, i64 %sum14_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_14, i32 1), !dbg !358 ; [#uses=0 type=i1] [debug line = 196:9]
  %bgmodel_sortKey_addr_14_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_14), !dbg !358 ; [#uses=1 type=float] [debug line = 196:9]
  %part2_bgmodel_mean_addr = getelementptr [2560 x float]* %part2_bgmodel_mean, i64 0, i64 %tmp_50, !dbg !358 ; [#uses=1 type=float*] [debug line = 196:9]
  store float %bgmodel_sortKey_addr_14_read, float* %part2_bgmodel_mean_addr, align 4, !dbg !358 ; [debug line = 196:9]
  %sum13 = add i31 %tmp_63_cast, %tmp_49_cast     ; [#uses=1 type=i31]
  %sum15_cast = zext i31 %sum13 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_15 = getelementptr float* %bgmodel_sortKey, i64 %sum15_cast ; [#uses=2 type=float*]
  %bgmodel_sortKey_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_15, i32 1), !dbg !358 ; [#uses=0 type=i1] [debug line = 196:9]
  %bgmodel_sortKey_addr_15_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_15), !dbg !358 ; [#uses=1 type=float] [debug line = 196:9]
  %part2_bgmodel_var_addr = getelementptr [2560 x float]* %part2_bgmodel_var, i64 0, i64 %tmp_50, !dbg !358 ; [#uses=1 type=float*] [debug line = 196:9]
  store float %bgmodel_sortKey_addr_15_read, float* %part2_bgmodel_var_addr, align 4, !dbg !358 ; [debug line = 196:9]
  %burstread_rend94 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin3) ; [#uses=0 type=i32]
  br label %burst.rd.header65

burst.wr.body98:                                  ; preds = %burst.wr.header97
  %burstwrite_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) ; [#uses=1 type=i32]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopName([45 x i8]* @memcpy_OC_bgmodel_OC_var_OC_pa) ; [#uses=0 type=i32]
  %tmp_51 = zext i12 %indvar6 to i64, !dbg !363   ; [#uses=4 type=i64] [debug line = 207:9]
  %part_bgmodel_sortKey_addr_1 = getelementptr [2560 x float]* %part_bgmodel_sortKey, i64 0, i64 %tmp_51, !dbg !363 ; [#uses=1 type=float*] [debug line = 207:9]
  %part_bgmodel_sortKey_load = load float* %part_bgmodel_sortKey_addr_1, align 4, !dbg !363 ; [#uses=1 type=float] [debug line = 207:9]
  %tmp_52 = add i18 %indvar6_cast, %tmp_36        ; [#uses=1 type=i18]
  %tmp_53_cast = zext i18 %tmp_52 to i31          ; [#uses=4 type=i31]
  %sum11 = add i31 %tmp_66_cast, %tmp_53_cast     ; [#uses=1 type=i31]
  %sum11_cast = zext i31 %sum11 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_16 = getelementptr float* %bgmodel_sortKey, i64 %sum11_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_20_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_16, i32 1), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_16, float %part_bgmodel_sortKey_load, i4 -1), !dbg !363 ; [debug line = 207:9]
  %bgmodel_sortKey_addr_20_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_16), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  %part_bgmodel_weight_addr_1 = getelementptr [2560 x float]* %part_bgmodel_weight, i64 0, i64 %tmp_51, !dbg !363 ; [#uses=1 type=float*] [debug line = 207:9]
  %part_bgmodel_weight_load = load float* %part_bgmodel_weight_addr_1, align 4, !dbg !363 ; [#uses=1 type=float] [debug line = 207:9]
  %sum14 = add i31 %tmp_65_cast, %tmp_53_cast     ; [#uses=1 type=i31]
  %sum16_cast = zext i31 %sum14 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_17 = getelementptr float* %bgmodel_sortKey, i64 %sum16_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_21_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_17, i32 1), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_17, float %part_bgmodel_weight_load, i4 -1), !dbg !363 ; [debug line = 207:9]
  %bgmodel_sortKey_addr_21_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_17), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  %part_bgmodel_mean_addr_1 = getelementptr [2560 x float]* %part_bgmodel_mean, i64 0, i64 %tmp_51, !dbg !363 ; [#uses=1 type=float*] [debug line = 207:9]
  %part_bgmodel_mean_load = load float* %part_bgmodel_mean_addr_1, align 4, !dbg !363 ; [#uses=1 type=float] [debug line = 207:9]
  %sum15 = add i31 %tmp_64_cast, %tmp_53_cast     ; [#uses=1 type=i31]
  %sum18_cast = zext i31 %sum15 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_18 = getelementptr float* %bgmodel_sortKey, i64 %sum18_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_22_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_18, i32 1), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_18, float %part_bgmodel_mean_load, i4 -1), !dbg !363 ; [debug line = 207:9]
  %bgmodel_sortKey_addr_22_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_18), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  %part_bgmodel_var_addr_1 = getelementptr [2560 x float]* %part_bgmodel_var, i64 0, i64 %tmp_51, !dbg !363 ; [#uses=1 type=float*] [debug line = 207:9]
  %part_bgmodel_var_load = load float* %part_bgmodel_var_addr_1, align 4, !dbg !363 ; [#uses=1 type=float] [debug line = 207:9]
  %sum16 = add i31 %tmp_63_cast, %tmp_53_cast     ; [#uses=1 type=i31]
  %sum19_cast = zext i31 %sum16 to i64            ; [#uses=1 type=i64]
  %bgmodel_sortKey_addr_19 = getelementptr float* %bgmodel_sortKey, i64 %sum19_cast ; [#uses=3 type=float*]
  %bgmodel_sortKey_addr_23_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_19, i32 1), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_19, float %part_bgmodel_var_load, i4 -1), !dbg !363 ; [debug line = 207:9]
  %bgmodel_sortKey_addr_23_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_19), !dbg !363 ; [#uses=0 type=i1] [debug line = 207:9]
  %burstwrite_rend131 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin2) ; [#uses=0 type=i32]
  br label %burst.wr.header97
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7, !8}
!axi4.slave.bundlemap = !{!9, !10, !11, !12, !13, !14}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !"gmem", metadata !"frame_in", metadata !"READONLY", metadata !"frame_out", metadata !"WRITEONLY"}
!8 = metadata !{metadata !"gmem_offset", metadata !"bgmodel.sortKey", metadata !"READWRITE", metadata !"bgmodel.weight", metadata !"READWRITE", metadata !"bgmodel.mean", metadata !"READWRITE", metadata !"bgmodel.var", metadata !"READWRITE"}
!9 = metadata !{metadata !"frame_in", metadata !""}
!10 = metadata !{metadata !"frame_out", metadata !""}
!11 = metadata !{metadata !"bgmodel.sortKey", metadata !""}
!12 = metadata !{metadata !"bgmodel.weight", metadata !""}
!13 = metadata !{metadata !"bgmodel.mean", metadata !""}
!14 = metadata !{metadata !"bgmodel.var", metadata !""}
!15 = metadata !{i32 786689, metadata !16, metadata !"learningRate", metadata !17, i32 67108884, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 786478, i32 0, metadata !17, metadata !"process", metadata !"process", metadata !"_Z7processPhS_P7MixDataf", metadata !17, i32 17, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 21} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786473, metadata !"backsub_gmm_new_180110/core.cpp", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20, metadata !20, metadata !23, metadata !33}
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !17, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786434, null, metadata !"MixData", metadata !25, i32 23, i64 128, i64 32, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_class_type ]
!25 = metadata !{i32 786473, metadata !"backsub_gmm_new_180110/core.h", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!26 = metadata !{metadata !27, metadata !30, metadata !31, metadata !32}
!27 = metadata !{i32 786445, metadata !24, metadata !"sortKey", metadata !25, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 786454, null, metadata !"data_t", metadata !25, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786445, metadata !24, metadata !"weight", metadata !25, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ]
!31 = metadata !{i32 786445, metadata !24, metadata !"mean", metadata !25, i32 27, i64 32, i64 32, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ]
!32 = metadata !{i32 786445, metadata !24, metadata !"var", metadata !25, i32 28, i64 32, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 20, i32 18, metadata !16, null}
!37 = metadata !{i32 786689, metadata !16, metadata !"frame_in", null, i32 17, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !21, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 1279}     ; [ DW_TAG_subrange_type ]
!41 = metadata !{i32 17, i32 22, metadata !16, null}
!42 = metadata !{i32 786689, metadata !16, metadata !"frame_out", null, i32 18, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 18, i32 22, metadata !16, null}
!44 = metadata !{i32 790531, metadata !45, metadata !"bgmodel.sortKey", null, i32 19, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!45 = metadata !{i32 786689, metadata !16, metadata !"bgmodel", metadata !17, i32 50331667, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 81920, i64 32, i32 0, i32 0, metadata !47, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{i32 786438, null, metadata !"MixData", metadata !25, i32 23, i64 32, i64 32, i32 0, i32 0, null, metadata !48, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!48 = metadata !{metadata !27}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 2559}     ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 19, i32 13, metadata !16, null}
!52 = metadata !{i32 790531, metadata !45, metadata !"bgmodel.weight", null, i32 19, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 81920, i64 32, i32 0, i32 0, metadata !54, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{i32 786438, null, metadata !"MixData", metadata !25, i32 23, i64 32, i64 32, i32 0, i32 0, null, metadata !55, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!55 = metadata !{metadata !30}
!56 = metadata !{i32 790531, metadata !45, metadata !"bgmodel.mean", null, i32 19, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!57 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 81920, i64 32, i32 0, i32 0, metadata !58, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!58 = metadata !{i32 786438, null, metadata !"MixData", metadata !25, i32 23, i64 32, i64 32, i32 0, i32 0, null, metadata !59, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!59 = metadata !{metadata !31}
!60 = metadata !{i32 790531, metadata !45, metadata !"bgmodel.var", null, i32 19, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 81920, i64 32, i32 0, i32 0, metadata !62, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{i32 786438, null, metadata !"MixData", metadata !25, i32 23, i64 32, i64 32, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!63 = metadata !{metadata !32}
!64 = metadata !{i32 786688, metadata !65, metadata !"alpha", metadata !17, i32 23, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786443, metadata !16, i32 21, i32 1, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 23, i32 86, metadata !65, null}
!67 = metadata !{i32 790529, metadata !68, metadata !"mptr.sortKey", null, i32 24, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!68 = metadata !{i32 786688, metadata !65, metadata !"mptr", metadata !17, i32 24, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 24, i32 28, metadata !65, null}
!70 = metadata !{i32 790529, metadata !68, metadata !"mptr.weight", null, i32 24, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!71 = metadata !{i32 790529, metadata !68, metadata !"mptr.mean", null, i32 24, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!72 = metadata !{i32 790529, metadata !68, metadata !"mptr.var", null, i32 24, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!73 = metadata !{i32 33, i32 9, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 29, i32 5, metadata !17, i32 2} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !65, i32 28, i32 5, metadata !17, i32 1} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 28, i32 10, metadata !75, null}
!77 = metadata !{i32 28, i32 27, metadata !75, null}
!78 = metadata !{i32 30, i32 46, metadata !74, null}
!79 = metadata !{i32 35, i32 18, metadata !80, null}
!80 = metadata !{i32 786443, metadata !81, i32 35, i32 13, metadata !17, i32 4} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !74, i32 34, i32 9, metadata !17, i32 3} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 35, i32 35, metadata !80, null}
!83 = metadata !{i32 38, i32 33, metadata !84, null}
!84 = metadata !{i32 786443, metadata !80, i32 36, i32 13, metadata !17, i32 5} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786688, metadata !84, metadata !"pix", metadata !17, i32 38, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 43, i32 43, metadata !87, null}
!87 = metadata !{i32 786443, metadata !88, i32 42, i32 17, metadata !17, i32 7} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !84, i32 41, i32 17, metadata !17, i32 6} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 41, i32 22, metadata !88, null}
!90 = metadata !{i32 786688, metadata !65, metadata !"k", metadata !17, i32 22, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 41, i32 65, metadata !88, null}
!93 = metadata !{i32 786688, metadata !87, metadata !"w", metadata !17, i32 43, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 44, i32 21, metadata !87, null}
!95 = metadata !{i32 786688, metadata !84, metadata !"wsum", metadata !17, i32 37, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 45, i32 21, metadata !87, null}
!97 = metadata !{i32 47, i32 45, metadata !87, null}
!98 = metadata !{i32 786688, metadata !87, metadata !"mu", metadata !17, i32 47, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 48, i32 45, metadata !87, null}
!100 = metadata !{i32 786688, metadata !87, metadata !"var", metadata !17, i32 48, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 49, i32 43, metadata !87, null}
!102 = metadata !{i32 786688, metadata !87, metadata !"diff", metadata !17, i32 49, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 50, i32 42, metadata !87, null}
!104 = metadata !{i32 786688, metadata !87, metadata !"d2", metadata !17, i32 50, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 51, i32 21, metadata !87, null}
!106 = metadata !{i32 53, i32 25, metadata !107, null}
!107 = metadata !{i32 786443, metadata !87, i32 52, i32 21, metadata !17, i32 8} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 54, i32 52, metadata !107, null}
!109 = metadata !{i32 786688, metadata !107, metadata !"dw", metadata !17, i32 54, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 55, i32 25, metadata !107, null}
!111 = metadata !{i32 56, i32 25, metadata !107, null}
!112 = metadata !{i32 57, i32 31, metadata !107, null}
!113 = metadata !{i32 215, i32 7, metadata !114, metadata !112}
!114 = metadata !{i32 786443, metadata !115, i32 211, i32 5, metadata !117, i32 38} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786478, i32 0, metadata !116, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !117, i32 210, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !122, null, metadata !34, i32 211} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786489, null, metadata !"std", metadata !117, i32 73} ; [ DW_TAG_namespace ]
!117 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{metadata !120, metadata !120, metadata !120}
!120 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_reference_type ]
!121 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 786479, null, metadata !"_Tp", metadata !29, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!124 = metadata !{i32 58, i32 25, metadata !107, null}
!125 = metadata !{i32 786689, metadata !126, metadata !"__x", metadata !128, i32 16777631, metadata !29, i32 0, metadata !131} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 786478, i32 0, metadata !127, metadata !"sqrt", metadata !"sqrt", metadata !"_ZSt4sqrtf", metadata !128, i32 415, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 416} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786489, null, metadata !"std", metadata !128, i32 76} ; [ DW_TAG_namespace ]
!128 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{metadata !29, metadata !29}
!131 = metadata !{i32 59, i32 45, metadata !107, null}
!132 = metadata !{i32 415, i32 14, metadata !126, metadata !131}
!133 = metadata !{i32 416, i32 12, metadata !134, metadata !131}
!134 = metadata !{i32 786443, metadata !126, i32 416, i32 3, metadata !128, i32 154} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 64, i32 2, metadata !136, null}
!136 = metadata !{i32 786443, metadata !137, i32 62, i32 25, metadata !17, i32 10} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 786443, metadata !107, i32 61, i32 25, metadata !17, i32 9} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 66, i32 29, metadata !136, null}
!139 = metadata !{i32 61, i32 30, metadata !137, null}
!140 = metadata !{i32 786688, metadata !84, metadata !"kHit", metadata !17, i32 39, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 69, i32 25, metadata !107, null}
!142 = metadata !{i32 786688, metadata !65, metadata !"k1", metadata !17, i32 22, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 62, i32 26, metadata !136, null}
!144 = metadata !{i32 63, i32 1, metadata !136, null}
!145 = metadata !{i32 790533, metadata !146, metadata !"__a.sortKey", null, i32 122, metadata !155, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!146 = metadata !{i32 786689, metadata !147, metadata !"__a", metadata !149, i32 16777338, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 786478, i32 0, metadata !148, metadata !"swap<MixData>", metadata !"swap<MixData>", metadata !"_ZSt4swapI7MixDataEvRT_S2_", metadata !149, i32 122, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !153, null, metadata !34, i32 123} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 786489, null, metadata !"std", metadata !149, i32 109} ; [ DW_TAG_namespace ]
!149 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h", metadata !"/home/fyp-zc702/FYP", null} ; [ DW_TAG_file_type ]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{null, metadata !152, metadata !152}
!152 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_reference_type ]
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786479, null, metadata !"_Tp", metadata !24, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!155 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!156 = metadata !{i32 122, i32 15, metadata !147, metadata !138}
!157 = metadata !{i32 790533, metadata !146, metadata !"__a.weight", null, i32 122, metadata !158, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!158 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ]
!159 = metadata !{i32 790533, metadata !146, metadata !"__a.mean", null, i32 122, metadata !160, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!160 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!161 = metadata !{i32 790533, metadata !146, metadata !"__a.var", null, i32 122, metadata !162, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!162 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 790533, metadata !164, metadata !"__b.sortKey", null, i32 122, metadata !155, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!164 = metadata !{i32 786689, metadata !147, metadata !"__b", metadata !149, i32 33554554, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 122, i32 25, metadata !147, metadata !138}
!166 = metadata !{i32 790533, metadata !164, metadata !"__b.weight", null, i32 122, metadata !158, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!167 = metadata !{i32 790533, metadata !164, metadata !"__b.mean", null, i32 122, metadata !160, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!168 = metadata !{i32 790533, metadata !164, metadata !"__b.var", null, i32 122, metadata !162, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_ro ]
!169 = metadata !{i32 790529, metadata !170, metadata !"__tmp.sortKey", null, i32 127, metadata !47, i32 0, metadata !138} ; [ DW_TAG_auto_variable_field ]
!170 = metadata !{i32 786688, metadata !171, metadata !"__tmp", metadata !149, i32 127, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786443, metadata !147, i32 123, i32 5, metadata !149, i32 37} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 127, i32 24, metadata !171, metadata !138}
!173 = metadata !{i32 790529, metadata !170, metadata !"__tmp.weight", null, i32 127, metadata !54, i32 0, metadata !138} ; [ DW_TAG_auto_variable_field ]
!174 = metadata !{i32 790529, metadata !170, metadata !"__tmp.mean", null, i32 127, metadata !58, i32 0, metadata !138} ; [ DW_TAG_auto_variable_field ]
!175 = metadata !{i32 790529, metadata !170, metadata !"__tmp.var", null, i32 127, metadata !62, i32 0, metadata !138} ; [ DW_TAG_auto_variable_field ]
!176 = metadata !{i32 790535, metadata !146, metadata !"__a.sortKey", null, i32 122, metadata !155, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!177 = metadata !{i32 790535, metadata !146, metadata !"__a.weight", null, i32 122, metadata !158, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!178 = metadata !{i32 790535, metadata !146, metadata !"__a.mean", null, i32 122, metadata !160, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!179 = metadata !{i32 790535, metadata !146, metadata !"__a.var", null, i32 122, metadata !162, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!180 = metadata !{i32 790535, metadata !164, metadata !"__b.sortKey", null, i32 122, metadata !155, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!181 = metadata !{i32 790535, metadata !164, metadata !"__b.weight", null, i32 122, metadata !158, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!182 = metadata !{i32 790535, metadata !164, metadata !"__b.mean", null, i32 122, metadata !160, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!183 = metadata !{i32 790535, metadata !164, metadata !"__b.var", null, i32 122, metadata !162, i32 0, metadata !138} ; [ DW_TAG_arg_variable_field_wo ]
!184 = metadata !{i32 67, i32 25, metadata !136, null}
!185 = metadata !{i32 61, i32 49, metadata !137, null}
!186 = metadata !{i32 74, i32 17, metadata !84, null}
!187 = metadata !{i32 192, i32 7, metadata !188, metadata !196}
!188 = metadata !{i32 786443, metadata !189, i32 188, i32 5, metadata !117, i32 36} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786478, i32 0, metadata !116, metadata !"min<int>", metadata !"min<int>", metadata !"_ZSt3minIiERKT_S2_S2_", metadata !117, i32 187, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !194, null, metadata !34, i32 188} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !192, metadata !192, metadata !192}
!192 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_reference_type ]
!193 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_const_type ]
!194 = metadata !{metadata !195}
!195 = metadata !{i32 786479, null, metadata !"_Tp", metadata !91, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!196 = metadata !{i32 76, i32 32, metadata !197, null}
!197 = metadata !{i32 786443, metadata !84, i32 75, i32 17, metadata !17, i32 11} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 77, i32 21, metadata !197, null}
!199 = metadata !{i32 78, i32 21, metadata !197, null}
!200 = metadata !{i32 79, i32 21, metadata !197, null}
!201 = metadata !{i32 80, i32 21, metadata !197, null}
!202 = metadata !{i32 81, i32 21, metadata !197, null}
!203 = metadata !{i32 82, i32 17, metadata !197, null}
!204 = metadata !{i32 85, i32 18, metadata !205, null}
!205 = metadata !{i32 786443, metadata !206, i32 85, i32 18, metadata !17, i32 13} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 786443, metadata !84, i32 84, i32 17, metadata !17, i32 12} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 86, i32 19, metadata !208, null}
!208 = metadata !{i32 786443, metadata !205, i32 86, i32 18, metadata !17, i32 14} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 87, i32 1, metadata !208, null}
!210 = metadata !{i32 88, i32 2, metadata !208, null}
!211 = metadata !{i32 89, i32 18, metadata !208, null}
!212 = metadata !{i32 85, i32 61, metadata !205, null}
!213 = metadata !{i32 93, i32 41, metadata !84, null}
!214 = metadata !{i32 786688, metadata !84, metadata !"wscale", metadata !17, i32 93, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 95, i32 22, metadata !216, null}
!216 = metadata !{i32 786443, metadata !84, i32 95, i32 17, metadata !17, i32 15} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 95, i32 65, metadata !216, null}
!218 = metadata !{i32 100, i32 25, metadata !219, null}
!219 = metadata !{i32 786443, metadata !216, i32 96, i32 17, metadata !17, i32 16} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 97, i32 21, metadata !219, null}
!221 = metadata !{i32 98, i32 21, metadata !219, null}
!222 = metadata !{i32 99, i32 21, metadata !219, null}
!223 = metadata !{i32 786688, metadata !84, metadata !"kForeground", metadata !17, i32 39, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 103, i32 17, metadata !84, null}
!225 = metadata !{i32 786688, metadata !65, metadata !"x", metadata !17, i32 22, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 108, i32 18, metadata !227, null}
!227 = metadata !{i32 786443, metadata !228, i32 108, i32 13, metadata !17, i32 18} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 786443, metadata !74, i32 107, i32 9, metadata !17, i32 17} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 108, i32 35, metadata !227, null}
!230 = metadata !{i32 110, i32 33, metadata !231, null}
!231 = metadata !{i32 786443, metadata !227, i32 109, i32 13, metadata !17, i32 19} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 786688, metadata !231, metadata !"pix", metadata !17, i32 110, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 115, i32 21, metadata !234, null}
!234 = metadata !{i32 786443, metadata !235, i32 114, i32 17, metadata !17, i32 21} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 786443, metadata !231, i32 113, i32 17, metadata !17, i32 20} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 113, i32 22, metadata !235, null}
!237 = metadata !{i32 786688, metadata !231, metadata !"kHit", metadata !17, i32 111, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 123, i32 25, metadata !239, null}
!239 = metadata !{i32 786443, metadata !234, i32 122, i32 21, metadata !17, i32 22} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 113, i32 65, metadata !235, null}
!241 = metadata !{i32 117, i32 45, metadata !234, null}
!242 = metadata !{i32 786688, metadata !234, metadata !"mu", metadata !17, i32 117, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 118, i32 45, metadata !234, null}
!244 = metadata !{i32 786688, metadata !234, metadata !"var", metadata !17, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 119, i32 43, metadata !234, null}
!246 = metadata !{i32 786688, metadata !234, metadata !"diff", metadata !17, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 120, i32 42, metadata !234, null}
!248 = metadata !{i32 786688, metadata !234, metadata !"d2", metadata !17, i32 120, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 121, i32 21, metadata !234, null}
!250 = metadata !{i32 128, i32 17, metadata !231, null}
!251 = metadata !{i32 131, i32 69, metadata !252, null}
!252 = metadata !{i32 786443, metadata !253, i32 131, i32 21, metadata !17, i32 24} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 786443, metadata !231, i32 129, i32 17, metadata !17, i32 23} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 131, i32 26, metadata !252, null}
!255 = metadata !{i32 133, i32 25, metadata !256, null}
!256 = metadata !{i32 786443, metadata !252, i32 132, i32 21, metadata !17, i32 25} ; [ DW_TAG_lexical_block ]
!257 = metadata !{i32 786688, metadata !253, metadata !"wsum", metadata !17, i32 130, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 134, i32 25, metadata !256, null}
!259 = metadata !{i32 136, i32 29, metadata !260, null}
!260 = metadata !{i32 786443, metadata !256, i32 135, i32 25, metadata !17, i32 26} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 786688, metadata !231, metadata !"kForeground", metadata !17, i32 111, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 137, i32 29, metadata !260, null}
!263 = metadata !{i32 142, i32 17, metadata !231, null}
!264 = metadata !{i32 786688, metadata !65, metadata !"y", metadata !17, i32 22, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 146, i32 1, metadata !65, null}
!266 = metadata !{i32 790531, metadata !267, metadata !"bgmodel.var", null, i32 151, metadata !272, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!267 = metadata !{i32 786689, metadata !268, metadata !"bgmodel", metadata !17, i32 67109015, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 786478, i32 0, metadata !17, metadata !"bgsub", metadata !"bgsub", metadata !"_Z5bgsubPhS_bP7MixData", metadata !17, i32 148, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 152} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{null, metadata !20, metadata !20, metadata !271, metadata !23}
!271 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!272 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4915200, i64 32, i32 0, i32 0, metadata !62, metadata !273, i32 0, i32 0} ; [ DW_TAG_array_type ]
!273 = metadata !{metadata !274}
!274 = metadata !{i32 786465, i64 0, i64 153599}  ; [ DW_TAG_subrange_type ]
!275 = metadata !{i32 151, i32 14, metadata !268, null}
!276 = metadata !{i32 790531, metadata !267, metadata !"bgmodel.mean", null, i32 151, metadata !277, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!277 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4915200, i64 32, i32 0, i32 0, metadata !58, metadata !273, i32 0, i32 0} ; [ DW_TAG_array_type ]
!278 = metadata !{i32 790531, metadata !267, metadata !"bgmodel.weight", null, i32 151, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!279 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4915200, i64 32, i32 0, i32 0, metadata !54, metadata !273, i32 0, i32 0} ; [ DW_TAG_array_type ]
!280 = metadata !{i32 790531, metadata !267, metadata !"bgmodel.sortKey", null, i32 151, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!281 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4915200, i64 32, i32 0, i32 0, metadata !47, metadata !273, i32 0, i32 0} ; [ DW_TAG_array_type ]
!282 = metadata !{i32 786689, metadata !268, metadata !"init", metadata !17, i32 50331798, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!283 = metadata !{i32 150, i32 11, metadata !268, null}
!284 = metadata !{i32 786689, metadata !268, metadata !"frame_out", null, i32 149, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!285 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !21, metadata !286, i32 0, i32 0} ; [ DW_TAG_array_type ]
!286 = metadata !{metadata !287}
!287 = metadata !{i32 786465, i64 0, i64 76799}   ; [ DW_TAG_subrange_type ]
!288 = metadata !{i32 149, i32 20, metadata !268, null}
!289 = metadata !{i32 786689, metadata !268, metadata !"frame_in", null, i32 148, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 148, i32 20, metadata !268, null}
!291 = metadata !{metadata !292}
!292 = metadata !{i32 0, i32 31, metadata !293}
!293 = metadata !{metadata !294, metadata !297, metadata !298, metadata !299}
!294 = metadata !{metadata !"bgmodel.sortKey", metadata !295, metadata !"float", i32 0, i32 31}
!295 = metadata !{metadata !296}
!296 = metadata !{i32 0, i32 153599, i32 1}
!297 = metadata !{metadata !"bgmodel.weight", metadata !295, metadata !"float", i32 0, i32 31}
!298 = metadata !{metadata !"bgmodel.mean", metadata !295, metadata !"float", i32 0, i32 31}
!299 = metadata !{metadata !"bgmodel.var", metadata !295, metadata !"float", i32 0, i32 31}
!300 = metadata !{metadata !301}
!301 = metadata !{i32 0, i32 7, metadata !302}
!302 = metadata !{metadata !303, metadata !306}
!303 = metadata !{metadata !"frame_in", metadata !304, metadata !"unsigned char", i32 0, i32 7}
!304 = metadata !{metadata !305}
!305 = metadata !{i32 0, i32 76799, i32 1}
!306 = metadata !{metadata !"frame_out", metadata !304, metadata !"unsigned char", i32 0, i32 7}
!307 = metadata !{i32 153, i32 1, metadata !308, null}
!308 = metadata !{i32 786443, metadata !268, i32 152, i32 1, metadata !17, i32 27} ; [ DW_TAG_lexical_block ]
!309 = metadata !{metadata !310}
!310 = metadata !{i32 0, i32 0, metadata !311}
!311 = metadata !{metadata !312}
!312 = metadata !{metadata !"init", metadata !313, metadata !"bool", i32 0, i32 0}
!313 = metadata !{metadata !314}
!314 = metadata !{i32 0, i32 0, i32 0}
!315 = metadata !{i32 155, i32 1, metadata !308, null}
!316 = metadata !{i32 218, i32 1, metadata !308, null}
!317 = metadata !{i32 790529, metadata !318, metadata !"part_bgmodel.sortKey", null, i32 160, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!318 = metadata !{i32 786688, metadata !308, metadata !"part_bgmodel", metadata !17, i32 160, metadata !319, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 327680, i64 32, i32 0, i32 0, metadata !24, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!320 = metadata !{i32 160, i32 10, metadata !308, null}
!321 = metadata !{i32 790529, metadata !318, metadata !"part_bgmodel.weight", null, i32 160, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!322 = metadata !{i32 790529, metadata !318, metadata !"part_bgmodel.mean", null, i32 160, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!323 = metadata !{i32 790529, metadata !318, metadata !"part_bgmodel.var", null, i32 160, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!324 = metadata !{i32 786688, metadata !308, metadata !"part_frame_in", metadata !17, i32 161, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!325 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 10240, i64 8, i32 0, i32 0, metadata !21, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!326 = metadata !{i32 161, i32 13, metadata !308, null}
!327 = metadata !{i32 790529, metadata !328, metadata !"part2_bgmodel.sortKey", null, i32 165, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!328 = metadata !{i32 786688, metadata !308, metadata !"part2_bgmodel", metadata !17, i32 165, metadata !319, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!329 = metadata !{i32 165, i32 13, metadata !308, null}
!330 = metadata !{i32 790529, metadata !328, metadata !"part2_bgmodel.weight", null, i32 165, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!331 = metadata !{i32 790529, metadata !328, metadata !"part2_bgmodel.mean", null, i32 165, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!332 = metadata !{i32 790529, metadata !328, metadata !"part2_bgmodel.var", null, i32 165, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!333 = metadata !{i32 786688, metadata !308, metadata !"part2_frame_in", metadata !17, i32 166, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 166, i32 13, metadata !308, null}
!335 = metadata !{i32 170, i32 5, metadata !308, null}
!336 = metadata !{i32 178, i32 20, metadata !337, null}
!337 = metadata !{i32 786443, metadata !338, i32 178, i32 9, metadata !17, i32 29} ; [ DW_TAG_lexical_block ]
!338 = metadata !{i32 786443, metadata !308, i32 171, i32 5, metadata !17, i32 28} ; [ DW_TAG_lexical_block ]
!339 = metadata !{i32 178, i32 62, metadata !337, null}
!340 = metadata !{i32 190, i32 19, metadata !341, null}
!341 = metadata !{i32 786443, metadata !308, i32 190, i32 5, metadata !17, i32 31} ; [ DW_TAG_lexical_block ]
!342 = metadata !{i32 179, i32 13, metadata !337, null}
!343 = metadata !{i32 786688, metadata !337, metadata !"p", metadata !17, i32 178, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!344 = metadata !{i32 210, i32 9, metadata !345, null}
!345 = metadata !{i32 786443, metadata !346, i32 206, i32 16, metadata !17, i32 35} ; [ DW_TAG_lexical_block ]
!346 = metadata !{i32 786443, metadata !341, i32 191, i32 5, metadata !17, i32 32} ; [ DW_TAG_lexical_block ]
!347 = metadata !{i32 211, i32 6, metadata !345, null}
!348 = metadata !{i32 190, i32 28, metadata !341, null}
!349 = metadata !{i32 786688, metadata !341, metadata !"part", metadata !17, i32 190, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!350 = metadata !{i32 209, i32 9, metadata !345, null}
!351 = metadata !{i32 208, i32 9, metadata !345, null}
!352 = metadata !{i32 197, i32 6, metadata !353, null}
!353 = metadata !{i32 786443, metadata !346, i32 192, i32 15, metadata !17, i32 33} ; [ DW_TAG_lexical_block ]
!354 = metadata !{i32 200, i32 9, metadata !355, null}
!355 = metadata !{i32 786443, metadata !346, i32 199, i32 17, metadata !17, i32 34} ; [ DW_TAG_lexical_block ]
!356 = metadata !{i32 202, i32 9, metadata !355, null}
!357 = metadata !{i32 206, i32 17, metadata !345, null}
!358 = metadata !{i32 196, i32 9, metadata !353, null}
!359 = metadata !{i32 195, i32 9, metadata !353, null}
!360 = metadata !{i32 194, i32 9, metadata !353, null}
!361 = metadata !{i32 192, i32 16, metadata !353, null}
!362 = metadata !{i32 193, i32 9, metadata !353, null}
!363 = metadata !{i32 207, i32 9, metadata !345, null}
