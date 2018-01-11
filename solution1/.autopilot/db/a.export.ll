; ModuleID = '/home/fyp-zc702/FYP/backsub_gmm_new_180110/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode13 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_part_bgmodel_OC_sort = internal unnamed_addr constant [45 x i8] c"memcpy.part_bgmodel.sortKey.addr.bgmodel.var\00"
@memcpy_OC_part2_bgmodel_OC_sor = internal unnamed_addr constant [46 x i8] c"memcpy.part2_bgmodel.sortKey.addr.bgmodel.var\00"
@memcpy_OC_frame_out_OC_str = internal unnamed_addr constant [18 x i8] c"memcpy.frame_out.\00"
@memcpy_OC_bgmodel_OC_var_OC_pa_1 = internal unnamed_addr constant [46 x i8] c"memcpy.bgmodel.var.part2_bgmodel.sortKey.addr\00"
@memcpy_OC_bgmodel_OC_var_OC_pa = internal unnamed_addr constant [45 x i8] c"memcpy.bgmodel.var.part_bgmodel.sortKey.addr\00"
@memcpy_OC_OC_frame_in_str = internal unnamed_addr constant [17 x i8] c"memcpy..frame_in\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle14 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@bgsub_str = internal unnamed_addr constant [6 x i8] c"bgsub\00"
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1812 = private unnamed_addr constant [10 x i8] c"write_mem\00", align 1
@p_str1810 = private unnamed_addr constant [9 x i8] c"read_mem\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1808 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1807 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1806 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1804 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @bgsub_process([1280 x i8]* nocapture %frame_in, [1280 x i1]* nocapture %frame_out, [2560 x float]* nocapture %bgmodel_sortKey, [2560 x float]* nocapture %bgmodel_weight, [2560 x float]* nocapture %bgmodel_mean, [2560 x float]* nocapture %bgmodel_var, float %learningRate) {
  %learningRate_read = call float @_ssdm_op_Read.ap_auto.float(float %learningRate)
  %learningRate_to_int = bitcast float %learningRate_read to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %learningRate_to_int, i32 23, i32 30)
  %tmp_3 = trunc i32 %learningRate_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_3, 0
  %tmp_5 = or i1 %notrhs, %notlhs
  %tmp_9 = fcmp ogt float %learningRate_read, 0.000000e+00
  %tmp_s = and i1 %tmp_5, %tmp_9
  br label %1

; <label>:1                                       ; preds = %.loopexit42, %0
  %mptr_0_rec = phi i12 [ 0, %0 ], [ %mptr_3_rec, %.loopexit42 ]
  %y = phi i3 [ 0, %0 ], [ %y_1, %.loopexit42 ]
  %exitcond1 = icmp eq i3 %y, -4
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %y_1 = add i3 %y, 1
  br i1 %exitcond1, label %22, label %2

; <label>:2                                       ; preds = %1
  %tmp_6 = trunc i3 %y to i2
  %tmp_1 = call i10 @_ssdm_op_BitConcatenate.i10.i2.i2.i6(i2 %tmp_6, i2 %tmp_6, i6 0)
  %tmp_2_cast = zext i10 %tmp_1 to i11
  br i1 %tmp_s, label %.preheader46, label %.preheader41

.preheader46:                                     ; preds = %2, %15
  %mptr_1_rec = phi i10 [ %p_rec1, %15 ], [ 0, %2 ]
  %x = phi i9 [ %x_3, %15 ], [ 0, %2 ]
  %exitcond2 = icmp eq i9 %x, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_3 = add i9 %x, 1
  br i1 %exitcond2, label %.loopexit42, label %3

; <label>:3                                       ; preds = %.preheader46
  %tmp_3_cast = zext i9 %x to i11
  %sum = add i11 %tmp_2_cast, %tmp_3_cast
  %sum_cast = zext i11 %sum to i64
  %frame_in_addr = getelementptr [1280 x i8]* %frame_in, i64 0, i64 %sum_cast
  %frame_in_load = load i8* %frame_in_addr, align 1
  %pix1 = zext i8 %frame_in_load to i32
  %pix = sitofp i32 %pix1 to float
  %mptr_1_rec_cast = zext i10 %mptr_1_rec to i12
  %mptr_1_sum = add i12 %mptr_0_rec, %mptr_1_rec_cast
  %mptr_1_sum_cast = zext i12 %mptr_1_sum to i13
  br label %4

; <label>:4                                       ; preds = %6, %3
  %k = phi i2 [ 0, %3 ], [ %k_2, %6 ]
  %wsum = phi float [ 0.000000e+00, %3 ], [ %wsum_5, %6 ]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_2 = add i2 %k, 1
  br i1 %tmp_7, label %.loopexit11, label %5

; <label>:5                                       ; preds = %4
  %tmp_8_cast = zext i2 %k to i12
  %sum1 = add i12 %mptr_1_sum, %tmp_8_cast
  %sum1_cast = zext i12 %sum1 to i64
  %bgmodel_weight_addr = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum1_cast
  %w = load float* %bgmodel_weight_addr, align 4
  %wsum_5 = fadd float %wsum, %w
  %w_to_int = bitcast float %w to i32
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w_to_int, i32 23, i32 30)
  %tmp_21 = trunc i32 %w_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_19, -1
  %notrhs1 = icmp eq i23 %tmp_21, 0
  %tmp_22 = or i1 %notrhs1, %notlhs1
  %tmp_23 = fcmp olt float %w, 0x3E80000000000000
  %tmp_25 = and i1 %tmp_22, %tmp_23
  br i1 %tmp_25, label %.loopexit11, label %6

; <label>:6                                       ; preds = %5
  %bgmodel_mean_addr = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum1_cast
  %mu = load float* %bgmodel_mean_addr, align 4
  %bgmodel_var_addr = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum1_cast
  %var = load float* %bgmodel_var_addr, align 4
  %diff = fsub float %pix, %mu
  %d2 = fmul float %diff, %diff
  %tmp_2 = fmul float %var, 6.250000e+00
  %d2_to_int = bitcast float %d2 to i32
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_to_int, i32 23, i32 30)
  %tmp_36 = trunc i32 %d2_to_int to i23
  %tmp_2_to_int = bitcast float %tmp_2 to i32
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_2_to_int, i32 23, i32 30)
  %tmp_38 = trunc i32 %tmp_2_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_35, -1
  %notrhs3 = icmp eq i23 %tmp_36, 0
  %tmp_39 = or i1 %notrhs3, %notlhs3
  %notlhs4 = icmp ne i8 %tmp_37, -1
  %notrhs4 = icmp eq i23 %tmp_38, 0
  %tmp_40 = or i1 %notrhs4, %notlhs4
  %tmp_41 = and i1 %tmp_39, %tmp_40
  %tmp_42 = fcmp olt float %d2, %tmp_2
  %tmp_43 = and i1 %tmp_41, %tmp_42
  br i1 %tmp_43, label %7, label %4

; <label>:7                                       ; preds = %6
  %wsum_6 = fsub float %wsum_5, %w
  %tmp_8 = fsub float 1.000000e+00, %w
  %dw = fmul float %tmp_8, %learningRate_read
  %tmp_10 = fadd float %w, %dw
  store float %tmp_10, float* %bgmodel_weight_addr, align 4
  %tmp_11 = fmul float %diff, %learningRate_read
  %tmp_12 = fadd float %mu, %tmp_11
  store float %tmp_12, float* %bgmodel_mean_addr, align 4
  %tmp_13 = fsub float %d2, %var
  %tmp_14 = fmul float %tmp_13, %learningRate_read
  %tmp_15 = fadd float %var, %tmp_14
  %tmp_15_to_int = bitcast float %tmp_15 to i32
  %tmp_53 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_15_to_int, i32 23, i32 30)
  %tmp_54 = trunc i32 %tmp_15_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_53, -1
  %notrhs7 = icmp eq i23 %tmp_54, 0
  %tmp_55 = or i1 %notrhs7, %notlhs7
  %tmp_56 = fcmp olt float %tmp_15, 2.250000e+02
  %tmp_57 = and i1 %tmp_55, %tmp_56
  %var_2 = select i1 %tmp_57, float 2.250000e+02, float %tmp_15
  store float %var_2, float* %bgmodel_var_addr, align 4
  %tmp_i = call float @llvm.sqrt.f32(float %var_2) nounwind
  %tmp_17 = fdiv float %w, %tmp_i
  %bgmodel_sortKey_addr = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum1_cast
  store float %tmp_17, float* %bgmodel_sortKey_addr, align 4
  %sum6 = or i12 %mptr_1_sum, 1
  %sum6_cast = zext i12 %sum6 to i64
  %bgmodel_sortKey_addr_2 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum6_cast
  %bgmodel_weight_addr_4 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum6_cast
  %bgmodel_mean_addr_3 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum6_cast
  %bgmodel_var_addr_3 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum6_cast
  br label %8

; <label>:8                                       ; preds = %10, %7
  %kHit = phi i2 [ %k, %7 ], [ %k1, %10 ]
  %k1 = add i2 %kHit, -1
  %tmp_18 = icmp eq i2 %kHit, 1
  br i1 %tmp_18, label %9, label %.loopexit11

; <label>:9                                       ; preds = %8
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1804)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %tmp_26_cast = zext i2 %k1 to i12
  %sum5 = add i12 %mptr_1_sum, %tmp_26_cast
  %sum5_cast = zext i12 %sum5 to i64
  %bgmodel_sortKey_addr_1 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum5_cast
  %p_tmp_sortKey = load float* %bgmodel_sortKey_addr_1, align 4
  %bgmodel_sortKey_load_2 = load float* %bgmodel_sortKey_addr_2, align 4
  %p_a_sortKey_read_assign_to_int = bitcast float %p_tmp_sortKey to i32
  %tmp_60 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_a_sortKey_read_assign_to_int, i32 23, i32 30)
  %tmp_61 = trunc i32 %p_a_sortKey_read_assign_to_int to i23
  %p_b_sortKey_read_assign_to_int = bitcast float %bgmodel_sortKey_load_2 to i32
  %tmp_62 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_b_sortKey_read_assign_to_int, i32 23, i32 30)
  %tmp_63 = trunc i32 %p_b_sortKey_read_assign_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_60, -1
  %notrhs8 = icmp eq i23 %tmp_61, 0
  %tmp_64 = or i1 %notrhs8, %notlhs9
  %notlhs10 = icmp ne i8 %tmp_62, -1
  %notrhs10 = icmp eq i23 %tmp_63, 0
  %tmp_65 = or i1 %notrhs10, %notlhs10
  %tmp_66 = and i1 %tmp_64, %tmp_65
  %tmp_68 = fcmp oge float %p_tmp_sortKey, %bgmodel_sortKey_load_2
  %tmp_72 = and i1 %tmp_66, %tmp_68
  br i1 %tmp_72, label %.loopexit11, label %10

; <label>:10                                      ; preds = %9
  %bgmodel_weight_addr_3 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum5_cast
  %bgmodel_mean_addr_2 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum5_cast
  %bgmodel_var_addr_2 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum5_cast
  %p_tmp_weight = load float* %bgmodel_weight_addr_3, align 4
  %p_tmp_mean = load float* %bgmodel_mean_addr_2, align 4
  %p_tmp_var = load float* %bgmodel_var_addr_2, align 4
  %bgmodel_weight_load_7 = load float* %bgmodel_weight_addr_4, align 4
  %bgmodel_mean_load_1 = load float* %bgmodel_mean_addr_3, align 4
  %bgmodel_var_load_1 = load float* %bgmodel_var_addr_3, align 4
  store float %bgmodel_sortKey_load_2, float* %bgmodel_sortKey_addr_1, align 4
  store float %bgmodel_weight_load_7, float* %bgmodel_weight_addr_3, align 4
  store float %bgmodel_mean_load_1, float* %bgmodel_mean_addr_2, align 4
  store float %bgmodel_var_load_1, float* %bgmodel_var_addr_2, align 4
  store float %p_tmp_sortKey, float* %bgmodel_sortKey_addr_2, align 4
  store float %p_tmp_weight, float* %bgmodel_weight_addr_4, align 4
  store float %p_tmp_mean, float* %bgmodel_mean_addr_3, align 4
  store float %p_tmp_var, float* %bgmodel_var_addr_3, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1804, i32 %tmp_20)
  br label %8

.loopexit11:                                      ; preds = %5, %4, %9, %8
  %wsum_1 = phi float [ %wsum_6, %8 ], [ %wsum_6, %9 ], [ %wsum_5, %5 ], [ %wsum, %4 ]
  %kHit1 = phi i2 [ 1, %9 ], [ %kHit, %8 ], [ -1, %4 ], [ -1, %5 ]
  %k_cast3 = zext i2 %k to i32
  %tmp_73 = trunc i2 %k to i1
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit1, i32 1)
  br i1 %tmp_74, label %11, label %.preheader43

; <label>:11                                      ; preds = %.loopexit11
  %tmp_76 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1)
  %k_10 = or i1 %tmp_76, %tmp_73
  %k_10_cast = zext i1 %k_10 to i2
  %tmp_77 = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %mptr_1_sum, i32 1, i32 11)
  %sum7 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_77, i1 %k_10)
  %sum7_cast = zext i12 %sum7 to i64
  %bgmodel_weight_addr_5 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum7_cast
  %bgmodel_weight_load_1 = load float* %bgmodel_weight_addr_5, align 4
  %tmp_24 = fsub float 0x3FA99999A0000000, %bgmodel_weight_load_1
  %wsum_7 = fadd float %wsum_1, %tmp_24
  store float 0x3FA99999A0000000, float* %bgmodel_weight_addr_5, align 4
  %bgmodel_mean_addr_4 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum7_cast
  store float %pix, float* %bgmodel_mean_addr_4, align 4
  %bgmodel_var_addr_4 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum7_cast
  store float 9.000000e+02, float* %bgmodel_var_addr_4, align 4
  %bgmodel_sortKey_addr_3 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum7_cast
  store float 0x3F5B4E81C0000000, float* %bgmodel_sortKey_addr_3, align 4
  br label %.loopexit44

.preheader43:                                     ; preds = %.loopexit11, %12
  %k_1 = phi i32 [ %k_8, %12 ], [ %k_cast3, %.loopexit11 ]
  %wsum_2 = phi float [ %wsum_9, %12 ], [ %wsum_1, %.loopexit11 ]
  %exitcond4 = icmp eq i32 %k_1, 2
  br i1 %exitcond4, label %.loopexit44, label %12

; <label>:12                                      ; preds = %.preheader43
  %tmp_29 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 2, i32 2, [1 x i8]* @p_str1805) nounwind
  %tmp_78 = trunc i32 %k_1 to i13
  %sum8 = add i13 %tmp_78, %mptr_1_sum_cast
  %sum8_cast = zext i13 %sum8 to i64
  %bgmodel_weight_addr_6 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum8_cast
  %bgmodel_weight_load_3 = load float* %bgmodel_weight_addr_6, align 4
  %wsum_9 = fadd float %wsum_2, %bgmodel_weight_load_3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1806, i32 %tmp_29)
  %k_8 = add nsw i32 1, %k_1
  br label %.preheader43

.loopexit44:                                      ; preds = %.preheader43, %11
  %wsum_3 = phi float [ %wsum_7, %11 ], [ %wsum_2, %.preheader43 ]
  %kHit_1 = phi i2 [ %k_10_cast, %11 ], [ %kHit1, %.preheader43 ]
  %kHit_1_cast = sext i2 %kHit_1 to i32
  %wscale = fdiv float 1.000000e+00, %wsum_3
  br label %13

; <label>:13                                      ; preds = %14, %.loopexit44
  %k_9 = phi i2 [ 0, %.loopexit44 ], [ %kForeground_1, %14 ]
  %wsum_4 = phi float [ 0.000000e+00, %.loopexit44 ], [ %wsum_10, %14 ]
  %kForeground1 = phi i32 [ -1, %.loopexit44 ], [ %p_kForeground, %14 ]
  %exitcond3 = icmp eq i2 %k_9, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %kForeground_1 = add i2 %k_9, 1
  br i1 %exitcond3, label %15, label %14

; <label>:14                                      ; preds = %13
  %tmp_43_cast = zext i2 %k_9 to i12
  %sum9 = add i12 %tmp_43_cast, %mptr_1_sum
  %sum9_cast = zext i12 %sum9 to i64
  %bgmodel_weight_addr_7 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum9_cast
  %bgmodel_weight_load_4 = load float* %bgmodel_weight_addr_7, align 4
  %tmp_31 = fmul float %bgmodel_weight_load_4, %wscale
  store float %tmp_31, float* %bgmodel_weight_addr_7, align 4
  %wsum_10 = fadd float %wsum_4, %tmp_31
  %bgmodel_sortKey_addr_4 = getelementptr [2560 x float]* %bgmodel_sortKey, i64 0, i64 %sum9_cast
  %bgmodel_sortKey_load = load float* %bgmodel_sortKey_addr_4, align 4
  %tmp_32 = fmul float %bgmodel_sortKey_load, %wscale
  store float %tmp_32, float* %bgmodel_sortKey_addr_4, align 4
  %wsum_10_to_int = bitcast float %wsum_10 to i32
  %tmp_80 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_10_to_int, i32 23, i32 30)
  %tmp_81 = trunc i32 %wsum_10_to_int to i23
  %notlhs11 = icmp ne i8 %tmp_80, -1
  %notrhs11 = icmp eq i23 %tmp_81, 0
  %tmp_82 = or i1 %notrhs11, %notlhs11
  %tmp_83 = fcmp ogt float %wsum_10, 0x3FE6666660000000
  %tmp_84 = and i1 %tmp_82, %tmp_83
  %tmp_85 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %kForeground1, i32 31)
  %or_cond = and i1 %tmp_84, %tmp_85
  %kForeground_1_cast = zext i2 %kForeground_1 to i32
  %p_kForeground = select i1 %or_cond, i32 %kForeground_1_cast, i32 %kForeground1
  br label %13

; <label>:15                                      ; preds = %13
  %slt = icmp slt i32 %kHit_1_cast, %kForeground1
  %rev = xor i1 %slt, true
  %frame_out_addr_1 = getelementptr [1280 x i1]* %frame_out, i64 0, i64 %sum_cast
  store i1 %rev, i1* %frame_out_addr_1, align 1
  %p_rec1 = add i10 %mptr_1_rec, 2
  br label %.preheader46

.preheader41:                                     ; preds = %2, %.loopexit
  %mptr_2_rec = phi i10 [ %p_rec, %.loopexit ], [ 0, %2 ]
  %x_1 = phi i9 [ %x_2, %.loopexit ], [ 0, %2 ]
  %exitcond = icmp eq i9 %x_1, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_2 = add i9 %x_1, 1
  br i1 %exitcond, label %.loopexit42, label %16

; <label>:16                                      ; preds = %.preheader41
  %tmp_4_cast = zext i9 %x_1 to i11
  %sum2 = add i11 %tmp_2_cast, %tmp_4_cast
  %sum2_cast = zext i11 %sum2 to i64
  %frame_in_addr_1 = getelementptr [1280 x i8]* %frame_in, i64 0, i64 %sum2_cast
  %frame_in_load_1 = load i8* %frame_in_addr_1, align 1
  %pix_s = zext i8 %frame_in_load_1 to i32
  %pix_1 = sitofp i32 %pix_s to float
  %mptr_2_rec_cast = zext i10 %mptr_2_rec to i12
  %mptr_2_sum = add i12 %mptr_0_rec, %mptr_2_rec_cast
  br label %17

; <label>:17                                      ; preds = %19, %16
  %kHit_4 = phi i2 [ 0, %16 ], [ %k_4, %19 ]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit_4, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_4 = add i2 %kHit_4, 1
  br i1 %tmp_16, label %.loopexit7.loopexit, label %18

; <label>:18                                      ; preds = %17
  %tmp_5_cast = zext i2 %kHit_4 to i12
  %sum3 = add i12 %mptr_2_sum, %tmp_5_cast
  %sum3_cast = zext i12 %sum3 to i64
  %bgmodel_weight_addr_1 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum3_cast
  %bgmodel_weight_load = load float* %bgmodel_weight_addr_1, align 4
  %bgmodel_weight_load_to_int = bitcast float %bgmodel_weight_load to i32
  %tmp_26 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bgmodel_weight_load_to_int, i32 23, i32 30)
  %tmp_27 = trunc i32 %bgmodel_weight_load_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_26, -1
  %notrhs2 = icmp eq i23 %tmp_27, 0
  %tmp_30 = or i1 %notrhs2, %notlhs2
  %tmp_33 = fcmp olt float %bgmodel_weight_load, 0x3E80000000000000
  %tmp_34 = and i1 %tmp_30, %tmp_33
  br i1 %tmp_34, label %.loopexit7.loopexit, label %19

; <label>:19                                      ; preds = %18
  %bgmodel_mean_addr_1 = getelementptr [2560 x float]* %bgmodel_mean, i64 0, i64 %sum3_cast
  %mu_1 = load float* %bgmodel_mean_addr_1, align 4
  %bgmodel_var_addr_1 = getelementptr [2560 x float]* %bgmodel_var, i64 0, i64 %sum3_cast
  %var_1 = load float* %bgmodel_var_addr_1, align 4
  %diff_1 = fsub float %pix_1, %mu_1
  %d2_1 = fmul float %diff_1, %diff_1
  %tmp_4 = fmul float %var_1, 6.250000e+00
  %d2_1_to_int = bitcast float %d2_1 to i32
  %tmp_44 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_1_to_int, i32 23, i32 30)
  %tmp_45 = trunc i32 %d2_1_to_int to i23
  %tmp_4_to_int = bitcast float %tmp_4 to i32
  %tmp_46 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_4_to_int, i32 23, i32 30)
  %tmp_47 = trunc i32 %tmp_4_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_44, -1
  %notrhs5 = icmp eq i23 %tmp_45, 0
  %tmp_48 = or i1 %notrhs5, %notlhs5
  %notlhs6 = icmp ne i8 %tmp_46, -1
  %notrhs6 = icmp eq i23 %tmp_47, 0
  %tmp_49 = or i1 %notrhs6, %notlhs6
  %tmp_50 = and i1 %tmp_48, %tmp_49
  %tmp_51 = fcmp olt float %d2_1, %tmp_4
  %tmp_52 = and i1 %tmp_50, %tmp_51
  br i1 %tmp_52, label %.loopexit7, label %17

.loopexit7.loopexit:                              ; preds = %17, %18
  br label %.loopexit7

.loopexit7:                                       ; preds = %19, %.loopexit7.loopexit
  %kHit2 = phi i2 [ -1, %.loopexit7.loopexit ], [ %kHit_4, %19 ]
  %kHit2_cast = sext i2 %kHit2 to i3
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit2, i32 1)
  br i1 %tmp_58, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit7, %20
  %k_5 = phi i2 [ %k_11, %20 ], [ 0, %.loopexit7 ]
  %wsum8 = phi float [ %wsum_8, %20 ], [ 0.000000e+00, %.loopexit7 ]
  %tmp_59 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k_5, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_11 = add i2 %k_5, 1
  br i1 %tmp_59, label %.loopexit, label %20

; <label>:20                                      ; preds = %.preheader
  %tmp_34_cast = zext i2 %k_5 to i12
  %sum4 = add i12 %tmp_34_cast, %mptr_2_sum
  %sum4_cast = zext i12 %sum4 to i64
  %bgmodel_weight_addr_2 = getelementptr [2560 x float]* %bgmodel_weight, i64 0, i64 %sum4_cast
  %bgmodel_weight_load_2 = load float* %bgmodel_weight_addr_2, align 4
  %wsum_8 = fadd float %wsum8, %bgmodel_weight_load_2
  %wsum_8_to_int = bitcast float %wsum_8 to i32
  %tmp_67 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_8_to_int, i32 23, i32 30)
  %tmp_75 = trunc i32 %wsum_8_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_67, -1
  %notrhs9 = icmp eq i23 %tmp_75, 0
  %tmp_69 = or i1 %notrhs9, %notlhs8
  %tmp_70 = fcmp ogt float %wsum_8, 0x3FE6666660000000
  %tmp_71 = and i1 %tmp_69, %tmp_70
  br i1 %tmp_71, label %21, label %.preheader

; <label>:21                                      ; preds = %20
  %kForeground_cast = zext i2 %k_11 to i3
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit7, %21
  %kForeground3_1 = phi i3 [ %kForeground_cast, %21 ], [ -1, %.loopexit7 ], [ -1, %.preheader ]
  %tmp_79 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit2, i32 1)
  %slt1 = icmp slt i3 %kHit2_cast, %kForeground3_1
  %rev1 = xor i1 %slt1, true
  %tmp_28 = or i1 %tmp_79, %rev1
  %frame_out_addr = getelementptr [1280 x i1]* %frame_out, i64 0, i64 %sum2_cast
  store i1 %tmp_28, i1* %frame_out_addr, align 1
  %p_rec = add i10 %mptr_2_rec, 2
  br label %.preheader41

.loopexit42:                                      ; preds = %.preheader46, %.preheader41
  %mptr_3_rec = add i12 %mptr_0_rec, 640
  br label %1

; <label>:22                                      ; preds = %1
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @bgsub(i8* %gmem, float* %gmem_offset, i32 %frame_in, i32 %frame_out, i1 %init, i32 %bgmodel_sortKey, i32 %bgmodel_weight, i32 %bgmodel_mean, i32 %bgmodel_var) {
codeRepl:
  %bgmodel_var_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_var)
  %bgmodel_mean_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_mean)
  %bgmodel_weight_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_weight)
  %bgmodel_sortKey_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel_sortKey)
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init)
  %frame_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_out)
  %frame_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_in)
  %bgmodel_var1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_var_read, i32 2, i32 31)
  %tmp = zext i30 %bgmodel_var1 to i64
  %gmem_offset_addr = getelementptr float* %gmem_offset, i64 %tmp
  %bgmodel_mean9 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_mean_read, i32 2, i32 31)
  %tmp_36 = zext i30 %bgmodel_mean9 to i64
  %gmem_offset_addr_1 = getelementptr float* %gmem_offset, i64 %tmp_36
  %bgmodel_weight7 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_weight_read, i32 2, i32 31)
  %tmp_37 = zext i30 %bgmodel_weight7 to i64
  %gmem_offset_addr_2 = getelementptr float* %gmem_offset, i64 %tmp_37
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !24
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init), !map !31
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @bgsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset, float* %gmem_offset_addr_2, float* %gmem_offset_addr_1, float* %gmem_offset_addr, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %bgmodel_sortKey, i32 %bgmodel_weight, i32 %bgmodel_mean, i32 %bgmodel_var, [10 x i8]* @mode13, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @bundle14, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 1, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle6, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call fastcc void @bgsub_Block__proc(i1 %init_read, float* %gmem_offset, i32 %bgmodel_sortKey_read, i32 %bgmodel_weight_read, i32 %bgmodel_mean_read, i32 %bgmodel_var_read, i8* %gmem, i32 %frame_out_read, i32 %frame_in_read)
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i8
  ret i8 %empty_8
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i30
  ret i30 %empty_9
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_10 = trunc i12 %empty to i11
  ret i11 %empty_10
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_11 = and i32 %0, %empty
  %empty_12 = icmp ne i32 %empty_11, 0
  ret i1 %empty_12
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_13 = shl i2 1, %empty
  %empty_14 = and i2 %0, %empty_13
  %empty_15 = icmp ne i2 %empty_14, 0
  ret i1 %empty_15
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i6.i11(i6, i11) nounwind readnone {
entry:
  %empty = zext i6 %0 to i17
  %empty_16 = zext i11 %1 to i17
  %empty_17 = shl i17 %empty, 11
  %empty_18 = or i17 %empty_17, %empty_16
  ret i17 %empty_18
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i6.i10(i6, i10) nounwind readnone {
entry:
  %empty = zext i6 %0 to i16
  %empty_19 = zext i10 %1 to i16
  %empty_20 = shl i16 %empty, 10
  %empty_21 = or i16 %empty_20, %empty_19
  ret i16 %empty_21
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i6.i9(i6, i9) nounwind readnone {
entry:
  %empty = zext i6 %0 to i15
  %empty_22 = zext i9 %1 to i15
  %empty_23 = shl i15 %empty, 9
  %empty_24 = or i15 %empty_23, %empty_22
  ret i15 %empty_24
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i6.i8(i6, i8) nounwind readnone {
entry:
  %empty = zext i6 %0 to i14
  %empty_25 = zext i8 %1 to i14
  %empty_26 = shl i14 %empty, 8
  %empty_27 = or i14 %empty_26, %empty_25
  ret i14 %empty_27
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_28 = zext i1 %1 to i12
  %empty_29 = shl i12 %empty, 1
  %empty_30 = or i12 %empty_29, %empty_28
  ret i12 %empty_30
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i2.i2.i6(i2, i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %1 to i8
  %empty_31 = zext i6 %2 to i8
  %empty_32 = shl i8 %empty, 6
  %empty_33 = or i8 %empty_32, %empty_31
  %empty_34 = zext i2 %0 to i10
  %empty_35 = zext i8 %empty_33 to i10
  %empty_36 = shl i10 %empty_34, 8
  %empty_37 = or i10 %empty_36, %empty_35
  ret i10 %empty_37
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @bgsub_Block__proc(i1 %init, float* %bgmodel_sortKey, i32 %bgmodel_sortKey1, i32 %bgmodel_weight, i32 %bgmodel_mean, i32 %bgmodel_var, i8* %frame_out, i32 %frame_out2, i32 %frame_in) {
newFuncRoot:
  %frame_in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_in)
  %frame_out2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_out2)
  %bgmodel_var_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_var)
  %bgmodel_mean_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_mean)
  %bgmodel_weight_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_weight)
  %bgmodel_sortKey1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel_sortKey1)
  %init_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %init)
  %tmp_61_cast = sext i32 %frame_in_read to i33
  %tmp_62_cast = sext i32 %frame_out2_read to i33
  %tmp_86 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_var_read, i32 2, i32 31)
  %tmp_63_cast = zext i30 %tmp_86 to i31
  %tmp_87 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_mean_read, i32 2, i32 31)
  %tmp_64_cast = zext i30 %tmp_87 to i31
  %tmp_88 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_weight_read, i32 2, i32 31)
  %tmp_65_cast = zext i30 %tmp_88 to i31
  %tmp_89 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel_sortKey1_read, i32 2, i32 31)
  %tmp_66_cast = zext i30 %tmp_89 to i31
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel_sortKey, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 153600, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  %part_bgmodel_sortKey = alloca [2560 x float], align 4
  %part_bgmodel_weight = alloca [2560 x float], align 4
  %part_bgmodel_mean = alloca [2560 x float], align 4
  %part_bgmodel_var = alloca [2560 x float], align 4
  %part_frame_in = alloca [1280 x i8], align 16
  %part_frame_out = alloca [1280 x i1], align 1
  %part2_bgmodel_sortKey = alloca [2560 x float], align 4
  %part2_bgmodel_weight = alloca [2560 x float], align 4
  %part2_bgmodel_mean = alloca [2560 x float], align 4
  %part2_bgmodel_var = alloca [2560 x float], align 4
  %part2_frame_in = alloca [1280 x i8], align 16
  %part2_frame_out = alloca [1280 x i1], align 1
  br i1 %init_read, label %.preheader, label %.loopexit

.exitStub:                                        ; preds = %1
  ret void

.preheader:                                       ; preds = %newFuncRoot, %0
  %p = phi i18 [ %p_1, %0 ], [ 0, %newFuncRoot ]
  %exitcond = icmp eq i18 %p, -108544
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 153600, i64 153600, i64 153600)
  %p_1 = add i18 %p, 1
  br i1 %exitcond, label %.loopexit, label %0

.loopexit:                                        ; preds = %.preheader, %newFuncRoot
  %learningRate = phi float [ 0.000000e+00, %newFuncRoot ], [ 1.000000e+00, %.preheader ]
  br label %1

; <label>:0                                       ; preds = %.preheader
  %tmp_cast = zext i18 %p to i31
  %sum = add i31 %tmp_66_cast, %tmp_cast
  %sum_cast = zext i31 %sum to i64
  %bgmodel_sortKey_addr = getelementptr float* %bgmodel_sortKey, i64 %sum_cast
  %bgmodel_sortKey_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr, float 0.000000e+00, i4 -1)
  %bgmodel_sortKey_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr)
  %sum1 = add i31 %tmp_65_cast, %tmp_cast
  %sum1_cast = zext i31 %sum1 to i64
  %bgmodel_sortKey_addr_5 = getelementptr float* %bgmodel_sortKey, i64 %sum1_cast
  %bgmodel_sortKey_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_5, float 0.000000e+00, i4 -1)
  %bgmodel_sortKey_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_5)
  %sum2 = add i31 %tmp_64_cast, %tmp_cast
  %sum2_cast = zext i31 %sum2 to i64
  %bgmodel_sortKey_addr_6 = getelementptr float* %bgmodel_sortKey, i64 %sum2_cast
  %bgmodel_sortKey_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_6, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_6, float 0.000000e+00, i4 -1)
  %bgmodel_sortKey_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_6)
  %sum3 = add i31 %tmp_63_cast, %tmp_cast
  %sum3_cast = zext i31 %sum3 to i64
  %bgmodel_sortKey_addr_7 = getelementptr float* %bgmodel_sortKey, i64 %sum3_cast
  %bgmodel_sortKey_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_7, float 0.000000e+00, i4 -1)
  %bgmodel_sortKey_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_7)
  br label %.preheader

; <label>:1                                       ; preds = %burst.wr.end30, %.loopexit
  %part = phi i6 [ 0, %.loopexit ], [ %part_1, %burst.wr.end30 ]
  %tmp_34 = icmp ult i6 %part, -4
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 30, i64 30, i64 30)
  br i1 %tmp_34, label %2, label %.exitStub

burst.wr.end30:                                   ; preds = %burst.wr.header31
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_4)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1812, i32 %tmp_47)
  %part_1 = add i6 %part, 2
  br label %1

burst.wr.header31:                                ; preds = %burst.wr.header31.preheader, %burst.wr.body32
  %indvar3 = phi i11 [ %indvar_next3, %burst.wr.body32 ], [ 0, %burst.wr.header31.preheader ]
  %exitcond6 = icmp eq i11 %indvar3, -768
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next3 = add i11 %indvar3, 1
  br i1 %exitcond6, label %burst.wr.end30, label %burst.wr.body32

burst.wr.body32:                                  ; preds = %burst.wr.header31
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_38 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15) nounwind
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_59 = zext i11 %indvar3 to i64
  %part2_frame_out_addr = getelementptr [1280 x i1]* %part2_frame_out, i64 0, i64 %tmp_59
  %part2_frame_out_load = load i1* %part2_frame_out_addr, align 1
  %extLd1 = select i1 %part2_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_4, i8 %extLd1, i1 true)
  %burstwrite_rend43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin1) nounwind
  br label %burst.wr.header31

burst.wr.header134:                               ; preds = %burst.wr.header134.preheader, %burst.wr.body135
  %indvar7 = phi i12 [ %indvar_next7, %burst.wr.body135 ], [ 0, %burst.wr.header134.preheader ]
  %indvar7_cast = zext i12 %indvar7 to i18
  %exitcond2 = icmp eq i12 %indvar7, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next7 = add i12 %indvar7, 1
  br i1 %exitcond2, label %burst.wr.header31.preheader, label %burst.wr.body135

burst.wr.header31.preheader:                      ; preds = %burst.wr.header134
  %tmp_98 = add i33 %tmp_93, %tmp_62_cast
  %tmp_99 = sext i33 %tmp_98 to i64
  %frame_out_addr_4 = getelementptr i8* %frame_out, i64 %tmp_99
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_4, i32 1280)
  br label %burst.wr.header31

burst.wr.body135:                                 ; preds = %burst.wr.header134
  %burstwrite_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str)
  %empty_40 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str)
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopName([46 x i8]* @memcpy_OC_bgmodel_OC_var_OC_pa_1)
  %tmp_56 = zext i12 %indvar7 to i64
  %part2_bgmodel_sortKey_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_sortKey, i64 0, i64 %tmp_56
  %part2_bgmodel_sortKey_load = load float* %part2_bgmodel_sortKey_addr_1, align 4
  %tmp_57 = add i18 %indvar7_cast, %tmp_44
  %tmp_58_cast = zext i18 %tmp_57 to i31
  %sum5 = add i31 %tmp_66_cast, %tmp_58_cast
  %sum5_cast = zext i31 %sum5 to i64
  %bgmodel_sortKey_addr_20 = getelementptr float* %bgmodel_sortKey, i64 %sum5_cast
  %bgmodel_sortKey_addr_24_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_20, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_20, float %part2_bgmodel_sortKey_load, i4 -1)
  %bgmodel_sortKey_addr_24_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_20)
  %part2_bgmodel_weight_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_weight, i64 0, i64 %tmp_56
  %part2_bgmodel_weight_load = load float* %part2_bgmodel_weight_addr_1, align 4
  %sum17 = add i31 %tmp_65_cast, %tmp_58_cast
  %sum17_cast = zext i31 %sum17 to i64
  %bgmodel_sortKey_addr_21 = getelementptr float* %bgmodel_sortKey, i64 %sum17_cast
  %bgmodel_sortKey_addr_25_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_21, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_21, float %part2_bgmodel_weight_load, i4 -1)
  %bgmodel_sortKey_addr_25_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_21)
  %part2_bgmodel_mean_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_mean, i64 0, i64 %tmp_56
  %part2_bgmodel_mean_load = load float* %part2_bgmodel_mean_addr_1, align 4
  %sum18 = add i31 %tmp_64_cast, %tmp_58_cast
  %sum21_cast = zext i31 %sum18 to i64
  %bgmodel_sortKey_addr_22 = getelementptr float* %bgmodel_sortKey, i64 %sum21_cast
  %bgmodel_sortKey_addr_26_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_22, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_22, float %part2_bgmodel_mean_load, i4 -1)
  %bgmodel_sortKey_addr_26_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_22)
  %part2_bgmodel_var_addr_1 = getelementptr [2560 x float]* %part2_bgmodel_var, i64 0, i64 %tmp_56
  %part2_bgmodel_var_load = load float* %part2_bgmodel_var_addr_1, align 4
  %sum19 = add i31 %tmp_63_cast, %tmp_58_cast
  %sum22_cast = zext i31 %sum19 to i64
  %bgmodel_sortKey_addr_23 = getelementptr float* %bgmodel_sortKey, i64 %sum22_cast
  %bgmodel_sortKey_addr_27_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_23, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_23, float %part2_bgmodel_var_load, i4 -1)
  %bgmodel_sortKey_addr_27_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_23)
  %burstwrite_rend168 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin3)
  br label %burst.wr.header134

burst.wr.header:                                  ; preds = %burst.wr.header.preheader, %burst.wr.body
  %indvar2 = phi i11 [ %indvar_next2, %burst.wr.body ], [ 0, %burst.wr.header.preheader ]
  %exitcond5 = icmp eq i11 %indvar2, -768
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next2 = add i11 %indvar2, 1
  br i1 %exitcond5, label %burst.wr.header134.preheader, label %burst.wr.body

burst.wr.header134.preheader:                     ; preds = %burst.wr.header
  %p_wr_resp267 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_3)
  br label %burst.wr.header134

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_42 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_54 = zext i11 %indvar2 to i64
  %part_frame_out_addr = getelementptr [1280 x i1]* %part_frame_out, i64 0, i64 %tmp_54
  %part_frame_out_load = load i1* %part_frame_out_addr, align 1
  %extLd = select i1 %part_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_3, i8 %extLd, i1 true)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.header97:                                ; preds = %burst.wr.body98, %burst.rd.end64
  %indvar6 = phi i12 [ 0, %burst.rd.end64 ], [ %indvar_next6, %burst.wr.body98 ]
  %indvar6_cast = zext i12 %indvar6 to i18
  %exitcond9 = icmp eq i12 %indvar6, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next6 = add i12 %indvar6, 1
  br i1 %exitcond9, label %burst.wr.header.preheader, label %burst.wr.body98

burst.wr.header.preheader:                        ; preds = %burst.wr.header97
  %tmp_96 = add i33 %tmp_90, %tmp_62_cast
  %tmp_97 = sext i33 %tmp_96 to i64
  %frame_out_addr_3 = getelementptr i8* %frame_out, i64 %tmp_97
  %p_wr_req266 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_3, i32 1280)
  br label %burst.wr.header

burst.rd.end64:                                   ; preds = %burst.rd.header65
  %empty_44 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1810, i32 %tmp)
  call fastcc void @bgsub_process([1280 x i8]* %part_frame_in, [1280 x i1]* %part_frame_out, [2560 x float]* %part_bgmodel_sortKey, [2560 x float]* %part_bgmodel_weight, [2560 x float]* %part_bgmodel_mean, [2560 x float]* %part_bgmodel_var, float %learningRate)
  call fastcc void @bgsub_process([1280 x i8]* %part2_frame_in, [1280 x i1]* %part2_frame_out, [2560 x float]* %part2_bgmodel_sortKey, [2560 x float]* %part2_bgmodel_weight, [2560 x float]* %part2_bgmodel_mean, [2560 x float]* %part2_bgmodel_var, float %learningRate)
  %tmp_47 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1812)
  br label %burst.wr.header97

burst.rd.header65:                                ; preds = %burst.rd.body66, %burst.rd.end7
  %indvar5 = phi i12 [ 0, %burst.rd.end7 ], [ %indvar_next5, %burst.rd.body66 ]
  %indvar5_cast = zext i12 %indvar5 to i18
  %exitcond8 = icmp eq i12 %indvar5, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next5 = add i12 %indvar5, 1
  br i1 %exitcond8, label %burst.rd.end64, label %burst.rd.body66

burst.rd.end7:                                    ; preds = %burst.rd.header8
  %p_shl7 = call i17 @_ssdm_op_BitConcatenate.i17.i6.i11(i6 %tmp_39, i11 0)
  %p_shl7_cast = zext i17 %p_shl7 to i18
  %p_shl8 = call i15 @_ssdm_op_BitConcatenate.i15.i6.i9(i6 %tmp_39, i9 0)
  %p_shl8_cast = zext i15 %p_shl8 to i18
  %tmp_44 = add i18 %p_shl8_cast, %p_shl7_cast
  br label %burst.rd.header65

burst.rd.header8:                                 ; preds = %burst.rd.body9, %burst.rd.end37
  %indvar1 = phi i11 [ 0, %burst.rd.end37 ], [ %indvar_next1, %burst.rd.body9 ]
  %exitcond4 = icmp eq i11 %indvar1, -768
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next1 = add i11 %indvar1, 1
  br i1 %exitcond4, label %burst.rd.end7, label %burst.rd.body9

burst.rd.end37:                                   ; preds = %burst.rd.header38
  %tmp_39 = or i6 %part, 1
  %p_shl5 = call i16 @_ssdm_op_BitConcatenate.i16.i6.i10(i6 %tmp_39, i10 0)
  %p_shl5_cast = zext i16 %p_shl5 to i17
  %p_shl6 = call i14 @_ssdm_op_BitConcatenate.i14.i6.i8(i6 %tmp_39, i8 0)
  %p_shl6_cast = zext i14 %p_shl6 to i17
  %tmp_40 = add i17 %p_shl5_cast, %p_shl6_cast
  %tmp_93 = zext i17 %tmp_40 to i33
  %tmp_94 = add i33 %tmp_61_cast, %tmp_93
  %tmp_95 = sext i33 %tmp_94 to i64
  %frame_out_addr_2 = getelementptr i8* %frame_out, i64 %tmp_95
  %p_rd_req268 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr_2, i32 1280)
  br label %burst.rd.header8

burst.rd.header38:                                ; preds = %burst.rd.body39, %burst.rd.end
  %indvar4 = phi i12 [ 0, %burst.rd.end ], [ %indvar_next4, %burst.rd.body39 ]
  %indvar4_cast = zext i12 %indvar4 to i18
  %exitcond7 = icmp eq i12 %indvar4, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next4 = add i12 %indvar4, 1
  br i1 %exitcond7, label %burst.rd.end37, label %burst.rd.body39

burst.rd.end:                                     ; preds = %burst.rd.header
  %p_shl3 = call i17 @_ssdm_op_BitConcatenate.i17.i6.i11(i6 %part, i11 0)
  %p_shl3_cast = zext i17 %p_shl3 to i18
  %p_shl4 = call i15 @_ssdm_op_BitConcatenate.i15.i6.i9(i6 %part, i9 0)
  %p_shl4_cast = zext i15 %p_shl4 to i18
  %tmp_36 = add i18 %p_shl4_cast, %p_shl3_cast
  br label %burst.rd.header38

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i11 [ 0, %2 ], [ %indvar_next, %burst.rd.body ]
  %exitcond1 = icmp eq i11 %indvar, -768
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %indvar_next = add i11 %indvar, 1
  br i1 %exitcond1, label %burst.rd.end, label %burst.rd.body

; <label>:2                                       ; preds = %1
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1810)
  %p_shl = call i16 @_ssdm_op_BitConcatenate.i16.i6.i10(i6 %part, i10 0)
  %p_shl_cast = zext i16 %p_shl to i17
  %p_shl2 = call i14 @_ssdm_op_BitConcatenate.i14.i6.i8(i6 %part, i8 0)
  %p_shl2_cast = zext i14 %p_shl2 to i17
  %tmp_35 = add i17 %p_shl_cast, %p_shl2_cast
  %tmp_90 = zext i17 %tmp_35 to i33
  %tmp_91 = add i33 %tmp_61_cast, %tmp_90
  %tmp_92 = sext i33 %tmp_91 to i64
  %frame_out_addr = getelementptr i8* %frame_out, i64 %tmp_92
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr, i32 1280)
  br label %burst.rd.header

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_45 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr)
  %tmp_38 = zext i11 %indvar to i64
  %part_frame_in_addr = getelementptr [1280 x i8]* %part_frame_in, i64 0, i64 %tmp_38
  store i8 %frame_out_addr_read, i8* %part_frame_in_addr, align 1
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.body39:                                  ; preds = %burst.rd.header38
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecLoopName([45 x i8]* @memcpy_OC_part_bgmodel_OC_sort)
  %tmp_41 = add i18 %indvar4_cast, %tmp_36
  %tmp_42_cast = zext i18 %tmp_41 to i31
  %sum7 = add i31 %tmp_66_cast, %tmp_42_cast
  %sum7_cast = zext i31 %sum7 to i64
  %bgmodel_sortKey_addr_8 = getelementptr float* %bgmodel_sortKey, i64 %sum7_cast
  %bgmodel_sortKey_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_8, i32 1)
  %bgmodel_sortKey_addr_8_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_8)
  %tmp_43 = zext i12 %indvar4 to i64
  %part_bgmodel_sortKey_addr = getelementptr [2560 x float]* %part_bgmodel_sortKey, i64 0, i64 %tmp_43
  store float %bgmodel_sortKey_addr_8_read, float* %part_bgmodel_sortKey_addr, align 4
  %sum6 = add i31 %tmp_65_cast, %tmp_42_cast
  %sum6_cast = zext i31 %sum6 to i64
  %bgmodel_sortKey_addr_9 = getelementptr float* %bgmodel_sortKey, i64 %sum6_cast
  %bgmodel_sortKey_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_9, i32 1)
  %bgmodel_sortKey_addr_9_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_9)
  %part_bgmodel_weight_addr = getelementptr [2560 x float]* %part_bgmodel_weight, i64 0, i64 %tmp_43
  store float %bgmodel_sortKey_addr_9_read, float* %part_bgmodel_weight_addr, align 4
  %sum8 = add i31 %tmp_64_cast, %tmp_42_cast
  %sum8_cast = zext i31 %sum8 to i64
  %bgmodel_sortKey_addr_10 = getelementptr float* %bgmodel_sortKey, i64 %sum8_cast
  %bgmodel_sortKey_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_10, i32 1)
  %bgmodel_sortKey_addr_10_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_10)
  %part_bgmodel_mean_addr = getelementptr [2560 x float]* %part_bgmodel_mean, i64 0, i64 %tmp_43
  store float %bgmodel_sortKey_addr_10_read, float* %part_bgmodel_mean_addr, align 4
  %sum4 = add i31 %tmp_63_cast, %tmp_42_cast
  %sum10_cast = zext i31 %sum4 to i64
  %bgmodel_sortKey_addr_11 = getelementptr float* %bgmodel_sortKey, i64 %sum10_cast
  %bgmodel_sortKey_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_11, i32 1)
  %bgmodel_sortKey_addr_11_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_11)
  %part_bgmodel_var_addr = getelementptr [2560 x float]* %part_bgmodel_var, i64 0, i64 %tmp_43
  store float %bgmodel_sortKey_addr_11_read, float* %part_bgmodel_var_addr, align 4
  %burstread_rend62 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin2)
  br label %burst.rd.header38

burst.rd.body9:                                   ; preds = %burst.rd.header8
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_49 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr_2)
  %tmp_46 = zext i11 %indvar1 to i64
  %part2_frame_in_addr = getelementptr [1280 x i8]* %part2_frame_in, i64 0, i64 %tmp_46
  store i8 %frame_out_addr_2_read, i8* %part2_frame_in_addr, align 1
  %burstread_rend20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header8

burst.rd.body66:                                  ; preds = %burst.rd.header65
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str)
  %empty_51 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str)
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopName([46 x i8]* @memcpy_OC_part2_bgmodel_OC_sor)
  %tmp_48 = add i18 %indvar5_cast, %tmp_44
  %tmp_49_cast = zext i18 %tmp_48 to i31
  %sum9 = add i31 %tmp_66_cast, %tmp_49_cast
  %sum9_cast = zext i31 %sum9 to i64
  %bgmodel_sortKey_addr_12 = getelementptr float* %bgmodel_sortKey, i64 %sum9_cast
  %bgmodel_sortKey_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_12, i32 1)
  %bgmodel_sortKey_addr_12_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_12)
  %tmp_50 = zext i12 %indvar5 to i64
  %part2_bgmodel_sortKey_addr = getelementptr [2560 x float]* %part2_bgmodel_sortKey, i64 0, i64 %tmp_50
  store float %bgmodel_sortKey_addr_12_read, float* %part2_bgmodel_sortKey_addr, align 4
  %sum10 = add i31 %tmp_65_cast, %tmp_49_cast
  %sum13_cast = zext i31 %sum10 to i64
  %bgmodel_sortKey_addr_13 = getelementptr float* %bgmodel_sortKey, i64 %sum13_cast
  %bgmodel_sortKey_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_13, i32 1)
  %bgmodel_sortKey_addr_13_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_13)
  %part2_bgmodel_weight_addr = getelementptr [2560 x float]* %part2_bgmodel_weight, i64 0, i64 %tmp_50
  store float %bgmodel_sortKey_addr_13_read, float* %part2_bgmodel_weight_addr, align 4
  %sum12 = add i31 %tmp_64_cast, %tmp_49_cast
  %sum14_cast = zext i31 %sum12 to i64
  %bgmodel_sortKey_addr_14 = getelementptr float* %bgmodel_sortKey, i64 %sum14_cast
  %bgmodel_sortKey_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_14, i32 1)
  %bgmodel_sortKey_addr_14_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_14)
  %part2_bgmodel_mean_addr = getelementptr [2560 x float]* %part2_bgmodel_mean, i64 0, i64 %tmp_50
  store float %bgmodel_sortKey_addr_14_read, float* %part2_bgmodel_mean_addr, align 4
  %sum13 = add i31 %tmp_63_cast, %tmp_49_cast
  %sum15_cast = zext i31 %sum13 to i64
  %bgmodel_sortKey_addr_15 = getelementptr float* %bgmodel_sortKey, i64 %sum15_cast
  %bgmodel_sortKey_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_sortKey_addr_15, i32 1)
  %bgmodel_sortKey_addr_15_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_sortKey_addr_15)
  %part2_bgmodel_var_addr = getelementptr [2560 x float]* %part2_bgmodel_var, i64 0, i64 %tmp_50
  store float %bgmodel_sortKey_addr_15_read, float* %part2_bgmodel_var_addr, align 4
  %burstread_rend94 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin3)
  br label %burst.rd.header65

burst.wr.body98:                                  ; preds = %burst.wr.header97
  %burstwrite_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str)
  %empty_53 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str)
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopName([45 x i8]* @memcpy_OC_bgmodel_OC_var_OC_pa)
  %tmp_51 = zext i12 %indvar6 to i64
  %part_bgmodel_sortKey_addr_1 = getelementptr [2560 x float]* %part_bgmodel_sortKey, i64 0, i64 %tmp_51
  %part_bgmodel_sortKey_load = load float* %part_bgmodel_sortKey_addr_1, align 4
  %tmp_52 = add i18 %indvar6_cast, %tmp_36
  %tmp_53_cast = zext i18 %tmp_52 to i31
  %sum11 = add i31 %tmp_66_cast, %tmp_53_cast
  %sum11_cast = zext i31 %sum11 to i64
  %bgmodel_sortKey_addr_16 = getelementptr float* %bgmodel_sortKey, i64 %sum11_cast
  %bgmodel_sortKey_addr_20_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_16, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_16, float %part_bgmodel_sortKey_load, i4 -1)
  %bgmodel_sortKey_addr_20_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_16)
  %part_bgmodel_weight_addr_1 = getelementptr [2560 x float]* %part_bgmodel_weight, i64 0, i64 %tmp_51
  %part_bgmodel_weight_load = load float* %part_bgmodel_weight_addr_1, align 4
  %sum14 = add i31 %tmp_65_cast, %tmp_53_cast
  %sum16_cast = zext i31 %sum14 to i64
  %bgmodel_sortKey_addr_17 = getelementptr float* %bgmodel_sortKey, i64 %sum16_cast
  %bgmodel_sortKey_addr_21_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_17, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_17, float %part_bgmodel_weight_load, i4 -1)
  %bgmodel_sortKey_addr_21_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_17)
  %part_bgmodel_mean_addr_1 = getelementptr [2560 x float]* %part_bgmodel_mean, i64 0, i64 %tmp_51
  %part_bgmodel_mean_load = load float* %part_bgmodel_mean_addr_1, align 4
  %sum15 = add i31 %tmp_64_cast, %tmp_53_cast
  %sum18_cast = zext i31 %sum15 to i64
  %bgmodel_sortKey_addr_18 = getelementptr float* %bgmodel_sortKey, i64 %sum18_cast
  %bgmodel_sortKey_addr_22_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_18, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_18, float %part_bgmodel_mean_load, i4 -1)
  %bgmodel_sortKey_addr_22_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_18)
  %part_bgmodel_var_addr_1 = getelementptr [2560 x float]* %part_bgmodel_var, i64 0, i64 %tmp_51
  %part_bgmodel_var_load = load float* %part_bgmodel_var_addr_1, align 4
  %sum16 = add i31 %tmp_63_cast, %tmp_53_cast
  %sum19_cast = zext i31 %sum16 to i64
  %bgmodel_sortKey_addr_19 = getelementptr float* %bgmodel_sortKey, i64 %sum19_cast
  %bgmodel_sortKey_addr_23_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_sortKey_addr_19, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_sortKey_addr_19, float %part_bgmodel_var_load, i4 -1)
  %bgmodel_sortKey_addr_23_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_sortKey_addr_19)
  %burstwrite_rend131 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin2)
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
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18, metadata !21, metadata !22, metadata !23}
!18 = metadata !{metadata !"bgmodel.sortKey", metadata !19, metadata !"float", i32 0, i32 31}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 153599, i32 1}
!21 = metadata !{metadata !"bgmodel.weight", metadata !19, metadata !"float", i32 0, i32 31}
!22 = metadata !{metadata !"bgmodel.mean", metadata !19, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !"bgmodel.var", metadata !19, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 7, metadata !26}
!26 = metadata !{metadata !27, metadata !30}
!27 = metadata !{metadata !"frame_in", metadata !28, metadata !"unsigned char", i32 0, i32 7}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 76799, i32 1}
!30 = metadata !{metadata !"frame_out", metadata !28, metadata !"unsigned char", i32 0, i32 7}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"init", metadata !35, metadata !"bool", i32 0, i32 0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, i32 0}
