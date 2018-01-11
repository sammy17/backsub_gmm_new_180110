; ModuleID = '/home/fyp-zc702/FYP/backsub_gmm_new_180110/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mode7 = internal constant [10 x i8] c"s_axilite\00"
@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_part_bgmodel_OC_bgmo = internal unnamed_addr constant [28 x i8] c"memcpy.part_bgmodel.bgmodel\00"
@memcpy_OC_part2_bgmodel_OC_bgm = internal unnamed_addr constant [29 x i8] c"memcpy.part2_bgmodel.bgmodel\00"
@memcpy_OC_frame_out_OC_str = internal unnamed_addr constant [18 x i8] c"memcpy.frame_out.\00"
@memcpy_OC_bgmodel_OC_part_bgmo = internal unnamed_addr constant [32 x i8] c"memcpy.bgmodel.part_bgmodel.gep\00"
@memcpy_OC_bgmodel_OC_part2_bgm = internal unnamed_addr constant [33 x i8] c"memcpy.bgmodel.part2_bgmodel.gep\00"
@memcpy_OC_OC_frame_in_str = internal unnamed_addr constant [17 x i8] c"memcpy..frame_in\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle8 = internal constant [1 x i8] zeroinitializer
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@bgsub_str = internal unnamed_addr constant [6 x i8] c"bgsub\00"
@p_str52 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1812 = private unnamed_addr constant [10 x i8] c"write_mem\00", align 1
@p_str1810 = private unnamed_addr constant [9 x i8] c"read_mem\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1808 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1807 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1806 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1804 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @bgsub_process([320 x i8]* nocapture %frame_in, [320 x i1]* nocapture %frame_out, [2560 x float]* nocapture %bgmodel, float %learningRate) {
  %learningRate_read = call float @_ssdm_op_Read.ap_auto.float(float %learningRate)
  %learningRate_to_int = bitcast float %learningRate_read to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %learningRate_to_int, i32 23, i32 30)
  %tmp_1 = trunc i32 %learningRate_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_1, 0
  %tmp_2 = or i1 %notrhs, %notlhs
  %tmp_3 = fcmp ogt float %learningRate_read, 0.000000e+00
  %tmp_4 = and i1 %tmp_2, %tmp_3
  br label %1

; <label>:1                                       ; preds = %.loopexit42, %0
  %mptr_0_rec = phi i12 [ 0, %0 ], [ %mptr_3_rec, %.loopexit42 ]
  %y = phi i1 [ false, %0 ], [ true, %.loopexit42 ]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %y, label %22, label %2

; <label>:2                                       ; preds = %1
  br i1 %tmp_4, label %.preheader46, label %.preheader41

.preheader46:                                     ; preds = %2, %15
  %mptr_1_rec = phi i12 [ %p_rec1, %15 ], [ 0, %2 ]
  %x = phi i9 [ %x_3, %15 ], [ 0, %2 ]
  %exitcond2 = icmp eq i9 %x, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_3 = add i9 %x, 1
  br i1 %exitcond2, label %.loopexit42, label %3

; <label>:3                                       ; preds = %.preheader46
  %sum_cast = zext i9 %x to i64
  %frame_in_addr = getelementptr [320 x i8]* %frame_in, i64 0, i64 %sum_cast
  %frame_in_load = load i8* %frame_in_addr, align 1
  %pix1 = zext i8 %frame_in_load to i32
  %pix = sitofp i32 %pix1 to float
  %mptr_1_sum = add i12 %mptr_0_rec, %mptr_1_rec
  %mptr_1_sum_cast = zext i12 %mptr_1_sum to i13
  br label %4

; <label>:4                                       ; preds = %6, %3
  %k = phi i2 [ 0, %3 ], [ %k_2, %6 ]
  %wsum = phi float [ 0.000000e+00, %3 ], [ %wsum_5, %6 ]
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_2 = add i2 %k, 1
  br i1 %tmp_6, label %.loopexit11, label %5

; <label>:5                                       ; preds = %4
  %tmp_12 = trunc i2 %k to i1
  %tmp_8 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_12, i2 0)
  %tmp_5 = or i3 %tmp_8, 1
  %tmp_9 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_1_sum, i32 3, i32 11)
  %sum1 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_9, i3 %tmp_5)
  %sum1_cast = zext i12 %sum1 to i64
  %bgmodel_addr = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum1_cast
  %w = load float* %bgmodel_addr, align 4
  %wsum_5 = fadd float %wsum, %w
  %w_to_int = bitcast float %w to i32
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w_to_int, i32 23, i32 30)
  %tmp_26 = trunc i32 %w_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_11, -1
  %notrhs1 = icmp eq i23 %tmp_26, 0
  %tmp_13 = or i1 %notrhs1, %notlhs1
  %tmp_15 = fcmp olt float %w, 0x3E80000000000000
  %tmp_23 = and i1 %tmp_13, %tmp_15
  br i1 %tmp_23, label %.loopexit11, label %6

; <label>:6                                       ; preds = %5
  %tmp_39 = or i3 %tmp_8, 2
  %sum4 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_9, i3 %tmp_39)
  %sum4_cast = zext i12 %sum4 to i64
  %bgmodel_addr_2 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum4_cast
  %mu = load float* %bgmodel_addr_2, align 4
  %tmp_40 = or i3 %tmp_8, 3
  %sum5 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_9, i3 %tmp_40)
  %sum5_cast = zext i12 %sum5 to i64
  %bgmodel_addr_3 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum5_cast
  %var = load float* %bgmodel_addr_3, align 4
  %diff = fsub float %pix, %mu
  %d2 = fmul float %diff, %diff
  %tmp_10 = fmul float %var, 6.250000e+00
  %d2_to_int = bitcast float %d2 to i32
  %tmp_41 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_to_int, i32 23, i32 30)
  %tmp_44 = trunc i32 %d2_to_int to i23
  %tmp_10_to_int = bitcast float %tmp_10 to i32
  %tmp_46 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_10_to_int, i32 23, i32 30)
  %tmp_48 = trunc i32 %tmp_10_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_41, -1
  %notrhs3 = icmp eq i23 %tmp_44, 0
  %tmp_51 = or i1 %notrhs3, %notlhs3
  %notlhs4 = icmp ne i8 %tmp_46, -1
  %notrhs4 = icmp eq i23 %tmp_48, 0
  %tmp_52 = or i1 %notrhs4, %notlhs4
  %tmp_53 = and i1 %tmp_51, %tmp_52
  %tmp_54 = fcmp olt float %d2, %tmp_10
  %tmp_55 = and i1 %tmp_53, %tmp_54
  br i1 %tmp_55, label %7, label %4

; <label>:7                                       ; preds = %6
  %wsum_6 = fsub float %wsum_5, %w
  %tmp_16 = fsub float 1.000000e+00, %w
  %dw = fmul float %tmp_16, %learningRate_read
  %tmp_17 = fadd float %w, %dw
  store float %tmp_17, float* %bgmodel_addr, align 4
  %tmp_18 = fmul float %diff, %learningRate_read
  %tmp_19 = fadd float %mu, %tmp_18
  store float %tmp_19, float* %bgmodel_addr_2, align 4
  %tmp_20 = fsub float %d2, %var
  %tmp_21 = fmul float %tmp_20, %learningRate_read
  %tmp_22 = fadd float %var, %tmp_21
  %tmp_22_to_int = bitcast float %tmp_22 to i32
  %tmp_67 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_22_to_int, i32 23, i32 30)
  %tmp_68 = trunc i32 %tmp_22_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_67, -1
  %notrhs7 = icmp eq i23 %tmp_68, 0
  %tmp_69 = or i1 %notrhs7, %notlhs7
  %tmp_70 = fcmp olt float %tmp_22, 2.250000e+02
  %tmp_71 = and i1 %tmp_69, %tmp_70
  %var_2 = select i1 %tmp_71, float 2.250000e+02, float %tmp_22
  store float %var_2, float* %bgmodel_addr_3, align 4
  %tmp_i = call float @llvm.sqrt.f32(float %var_2) nounwind
  %tmp_24 = fdiv float %w, %tmp_i
  %sum8 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9 %tmp_9, i1 %tmp_12, i2 0)
  %sum8_cast = zext i12 %sum8 to i64
  %bgmodel_addr_6 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum8_cast
  store float %tmp_24, float* %bgmodel_addr_6, align 4
  %sum = or i12 %mptr_1_sum, 1
  %sum11_cast = zext i12 %sum to i64
  %bgmodel_addr_9 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum11_cast
  br label %8

; <label>:8                                       ; preds = %10, %7
  %kHit = phi i2 [ %k, %7 ], [ %k1, %10 ]
  %k1 = add i2 -1, %kHit
  %tmp_73 = trunc i2 %k1 to i1
  %tmp_25 = icmp eq i2 %kHit, 1
  br i1 %tmp_25, label %9, label %.loopexit11

; <label>:9                                       ; preds = %8
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1804)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %tmp_75 = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %mptr_1_sum, i32 1, i32 11)
  %sum2 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_75, i1 %tmp_73)
  %sum10_cast = zext i12 %sum2 to i64
  %bgmodel_addr_8 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum10_cast
  %p_tmp = load float* %bgmodel_addr_8, align 4
  %bgmodel_load_12 = load float* %bgmodel_addr_9, align 4
  %p_a_read_assign_to_int = bitcast float %p_tmp to i32
  %tmp_76 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_a_read_assign_to_int, i32 23, i32 30)
  %tmp_77 = trunc i32 %p_a_read_assign_to_int to i23
  %p_b_read_assign_to_int = bitcast float %bgmodel_load_12 to i32
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_b_read_assign_to_int, i32 23, i32 30)
  %tmp_82 = trunc i32 %p_b_read_assign_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_76, -1
  %notrhs8 = icmp eq i23 %tmp_77, 0
  %tmp_86 = or i1 %notrhs8, %notlhs9
  %notlhs10 = icmp ne i8 %tmp_78, -1
  %notrhs10 = icmp eq i23 %tmp_82, 0
  %tmp_87 = or i1 %notrhs10, %notlhs10
  %tmp_88 = and i1 %tmp_86, %tmp_87
  %tmp_89 = fcmp oge float %p_tmp, %bgmodel_load_12
  %tmp_90 = and i1 %tmp_88, %tmp_89
  br i1 %tmp_90, label %.loopexit11, label %10

; <label>:10                                      ; preds = %9
  store float %bgmodel_load_12, float* %bgmodel_addr_8, align 4
  store float %p_tmp, float* %bgmodel_addr_9, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1804, i32 %tmp_27)
  br label %8

.loopexit11:                                      ; preds = %5, %4, %9, %8
  %wsum_1 = phi float [ %wsum_6, %8 ], [ %wsum_6, %9 ], [ %wsum_5, %5 ], [ %wsum, %4 ]
  %kHit1 = phi i2 [ 1, %9 ], [ %kHit, %8 ], [ -1, %4 ], [ -1, %5 ]
  %k_cast4 = zext i2 %k to i32
  %tmp_91 = trunc i2 %k to i1
  %tmp_92 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit1, i32 1)
  br i1 %tmp_92, label %11, label %.preheader43

; <label>:11                                      ; preds = %.loopexit11
  %tmp_95 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1)
  %k_10 = or i1 %tmp_95, %tmp_91
  %k_10_cast1 = zext i1 %k_10 to i2
  %tmp_32 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %k_10, i2 0)
  %tmp_96 = or i3 %tmp_32, 1
  %tmp_97 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_1_sum, i32 3, i32 11)
  %sum10 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_97, i3 %tmp_96)
  %sum12_cast = zext i12 %sum10 to i64
  %bgmodel_addr_10 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum12_cast
  %bgmodel_load_7 = load float* %bgmodel_addr_10, align 4
  %tmp_34 = fsub float 0x3FA99999A0000000, %bgmodel_load_7
  %wsum_7 = fadd float %wsum_1, %tmp_34
  store float 0x3FA99999A0000000, float* %bgmodel_addr_10, align 4
  %tmp_98 = or i3 %tmp_32, 2
  %sum11 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_97, i3 %tmp_98)
  %sum13_cast = zext i12 %sum11 to i64
  %bgmodel_addr_11 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum13_cast
  store float %pix, float* %bgmodel_addr_11, align 4
  %tmp_99 = or i3 %tmp_32, 3
  %sum12 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_97, i3 %tmp_99)
  %sum14_cast = zext i12 %sum12 to i64
  %bgmodel_addr_12 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum14_cast
  store float 9.000000e+02, float* %bgmodel_addr_12, align 4
  %sum13 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9 %tmp_97, i1 %k_10, i2 0)
  %sum15_cast = zext i12 %sum13 to i64
  %bgmodel_addr_13 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum15_cast
  store float 0x3F5B4E81C0000000, float* %bgmodel_addr_13, align 4
  br label %.loopexit44

.preheader43:                                     ; preds = %.loopexit11, %12
  %k_1 = phi i32 [ %k_8, %12 ], [ %k_cast4, %.loopexit11 ]
  %wsum_2 = phi float [ %wsum_9, %12 ], [ %wsum_1, %.loopexit11 ]
  %exitcond4 = icmp eq i32 %k_1, 2
  br i1 %exitcond4, label %.loopexit44, label %12

; <label>:12                                      ; preds = %.preheader43
  %tmp_43 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 2, i32 2, [1 x i8]* @p_str1805) nounwind
  %tmp_103 = trunc i32 %k_1 to i11
  %tmp_45 = call i13 @_ssdm_op_BitConcatenate.i13.i11.i2(i11 %tmp_103, i2 0)
  %tmp_64_cast = or i13 %tmp_45, 1
  %sum14 = add i13 %mptr_1_sum_cast, %tmp_64_cast
  %sum16_cast = zext i13 %sum14 to i64
  %bgmodel_addr_14 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum16_cast
  %bgmodel_load_9 = load float* %bgmodel_addr_14, align 4
  %wsum_9 = fadd float %wsum_2, %bgmodel_load_9
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1806, i32 %tmp_43)
  %k_8 = add nsw i32 1, %k_1
  br label %.preheader43

.loopexit44:                                      ; preds = %.preheader43, %11
  %wsum_3 = phi float [ %wsum_7, %11 ], [ %wsum_2, %.preheader43 ]
  %kHit_1 = phi i2 [ %k_10_cast1, %11 ], [ %kHit1, %.preheader43 ]
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
  %tmp_108 = trunc i2 %k_9 to i1
  %tmp_47 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_108, i2 0)
  %tmp_100 = or i3 %tmp_47, 1
  %tmp_101 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_1_sum, i32 3, i32 11)
  %sum15 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_101, i3 %tmp_100)
  %sum17_cast = zext i12 %sum15 to i64
  %bgmodel_addr_15 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum17_cast
  %bgmodel_load_10 = load float* %bgmodel_addr_15, align 4
  %tmp_49 = fmul float %bgmodel_load_10, %wscale
  store float %tmp_49, float* %bgmodel_addr_15, align 4
  %wsum_10 = fadd float %wsum_4, %tmp_49
  %sum16 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9 %tmp_101, i1 %tmp_108, i2 0)
  %sum18_cast = zext i12 %sum16 to i64
  %bgmodel_addr_16 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum18_cast
  %bgmodel_load_11 = load float* %bgmodel_addr_16, align 4
  %tmp_50 = fmul float %bgmodel_load_11, %wscale
  store float %tmp_50, float* %bgmodel_addr_16, align 4
  %wsum_10_to_int = bitcast float %wsum_10 to i32
  %tmp_102 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_10_to_int, i32 23, i32 30)
  %tmp_109 = trunc i32 %wsum_10_to_int to i23
  %notlhs11 = icmp ne i8 %tmp_102, -1
  %notrhs11 = icmp eq i23 %tmp_109, 0
  %tmp_104 = or i1 %notrhs11, %notlhs11
  %tmp_105 = fcmp ogt float %wsum_10, 0x3FE6666660000000
  %tmp_106 = and i1 %tmp_104, %tmp_105
  %tmp_110 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %kForeground1, i32 31)
  %or_cond = and i1 %tmp_106, %tmp_110
  %kForeground_1_cast = zext i2 %kForeground_1 to i32
  %p_kForeground = select i1 %or_cond, i32 %kForeground_1_cast, i32 %kForeground1
  br label %13

; <label>:15                                      ; preds = %13
  %slt = icmp slt i32 %kHit_1_cast, %kForeground1
  %rev = xor i1 %slt, true
  %frame_out_addr_1 = getelementptr [320 x i1]* %frame_out, i64 0, i64 %sum_cast
  store i1 %rev, i1* %frame_out_addr_1, align 1
  %p_rec1 = add i12 %mptr_1_rec, 8
  br label %.preheader46

.preheader41:                                     ; preds = %2, %.loopexit
  %mptr_2_rec = phi i12 [ %p_rec, %.loopexit ], [ 0, %2 ]
  %x_1 = phi i9 [ %x_2, %.loopexit ], [ 0, %2 ]
  %exitcond = icmp eq i9 %x_1, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_2 = add i9 %x_1, 1
  br i1 %exitcond, label %.loopexit42, label %16

; <label>:16                                      ; preds = %.preheader41
  %sum2_cast = zext i9 %x_1 to i64
  %frame_in_addr_1 = getelementptr [320 x i8]* %frame_in, i64 0, i64 %sum2_cast
  %frame_in_load_1 = load i8* %frame_in_addr_1, align 1
  %pix_s = zext i8 %frame_in_load_1 to i32
  %pix_1 = sitofp i32 %pix_s to float
  %mptr_2_sum = add i12 %mptr_0_rec, %mptr_2_rec
  br label %17

; <label>:17                                      ; preds = %19, %16
  %kHit_4 = phi i2 [ 0, %16 ], [ %k_4, %19 ]
  %kHit_4_cast = zext i2 %kHit_4 to i3
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit_4, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_4 = add i2 %kHit_4, 1
  br i1 %tmp_7, label %.loopexit7.loopexit, label %18

; <label>:18                                      ; preds = %17
  %tmp_29 = trunc i2 %kHit_4 to i1
  %tmp_s = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_29, i2 0)
  %tmp_28 = or i3 %tmp_s, 1
  %tmp_30 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_2_sum, i32 3, i32 11)
  %sum3 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_30, i3 %tmp_28)
  %sum3_cast = zext i12 %sum3 to i64
  %bgmodel_addr_1 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum3_cast
  %bgmodel_load = load float* %bgmodel_addr_1, align 4
  %bgmodel_load_to_int = bitcast float %bgmodel_load to i32
  %tmp_31 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bgmodel_load_to_int, i32 23, i32 30)
  %tmp_33 = trunc i32 %bgmodel_load_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_31, -1
  %notrhs2 = icmp eq i23 %tmp_33, 0
  %tmp_35 = or i1 %notrhs2, %notlhs2
  %tmp_36 = fcmp olt float %bgmodel_load, 0x3E80000000000000
  %tmp_38 = and i1 %tmp_35, %tmp_36
  br i1 %tmp_38, label %.loopexit7.loopexit, label %19

; <label>:19                                      ; preds = %18
  %tmp_56 = or i3 %tmp_s, 2
  %sum6 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_30, i3 %tmp_56)
  %sum6_cast = zext i12 %sum6 to i64
  %bgmodel_addr_4 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum6_cast
  %mu_1 = load float* %bgmodel_addr_4, align 4
  %tmp_57 = or i3 %tmp_s, 3
  %sum7 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_30, i3 %tmp_57)
  %sum7_cast = zext i12 %sum7 to i64
  %bgmodel_addr_5 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum7_cast
  %var_1 = load float* %bgmodel_addr_5, align 4
  %diff_1 = fsub float %pix_1, %mu_1
  %d2_1 = fmul float %diff_1, %diff_1
  %tmp_14 = fmul float %var_1, 6.250000e+00
  %d2_1_to_int = bitcast float %d2_1 to i32
  %tmp_58 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_1_to_int, i32 23, i32 30)
  %tmp_59 = trunc i32 %d2_1_to_int to i23
  %tmp_14_to_int = bitcast float %tmp_14 to i32
  %tmp_60 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_14_to_int, i32 23, i32 30)
  %tmp_61 = trunc i32 %tmp_14_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_58, -1
  %notrhs5 = icmp eq i23 %tmp_59, 0
  %tmp_62 = or i1 %notrhs5, %notlhs5
  %notlhs6 = icmp ne i8 %tmp_60, -1
  %notrhs6 = icmp eq i23 %tmp_61, 0
  %tmp_63 = or i1 %notrhs6, %notlhs6
  %tmp_64 = and i1 %tmp_62, %tmp_63
  %tmp_65 = fcmp olt float %d2_1, %tmp_14
  %tmp_66 = and i1 %tmp_64, %tmp_65
  br i1 %tmp_66, label %.loopexit7, label %17

.loopexit7.loopexit:                              ; preds = %17, %18
  br label %.loopexit7

.loopexit7:                                       ; preds = %19, %.loopexit7.loopexit
  %kHit2 = phi i3 [ -1, %.loopexit7.loopexit ], [ %kHit_4_cast, %19 ]
  %tmp_72 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %kHit2, i32 2)
  br i1 %tmp_72, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit7, %20
  %k_5 = phi i2 [ %k_11, %20 ], [ 0, %.loopexit7 ]
  %wsum8 = phi float [ %wsum_8, %20 ], [ 0.000000e+00, %.loopexit7 ]
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k_5, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_11 = add i2 %k_5, 1
  br i1 %tmp_74, label %.loopexit, label %20

; <label>:20                                      ; preds = %.preheader
  %tmp_93 = trunc i2 %k_5 to i1
  %tmp_37 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_93, i2 0)
  %tmp_79 = or i3 %tmp_37, 1
  %tmp_80 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %mptr_2_sum, i32 3, i32 11)
  %sum9 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %tmp_80, i3 %tmp_79)
  %sum9_cast = zext i12 %sum9 to i64
  %bgmodel_addr_7 = getelementptr [2560 x float]* %bgmodel, i64 0, i64 %sum9_cast
  %bgmodel_load_6 = load float* %bgmodel_addr_7, align 4
  %wsum_8 = fadd float %wsum8, %bgmodel_load_6
  %wsum_8_to_int = bitcast float %wsum_8 to i32
  %tmp_81 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_8_to_int, i32 23, i32 30)
  %tmp_94 = trunc i32 %wsum_8_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_81, -1
  %notrhs9 = icmp eq i23 %tmp_94, 0
  %tmp_83 = or i1 %notrhs9, %notlhs8
  %tmp_84 = fcmp ogt float %wsum_8, 0x3FE6666660000000
  %tmp_85 = and i1 %tmp_83, %tmp_84
  br i1 %tmp_85, label %21, label %.preheader

; <label>:21                                      ; preds = %20
  %kForeground_cast = zext i2 %k_11 to i3
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit7, %21
  %kForeground3_1 = phi i3 [ %kForeground_cast, %21 ], [ -1, %.loopexit7 ], [ -1, %.preheader ]
  %tmp_107 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %kHit2, i32 2)
  %slt1 = icmp slt i3 %kHit2, %kForeground3_1
  %rev1 = xor i1 %slt1, true
  %tmp_42 = or i1 %tmp_107, %rev1
  %frame_out_addr = getelementptr [320 x i1]* %frame_out, i64 0, i64 %sum2_cast
  store i1 %tmp_42, i1* %frame_out_addr, align 1
  %p_rec = add i12 %mptr_2_rec, 8
  br label %.preheader41

.loopexit42:                                      ; preds = %.preheader46, %.preheader41
  %mptr_3_rec = add i12 %mptr_0_rec, -1536
  br label %1

; <label>:22                                      ; preds = %1
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @bgsub(i8* %gmem, float* %gmem_offset, i32 %frame_in, i32 %frame_out, i1 %init, i32 %bgmodel) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !18
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @bgsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %bgmodel, [10 x i8]* @mode7, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @bundle8, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 1, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle6, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  %bgmodel_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bgmodel)
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init)
  %frame_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_out)
  %frame_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_in)
  call fastcc void @bgsub_Block__proc(i1 %init_read, float* %gmem_offset, i32 %bgmodel_read, i8* %gmem, i32 %frame_out_read, i32 %frame_in_read)
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

define weak i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_8 = trunc i12 %empty to i9
  ret i9 %empty_8
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i8
  ret i8 %empty_9
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i30
  ret i30 %empty_10
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_11 = trunc i12 %empty to i11
  ret i11 %empty_11
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_12 = and i32 %0, %empty
  %empty_13 = icmp ne i32 %empty_12, 0
  ret i1 %empty_13
}

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_14 = shl i3 1, %empty
  %empty_15 = and i3 %0, %empty_14
  %empty_16 = icmp ne i3 %empty_15, 0
  ret i1 %empty_16
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_17 = shl i2 1, %empty
  %empty_18 = and i2 %0, %empty_17
  %empty_19 = icmp ne i2 %empty_18, 0
  ret i1 %empty_19
}

define weak i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1, i2) nounwind readnone {
entry:
  %empty = zext i1 %0 to i3
  %empty_20 = zext i2 %1 to i3
  %empty_21 = shl i3 %empty, 2
  %empty_22 = or i3 %empty_21, %empty_20
  ret i3 %empty_22
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i7.i11(i7, i11) nounwind readnone {
entry:
  %empty = zext i7 %0 to i18
  %empty_23 = zext i11 %1 to i18
  %empty_24 = shl i18 %empty, 11
  %empty_25 = or i18 %empty_24, %empty_23
  ret i18 %empty_25
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7, i9) nounwind readnone {
entry:
  %empty = zext i7 %0 to i16
  %empty_26 = zext i9 %1 to i16
  %empty_27 = shl i16 %empty, 9
  %empty_28 = or i16 %empty_27, %empty_26
  ret i16 %empty_28
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i7.i8(i7, i8) nounwind readnone {
entry:
  %empty = zext i7 %0 to i15
  %empty_29 = zext i8 %1 to i15
  %empty_30 = shl i15 %empty, 8
  %empty_31 = or i15 %empty_30, %empty_29
  ret i15 %empty_31
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_32 = zext i6 %1 to i13
  %empty_33 = shl i13 %empty, 6
  %empty_34 = or i13 %empty_33, %empty_32
  ret i13 %empty_34
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i11.i2(i11, i2) nounwind readnone {
entry:
  %empty = zext i11 %0 to i13
  %empty_35 = zext i2 %1 to i13
  %empty_36 = shl i13 %empty, 2
  %empty_37 = or i13 %empty_36, %empty_35
  ret i13 %empty_37
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9, i3) nounwind readnone {
entry:
  %empty = zext i9 %0 to i12
  %empty_38 = zext i3 %1 to i12
  %empty_39 = shl i12 %empty, 3
  %empty_40 = or i12 %empty_39, %empty_38
  ret i12 %empty_40
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i9.i1.i2(i9, i1, i2) nounwind readnone {
entry:
  %empty = zext i1 %1 to i3
  %empty_41 = zext i2 %2 to i3
  %empty_42 = shl i3 %empty, 2
  %empty_43 = or i3 %empty_42, %empty_41
  %empty_44 = zext i9 %0 to i12
  %empty_45 = zext i3 %empty_43 to i12
  %empty_46 = shl i12 %empty_44, 3
  %empty_47 = or i12 %empty_46, %empty_45
  ret i12 %empty_47
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_48 = zext i1 %1 to i12
  %empty_49 = shl i12 %empty, 1
  %empty_50 = or i12 %empty_49, %empty_48
  ret i12 %empty_50
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @bgsub_Block__proc(i1 %init, float* %bgmodel, i32 %bgmodel1, i8* %frame_out, i32 %frame_out2, i32 %frame_in) {
newFuncRoot:
  %frame_in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_in)
  %frame_out2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_out2)
  %bgmodel1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel1)
  %init_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %init)
  %tmp_111_cast = sext i32 %frame_in_read to i33
  %tmp_112_cast = sext i32 %frame_out2_read to i33
  %tmp_111 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel1_read, i32 2, i32 31)
  %tmp_113_cast = zext i30 %tmp_111 to i31
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel, [6 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @p_str1805, [6 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  %part_bgmodel = alloca [2560 x float], align 16
  %part_frame_in = alloca [320 x i8], align 16
  %part_frame_out = alloca [320 x i1], align 1
  %part2_bgmodel = alloca [2560 x float], align 16
  %part2_frame_in = alloca [320 x i8], align 16
  %part2_frame_out = alloca [320 x i1], align 1
  br i1 %init_read, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %newFuncRoot
  %tmp_112 = zext i30 %tmp_111 to i64
  %bgmodel_addr = getelementptr float* %bgmodel, i64 %tmp_112
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr, i32 307200)
  br label %.preheader

.exitStub:                                        ; preds = %1
  ret void

.preheader:                                       ; preds = %0, %.preheader.preheader
  %p = phi i19 [ %p_1, %0 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i19 %p, -217088
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 307200, i64 307200, i64 307200)
  %p_1 = add i19 %p, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %0

.loopexit.loopexit:                               ; preds = %.preheader
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %newFuncRoot
  %learningRate = phi float [ 0.000000e+00, %newFuncRoot ], [ 1.000000e+00, %.loopexit.loopexit ]
  br label %1

; <label>:0                                       ; preds = %.preheader
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr, float 0.000000e+00, i4 -1)
  br label %.preheader

; <label>:1                                       ; preds = %burst.wr.end83, %.loopexit
  %part = phi i7 [ 0, %.loopexit ], [ %part_1, %burst.wr.end83 ]
  %tmp_53 = icmp ult i7 %part, -8
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 60, i64 60, i64 60)
  br i1 %tmp_53, label %2, label %.exitStub

burst.wr.end83:                                   ; preds = %burst.wr.header84
  %p_wr_resp105 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_4)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1812, i32 %tmp_65) nounwind
  %part_1 = add i7 %part, 2
  br label %1

burst.wr.header84:                                ; preds = %burst.wr.header84.preheader, %burst.wr.body85
  %indvar6 = phi i9 [ %indvar_next7, %burst.wr.body85 ], [ 0, %burst.wr.header84.preheader ]
  %exitcond2 = icmp eq i9 %indvar6, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next7 = add i9 %indvar6, 1
  br i1 %exitcond2, label %burst.wr.end83, label %burst.wr.body85

burst.wr.body85:                                  ; preds = %burst.wr.header84
  %burstwrite_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_51 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str52) nounwind
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_74 = zext i9 %indvar6 to i64
  %part2_frame_out_addr = getelementptr [320 x i1]* %part2_frame_out, i64 0, i64 %tmp_74
  %part2_frame_out_load = load i1* %part2_frame_out_addr, align 1
  %extLd1 = select i1 %part2_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_4, i8 %extLd1, i1 true)
  %burstwrite_rend96 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin3) nounwind
  br label %burst.wr.header84

burst.wr.header70:                                ; preds = %burst.wr.header70.preheader, %burst.wr.body71
  %indvar5 = phi i12 [ %indvar_next6, %burst.wr.body71 ], [ 0, %burst.wr.header70.preheader ]
  %exitcond9 = icmp eq i12 %indvar5, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next6 = add i12 %indvar5, 1
  br i1 %exitcond9, label %burst.wr.header84.preheader, label %burst.wr.body71

burst.wr.header84.preheader:                      ; preds = %burst.wr.header70
  %p_wr_resp107 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_18)
  %tmp_127 = add i33 %tmp_119, %tmp_112_cast
  %tmp_128 = sext i33 %tmp_127 to i64
  %frame_out_addr_4 = getelementptr i8* %frame_out, i64 %tmp_128
  %p_wr_req104 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_4, i32 320)
  br label %burst.wr.header84

burst.wr.body71:                                  ; preds = %burst.wr.header70
  %burstwrite_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_53 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str41) nounwind
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopName([33 x i8]* @memcpy_OC_bgmodel_OC_part2_bgm) nounwind
  %tmp_72 = zext i12 %indvar5 to i64
  %part2_bgmodel_addr_1 = getelementptr [2560 x float]* %part2_bgmodel, i64 0, i64 %tmp_72
  %part2_bgmodel_load = load float* %part2_bgmodel_addr_1, align 4
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr_18, float %part2_bgmodel_load, i4 -1)
  %burstwrite_rend81 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin2) nounwind
  br label %burst.wr.header70

burst.wr.header57:                                ; preds = %burst.wr.header57.preheader, %burst.wr.body58
  %indvar4 = phi i9 [ %indvar_next5, %burst.wr.body58 ], [ 0, %burst.wr.header57.preheader ]
  %exitcond8 = icmp eq i9 %indvar4, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next5 = add i9 %indvar4, 1
  br i1 %exitcond8, label %burst.wr.header70.preheader, label %burst.wr.body58

burst.wr.header70.preheader:                      ; preds = %burst.wr.header57
  %p_wr_resp109 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_3)
  %p_wr_req106 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_18, i32 2560)
  br label %burst.wr.header70

burst.wr.body58:                                  ; preds = %burst.wr.header57
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_55 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str39) nounwind
  %empty_56 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_70 = zext i9 %indvar4 to i64
  %part_frame_out_addr = getelementptr [320 x i1]* %part_frame_out, i64 0, i64 %tmp_70
  %part_frame_out_load = load i1* %part_frame_out_addr, align 1
  %extLd = select i1 %part_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_3, i8 %extLd, i1 true)
  %burstwrite_rend67 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin1) nounwind
  br label %burst.wr.header57

burst.wr.header:                                  ; preds = %burst.wr.body, %burst.rd.end33
  %indvar3 = phi i12 [ 0, %burst.rd.end33 ], [ %indvar_next4, %burst.wr.body ]
  %exitcond7 = icmp eq i12 %indvar3, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next4 = add i12 %indvar3, 1
  br i1 %exitcond7, label %burst.wr.header57.preheader, label %burst.wr.body

burst.wr.header57.preheader:                      ; preds = %burst.wr.header
  %p_wr_resp114 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_17)
  %tmp_125 = add i33 %tmp_113, %tmp_112_cast
  %tmp_126 = sext i33 %tmp_125 to i64
  %frame_out_addr_3 = getelementptr i8* %frame_out, i64 %tmp_126
  %p_wr_req108 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_3, i32 320)
  br label %burst.wr.header57

burst.rd.end33:                                   ; preds = %burst.rd.header34
  %empty_57 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1810, i32 %tmp) nounwind
  call fastcc void @bgsub_process([320 x i8]* %part_frame_in, [320 x i1]* %part_frame_out, [2560 x float]* %part_bgmodel, float %learningRate) nounwind
  call fastcc void @bgsub_process([320 x i8]* %part2_frame_in, [320 x i1]* %part2_frame_out, [2560 x float]* %part2_bgmodel, float %learningRate) nounwind
  %tmp_65 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1812) nounwind
  %p_wr_req113 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_17, i32 2560)
  br label %burst.wr.header

burst.rd.header34:                                ; preds = %burst.rd.body35, %burst.rd.end18
  %indvar2 = phi i12 [ 0, %burst.rd.end18 ], [ %indvar_next3, %burst.rd.body35 ]
  %exitcond6 = icmp eq i12 %indvar2, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next3 = add i12 %indvar2, 1
  br i1 %exitcond6, label %burst.rd.end33, label %burst.rd.body35

burst.rd.end18:                                   ; preds = %burst.rd.header19
  %p_shl7 = call i18 @_ssdm_op_BitConcatenate.i18.i7.i11(i7 %tmp_58, i11 0)
  %p_shl7_cast = zext i18 %p_shl7 to i19
  %p_shl8 = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %tmp_58, i9 0)
  %p_shl8_cast = zext i16 %p_shl8 to i19
  %tmp_62 = add i19 %p_shl7_cast, %p_shl8_cast
  %tmp_122 = zext i19 %tmp_62 to i31
  %tmp_123 = add i31 %tmp_113_cast, %tmp_122
  %tmp_124 = zext i31 %tmp_123 to i64
  %bgmodel_addr_18 = getelementptr float* %bgmodel, i64 %tmp_124
  %p_rd_req112 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_18, i32 2560)
  br label %burst.rd.header34

burst.rd.header19:                                ; preds = %burst.rd.body20, %burst.rd.end6
  %indvar1 = phi i9 [ 0, %burst.rd.end6 ], [ %indvar_next2, %burst.rd.body20 ]
  %exitcond5 = icmp eq i9 %indvar1, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next2 = add i9 %indvar1, 1
  br i1 %exitcond5, label %burst.rd.end18, label %burst.rd.body20

burst.rd.end6:                                    ; preds = %burst.rd.header7
  %tmp_58 = or i7 %part, 1
  %p_shl5 = call i15 @_ssdm_op_BitConcatenate.i15.i7.i8(i7 %tmp_58, i8 0)
  %p_shl5_cast = zext i15 %p_shl5 to i16
  %p_shl6 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_58, i6 0)
  %p_shl6_cast = zext i13 %p_shl6 to i16
  %tmp_59 = add i16 %p_shl5_cast, %p_shl6_cast
  %tmp_119 = zext i16 %tmp_59 to i33
  %tmp_120 = add i33 %tmp_111_cast, %tmp_119
  %tmp_121 = sext i33 %tmp_120 to i64
  %frame_out_addr_2 = getelementptr i8* %frame_out, i64 %tmp_121
  %p_rd_req111 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr_2, i32 320)
  br label %burst.rd.header19

burst.rd.header7:                                 ; preds = %burst.rd.body8, %burst.rd.end
  %indvar9 = phi i12 [ 0, %burst.rd.end ], [ %indvar_next1, %burst.rd.body8 ]
  %exitcond4 = icmp eq i12 %indvar9, -1536
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2560, i64 2560, i64 2560)
  %indvar_next1 = add i12 %indvar9, 1
  br i1 %exitcond4, label %burst.rd.end6, label %burst.rd.body8

burst.rd.end:                                     ; preds = %burst.rd.header
  %p_shl3 = call i18 @_ssdm_op_BitConcatenate.i18.i7.i11(i7 %part, i11 0)
  %p_shl3_cast = zext i18 %p_shl3 to i19
  %p_shl4 = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %part, i9 0)
  %p_shl4_cast = zext i16 %p_shl4 to i19
  %tmp_55 = add i19 %p_shl3_cast, %p_shl4_cast
  %tmp_116 = zext i19 %tmp_55 to i31
  %tmp_117 = add i31 %tmp_113_cast, %tmp_116
  %tmp_118 = zext i31 %tmp_117 to i64
  %bgmodel_addr_17 = getelementptr float* %bgmodel, i64 %tmp_118
  %p_rd_req110 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_17, i32 2560)
  br label %burst.rd.header7

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i9 [ 0, %2 ], [ %indvar_next, %burst.rd.body ]
  %exitcond1 = icmp eq i9 %indvar, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %indvar_next = add i9 %indvar, 1
  br i1 %exitcond1, label %burst.rd.end, label %burst.rd.body

; <label>:2                                       ; preds = %1
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1810) nounwind
  %p_shl = call i15 @_ssdm_op_BitConcatenate.i15.i7.i8(i7 %part, i8 0)
  %p_shl_cast = zext i15 %p_shl to i16
  %p_shl2 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %part, i6 0)
  %p_shl2_cast = zext i13 %p_shl2 to i16
  %tmp_54 = add i16 %p_shl_cast, %p_shl2_cast
  %tmp_113 = zext i16 %tmp_54 to i33
  %tmp_114 = add i33 %tmp_111_cast, %tmp_113
  %tmp_115 = sext i33 %tmp_114 to i64
  %frame_out_addr = getelementptr i8* %frame_out, i64 %tmp_115
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr, i32 320)
  br label %burst.rd.header

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_58 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_59 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr)
  %tmp_57 = zext i9 %indvar to i64
  %part_frame_in_addr = getelementptr [320 x i8]* %part_frame_in, i64 0, i64 %tmp_57
  store i8 %frame_out_addr_read, i8* %part_frame_in_addr, align 1
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.body8:                                   ; preds = %burst.rd.header7
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_60 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_61 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_part_bgmodel_OC_bgmo) nounwind
  %bgmodel_addr_17_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_17)
  %tmp_61 = zext i12 %indvar9 to i64
  %part_bgmodel_addr = getelementptr [2560 x float]* %part_bgmodel, i64 0, i64 %tmp_61
  store float %bgmodel_addr_17_read, float* %part_bgmodel_addr, align 4
  %burstread_rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header7

burst.rd.body20:                                  ; preds = %burst.rd.header19
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_62 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind
  %empty_63 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr_2)
  %tmp_64 = zext i9 %indvar1 to i64
  %part2_frame_in_addr = getelementptr [320 x i8]* %part2_frame_in, i64 0, i64 %tmp_64
  store i8 %frame_out_addr_2_read, i8* %part2_frame_in_addr, align 1
  %burstread_rend31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin2) nounwind
  br label %burst.rd.header19

burst.rd.body35:                                  ; preds = %burst.rd.header34
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_64 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15) nounwind
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopName([29 x i8]* @memcpy_OC_part2_bgmodel_OC_bgm) nounwind
  %bgmodel_addr_18_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_18)
  %tmp_67 = zext i12 %indvar2 to i64
  %part2_bgmodel_addr = getelementptr [2560 x float]* %part2_bgmodel, i64 0, i64 %tmp_67
  store float %bgmodel_addr_18_read, float* %part2_bgmodel_addr, align 4
  %burstread_rend45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin3) nounwind
  br label %burst.rd.header34

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_66 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str29) nounwind
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_bgmodel_OC_part_bgmo) nounwind
  %tmp_68 = zext i12 %indvar3 to i64
  %part_bgmodel_addr_1 = getelementptr [2560 x float]* %part_bgmodel, i64 0, i64 %tmp_68
  %part_bgmodel_load = load float* %part_bgmodel_addr_1, align 4
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr_17, float %part_bgmodel_load, i4 -1)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
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
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"bgmodel", metadata !16, metadata !"float", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 307199, i32 1}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 7, metadata !20}
!20 = metadata !{metadata !21, metadata !24}
!21 = metadata !{metadata !"frame_in", metadata !22, metadata !"unsigned char", i32 0, i32 7}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 38399, i32 1}
!24 = metadata !{metadata !"frame_out", metadata !22, metadata !"unsigned char", i32 0, i32 7}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"init", metadata !29, metadata !"bool", i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 0}
