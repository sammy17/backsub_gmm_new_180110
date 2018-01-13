; ModuleID = '/home/chathura/Desktop/maxi_final_180113/backsub_gmm_new_180110/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mode7 = internal constant [10 x i8] c"s_axilite\00"
@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_part_bgmodel_OC_bgmo = internal unnamed_addr constant [28 x i8] c"memcpy.part_bgmodel.bgmodel\00"
@memcpy_OC_part4_bgmodel_OC_bgm = internal unnamed_addr constant [29 x i8] c"memcpy.part4_bgmodel.bgmodel\00"
@memcpy_OC_part3_bgmodel_OC_bgm = internal unnamed_addr constant [29 x i8] c"memcpy.part3_bgmodel.bgmodel\00"
@memcpy_OC_part2_bgmodel_OC_bgm = internal unnamed_addr constant [29 x i8] c"memcpy.part2_bgmodel.bgmodel\00"
@memcpy_OC_frame_out_OC_str = internal unnamed_addr constant [18 x i8] c"memcpy.frame_out.\00"
@memcpy_OC_bgmodel_OC_part_bgmo = internal unnamed_addr constant [32 x i8] c"memcpy.bgmodel.part_bgmodel.gep\00"
@memcpy_OC_bgmodel_OC_part4_bgm = internal unnamed_addr constant [33 x i8] c"memcpy.bgmodel.part4_bgmodel.gep\00"
@memcpy_OC_bgmodel_OC_part3_bgm = internal unnamed_addr constant [33 x i8] c"memcpy.bgmodel.part3_bgmodel.gep\00"
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
@p_str606 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str590 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str552 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str52 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str488 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str472 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str433 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str308 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1813 = private unnamed_addr constant [10 x i8] c"write_mem\00", align 1
@p_str1811 = private unnamed_addr constant [9 x i8] c"read_mem\00", align 1
@p_str1810 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1809 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1808 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1807 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1806 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1804 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str180 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @bgsub_process([640 x i8]* nocapture %frame_in, [640 x i1]* nocapture %frame_out, [5120 x float]* nocapture %bgmodel, float %learningRate) {
  %learningRate_read = call float @_ssdm_op_Read.ap_auto.float(float %learningRate)
  %learningRate_to_int = bitcast float %learningRate_read to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %learningRate_to_int, i32 23, i32 30)
  %tmp_2 = trunc i32 %learningRate_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_2, 0
  %tmp_3 = or i1 %notrhs, %notlhs
  %tmp_4 = fcmp ogt float %learningRate_read, 0.000000e+00
  %tmp_5 = and i1 %tmp_3, %tmp_4
  br label %1

; <label>:1                                       ; preds = %.loopexit42, %0
  %mptr_0_rec = phi i13 [ 0, %0 ], [ %mptr_3_rec, %.loopexit42 ]
  %y = phi i2 [ 0, %0 ], [ %y_1, %.loopexit42 ]
  %exitcond1 = icmp eq i2 %y, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %y_1 = add i2 %y, 1
  br i1 %exitcond1, label %22, label %2

; <label>:2                                       ; preds = %1
  %tmp_6 = trunc i2 %y to i1
  %tmp_1 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i1.i1.i6(i1 %tmp_6, i1 false, i1 %tmp_6, i6 0)
  %tmp_2_cast = zext i9 %tmp_1 to i10
  br i1 %tmp_5, label %.preheader46, label %.preheader41

.preheader46:                                     ; preds = %2, %15
  %mptr_1_rec = phi i12 [ %p_rec1, %15 ], [ 0, %2 ]
  %x = phi i9 [ %x_3, %15 ], [ 0, %2 ]
  %exitcond2 = icmp eq i9 %x, -192
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 320, i64 320, i64 320)
  %x_3 = add i9 %x, 1
  br i1 %exitcond2, label %.loopexit42, label %3

; <label>:3                                       ; preds = %.preheader46
  %tmp_3_cast = zext i9 %x to i10
  %sum = add i10 %tmp_2_cast, %tmp_3_cast
  %sum_cast = zext i10 %sum to i64
  %frame_in_addr = getelementptr [640 x i8]* %frame_in, i64 0, i64 %sum_cast
  %frame_in_load = load i8* %frame_in_addr, align 1
  %pix1 = zext i8 %frame_in_load to i32
  %pix = sitofp i32 %pix1 to float
  %mptr_1_rec_cast = zext i12 %mptr_1_rec to i13
  %mptr_1_sum = add i13 %mptr_0_rec, %mptr_1_rec_cast
  %mptr_1_sum_cast = zext i13 %mptr_1_sum to i14
  br label %4

; <label>:4                                       ; preds = %6, %3
  %k = phi i2 [ 0, %3 ], [ %k_2, %6 ]
  %wsum = phi float [ 0.000000e+00, %3 ], [ %wsum_5, %6 ]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_2 = add i2 %k, 1
  br i1 %tmp_7, label %.loopexit11, label %5

; <label>:5                                       ; preds = %4
  %tmp_14 = trunc i2 %k to i1
  %tmp_8 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_14, i2 0)
  %tmp_10 = or i3 %tmp_8, 1
  %tmp_12 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %mptr_1_sum, i32 3, i32 12)
  %sum1 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_12, i3 %tmp_10)
  %sum1_cast = zext i13 %sum1 to i64
  %bgmodel_addr = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum1_cast
  %w = load float* %bgmodel_addr, align 4
  %wsum_5 = fadd float %wsum, %w
  %w_to_int = bitcast float %w to i32
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w_to_int, i32 23, i32 30)
  %tmp_27 = trunc i32 %w_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_13, -1
  %notrhs1 = icmp eq i23 %tmp_27, 0
  %tmp_16 = or i1 %notrhs1, %notlhs1
  %tmp_24 = fcmp olt float %w, 0x3E80000000000000
  %tmp_29 = and i1 %tmp_16, %tmp_24
  br i1 %tmp_29, label %.loopexit11, label %6

; <label>:6                                       ; preds = %5
  %tmp_41 = or i3 %tmp_8, 2
  %sum4 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_12, i3 %tmp_41)
  %sum4_cast = zext i13 %sum4 to i64
  %bgmodel_addr_2 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum4_cast
  %mu = load float* %bgmodel_addr_2, align 4
  %tmp_42 = or i3 %tmp_8, 3
  %sum5 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_12, i3 %tmp_42)
  %sum5_cast = zext i13 %sum5 to i64
  %bgmodel_addr_3 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum5_cast
  %var = load float* %bgmodel_addr_3, align 4
  %diff = fsub float %pix, %mu
  %d2 = fmul float %diff, %diff
  %tmp_11 = fmul float %var, 6.250000e+00
  %d2_to_int = bitcast float %d2 to i32
  %tmp_45 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_to_int, i32 23, i32 30)
  %tmp_47 = trunc i32 %d2_to_int to i23
  %tmp_11_to_int = bitcast float %tmp_11 to i32
  %tmp_49 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_11_to_int, i32 23, i32 30)
  %tmp_52 = trunc i32 %tmp_11_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_45, -1
  %notrhs3 = icmp eq i23 %tmp_47, 0
  %tmp_53 = or i1 %notrhs3, %notlhs3
  %notlhs4 = icmp ne i8 %tmp_49, -1
  %notrhs4 = icmp eq i23 %tmp_52, 0
  %tmp_54 = or i1 %notrhs4, %notlhs4
  %tmp_55 = and i1 %tmp_53, %tmp_54
  %tmp_56 = fcmp olt float %d2, %tmp_11
  %tmp_57 = and i1 %tmp_55, %tmp_56
  br i1 %tmp_57, label %7, label %4

; <label>:7                                       ; preds = %6
  %wsum_6 = fsub float %wsum_5, %w
  %tmp_17 = fsub float 1.000000e+00, %w
  %dw = fmul float %tmp_17, %learningRate_read
  %tmp_18 = fadd float %w, %dw
  store float %tmp_18, float* %bgmodel_addr, align 4
  %tmp_19 = fmul float %diff, %learningRate_read
  %tmp_20 = fadd float %mu, %tmp_19
  store float %tmp_20, float* %bgmodel_addr_2, align 4
  %tmp_21 = fsub float %d2, %var
  %tmp_22 = fmul float %tmp_21, %learningRate_read
  %tmp_23 = fadd float %var, %tmp_22
  %tmp_23_to_int = bitcast float %tmp_23 to i32
  %tmp_69 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_23_to_int, i32 23, i32 30)
  %tmp_70 = trunc i32 %tmp_23_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_69, -1
  %notrhs7 = icmp eq i23 %tmp_70, 0
  %tmp_71 = or i1 %notrhs7, %notlhs7
  %tmp_72 = fcmp olt float %tmp_23, 2.250000e+02
  %tmp_73 = and i1 %tmp_71, %tmp_72
  %var_2 = select i1 %tmp_73, float 2.250000e+02, float %tmp_23
  store float %var_2, float* %bgmodel_addr_3, align 4
  %tmp_i = call float @llvm.sqrt.f32(float %var_2) nounwind
  %tmp_25 = fdiv float %w, %tmp_i
  %sum8 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i1.i2(i10 %tmp_12, i1 %tmp_14, i2 0)
  %sum8_cast = zext i13 %sum8 to i64
  %bgmodel_addr_6 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum8_cast
  store float %tmp_25, float* %bgmodel_addr_6, align 4
  %sum11 = or i13 %mptr_1_sum, 1
  %sum11_cast = zext i13 %sum11 to i64
  %bgmodel_addr_9 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum11_cast
  br label %8

; <label>:8                                       ; preds = %10, %7
  %kHit = phi i2 [ %k, %7 ], [ %k1, %10 ]
  %k1 = add i2 -1, %kHit
  %tmp_75 = trunc i2 %k1 to i1
  %tmp_26 = icmp eq i2 %kHit, 1
  br i1 %tmp_26, label %9, label %.loopexit11

; <label>:9                                       ; preds = %8
  %tmp_28 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1804)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %tmp_77 = call i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13 %mptr_1_sum, i32 1, i32 12)
  %sum10 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %tmp_77, i1 %tmp_75)
  %sum10_cast = zext i13 %sum10 to i64
  %bgmodel_addr_8 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum10_cast
  %p_tmp = load float* %bgmodel_addr_8, align 4
  %bgmodel_load_12 = load float* %bgmodel_addr_9, align 4
  %p_a_read_assign_to_int = bitcast float %p_tmp to i32
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_a_read_assign_to_int, i32 23, i32 30)
  %tmp_79 = trunc i32 %p_a_read_assign_to_int to i23
  %p_b_read_assign_to_int = bitcast float %bgmodel_load_12 to i32
  %tmp_80 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_b_read_assign_to_int, i32 23, i32 30)
  %tmp_84 = trunc i32 %p_b_read_assign_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_78, -1
  %notrhs8 = icmp eq i23 %tmp_79, 0
  %tmp_88 = or i1 %notrhs8, %notlhs9
  %notlhs10 = icmp ne i8 %tmp_80, -1
  %notrhs10 = icmp eq i23 %tmp_84, 0
  %tmp_89 = or i1 %notrhs10, %notlhs10
  %tmp_90 = and i1 %tmp_88, %tmp_89
  %tmp_91 = fcmp oge float %p_tmp, %bgmodel_load_12
  %tmp_92 = and i1 %tmp_90, %tmp_91
  br i1 %tmp_92, label %.loopexit11, label %10

; <label>:10                                      ; preds = %9
  store float %bgmodel_load_12, float* %bgmodel_addr_8, align 4
  store float %p_tmp, float* %bgmodel_addr_9, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1804, i32 %tmp_28)
  br label %8

.loopexit11:                                      ; preds = %5, %4, %9, %8
  %wsum_1 = phi float [ %wsum_6, %8 ], [ %wsum_6, %9 ], [ %wsum_5, %5 ], [ %wsum, %4 ]
  %kHit1 = phi i2 [ 1, %9 ], [ %kHit, %8 ], [ -1, %4 ], [ -1, %5 ]
  %k_cast4 = zext i2 %k to i32
  %tmp_93 = trunc i2 %k to i1
  %tmp_94 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit1, i32 1)
  br i1 %tmp_94, label %11, label %.preheader43

; <label>:11                                      ; preds = %.loopexit11
  %tmp_97 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k, i32 1)
  %k_10 = or i1 %tmp_97, %tmp_93
  %k_10_cast1 = zext i1 %k_10 to i2
  %tmp_33 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %k_10, i2 0)
  %tmp_98 = or i3 %tmp_33, 1
  %tmp_99 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %mptr_1_sum, i32 3, i32 12)
  %sum12 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_99, i3 %tmp_98)
  %sum12_cast = zext i13 %sum12 to i64
  %bgmodel_addr_10 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum12_cast
  %bgmodel_load_7 = load float* %bgmodel_addr_10, align 4
  %tmp_35 = fsub float 0x3FA99999A0000000, %bgmodel_load_7
  %wsum_7 = fadd float %wsum_1, %tmp_35
  store float 0x3FA99999A0000000, float* %bgmodel_addr_10, align 4
  %tmp_100 = or i3 %tmp_33, 2
  %sum13 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_99, i3 %tmp_100)
  %sum13_cast = zext i13 %sum13 to i64
  %bgmodel_addr_11 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum13_cast
  store float %pix, float* %bgmodel_addr_11, align 4
  %tmp_101 = or i3 %tmp_33, 3
  %sum14 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_99, i3 %tmp_101)
  %sum14_cast = zext i13 %sum14 to i64
  %bgmodel_addr_12 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum14_cast
  store float 9.000000e+02, float* %bgmodel_addr_12, align 4
  %sum15 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i1.i2(i10 %tmp_99, i1 %k_10, i2 0)
  %sum15_cast = zext i13 %sum15 to i64
  %bgmodel_addr_13 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum15_cast
  store float 0x3F5B4E81C0000000, float* %bgmodel_addr_13, align 4
  br label %.loopexit44

.preheader43:                                     ; preds = %.loopexit11, %12
  %k_1 = phi i32 [ %k_8, %12 ], [ %k_cast4, %.loopexit11 ]
  %wsum_2 = phi float [ %wsum_9, %12 ], [ %wsum_1, %.loopexit11 ]
  %exitcond4 = icmp eq i32 %k_1, 2
  br i1 %exitcond4, label %.loopexit44, label %12

; <label>:12                                      ; preds = %.preheader43
  %tmp_44 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 2, i32 2, [1 x i8]* @p_str1805) nounwind
  %tmp_105 = trunc i32 %k_1 to i12
  %tmp_46 = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp_105, i2 0)
  %tmp_64_cast = or i14 %tmp_46, 1
  %sum16 = add i14 %mptr_1_sum_cast, %tmp_64_cast
  %sum16_cast = zext i14 %sum16 to i64
  %bgmodel_addr_14 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum16_cast
  %bgmodel_load_9 = load float* %bgmodel_addr_14, align 4
  %wsum_9 = fadd float %wsum_2, %bgmodel_load_9
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1806, i32 %tmp_44)
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
  %tmp_110 = trunc i2 %k_9 to i1
  %tmp_48 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_110, i2 0)
  %tmp_102 = or i3 %tmp_48, 1
  %tmp_103 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %mptr_1_sum, i32 3, i32 12)
  %sum17 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_103, i3 %tmp_102)
  %sum17_cast = zext i13 %sum17 to i64
  %bgmodel_addr_15 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum17_cast
  %bgmodel_load_10 = load float* %bgmodel_addr_15, align 4
  %tmp_50 = fmul float %bgmodel_load_10, %wscale
  store float %tmp_50, float* %bgmodel_addr_15, align 4
  %wsum_10 = fadd float %wsum_4, %tmp_50
  %sum18 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i1.i2(i10 %tmp_103, i1 %tmp_110, i2 0)
  %sum18_cast = zext i13 %sum18 to i64
  %bgmodel_addr_16 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum18_cast
  %bgmodel_load_11 = load float* %bgmodel_addr_16, align 4
  %tmp_51 = fmul float %bgmodel_load_11, %wscale
  store float %tmp_51, float* %bgmodel_addr_16, align 4
  %wsum_10_to_int = bitcast float %wsum_10 to i32
  %tmp_104 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_10_to_int, i32 23, i32 30)
  %tmp_111 = trunc i32 %wsum_10_to_int to i23
  %notlhs11 = icmp ne i8 %tmp_104, -1
  %notrhs11 = icmp eq i23 %tmp_111, 0
  %tmp_106 = or i1 %notrhs11, %notlhs11
  %tmp_107 = fcmp ogt float %wsum_10, 0x3FE6666660000000
  %tmp_108 = and i1 %tmp_106, %tmp_107
  %tmp_112 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %kForeground1, i32 31)
  %or_cond = and i1 %tmp_108, %tmp_112
  %kForeground_1_cast = zext i2 %kForeground_1 to i32
  %p_kForeground = select i1 %or_cond, i32 %kForeground_1_cast, i32 %kForeground1
  br label %13

; <label>:15                                      ; preds = %13
  %slt = icmp slt i32 %kHit_1_cast, %kForeground1
  %rev = xor i1 %slt, true
  %frame_out_addr_1 = getelementptr [640 x i1]* %frame_out, i64 0, i64 %sum_cast
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
  %tmp_4_cast = zext i9 %x_1 to i10
  %sum2 = add i10 %tmp_2_cast, %tmp_4_cast
  %sum2_cast = zext i10 %sum2 to i64
  %frame_in_addr_1 = getelementptr [640 x i8]* %frame_in, i64 0, i64 %sum2_cast
  %frame_in_load_1 = load i8* %frame_in_addr_1, align 1
  %pix_s = zext i8 %frame_in_load_1 to i32
  %pix_1 = sitofp i32 %pix_s to float
  %mptr_2_rec_cast = zext i12 %mptr_2_rec to i13
  %mptr_2_sum = add i13 %mptr_0_rec, %mptr_2_rec_cast
  br label %17

; <label>:17                                      ; preds = %19, %16
  %kHit_4 = phi i2 [ 0, %16 ], [ %k_4, %19 ]
  %kHit_4_cast = zext i2 %kHit_4 to i3
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %kHit_4, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_4 = add i2 %kHit_4, 1
  br i1 %tmp_9, label %.loopexit7.loopexit, label %18

; <label>:18                                      ; preds = %17
  %tmp_30 = trunc i2 %kHit_4 to i1
  %tmp_s = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_30, i2 0)
  %tmp_31 = or i3 %tmp_s, 1
  %tmp_32 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %mptr_2_sum, i32 3, i32 12)
  %sum3 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_32, i3 %tmp_31)
  %sum3_cast = zext i13 %sum3 to i64
  %bgmodel_addr_1 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum3_cast
  %bgmodel_load = load float* %bgmodel_addr_1, align 4
  %bgmodel_load_to_int = bitcast float %bgmodel_load to i32
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bgmodel_load_to_int, i32 23, i32 30)
  %tmp_36 = trunc i32 %bgmodel_load_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_34, -1
  %notrhs2 = icmp eq i23 %tmp_36, 0
  %tmp_37 = or i1 %notrhs2, %notlhs2
  %tmp_39 = fcmp olt float %bgmodel_load, 0x3E80000000000000
  %tmp_40 = and i1 %tmp_37, %tmp_39
  br i1 %tmp_40, label %.loopexit7.loopexit, label %19

; <label>:19                                      ; preds = %18
  %tmp_58 = or i3 %tmp_s, 2
  %sum6 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_32, i3 %tmp_58)
  %sum6_cast = zext i13 %sum6 to i64
  %bgmodel_addr_4 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum6_cast
  %mu_1 = load float* %bgmodel_addr_4, align 4
  %tmp_59 = or i3 %tmp_s, 3
  %sum7 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_32, i3 %tmp_59)
  %sum7_cast = zext i13 %sum7 to i64
  %bgmodel_addr_5 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum7_cast
  %var_1 = load float* %bgmodel_addr_5, align 4
  %diff_1 = fsub float %pix_1, %mu_1
  %d2_1 = fmul float %diff_1, %diff_1
  %tmp_15 = fmul float %var_1, 6.250000e+00
  %d2_1_to_int = bitcast float %d2_1 to i32
  %tmp_60 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %d2_1_to_int, i32 23, i32 30)
  %tmp_61 = trunc i32 %d2_1_to_int to i23
  %tmp_15_to_int = bitcast float %tmp_15 to i32
  %tmp_62 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_15_to_int, i32 23, i32 30)
  %tmp_63 = trunc i32 %tmp_15_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_60, -1
  %notrhs5 = icmp eq i23 %tmp_61, 0
  %tmp_64 = or i1 %notrhs5, %notlhs5
  %notlhs6 = icmp ne i8 %tmp_62, -1
  %notrhs6 = icmp eq i23 %tmp_63, 0
  %tmp_65 = or i1 %notrhs6, %notlhs6
  %tmp_66 = and i1 %tmp_64, %tmp_65
  %tmp_67 = fcmp olt float %d2_1, %tmp_15
  %tmp_68 = and i1 %tmp_66, %tmp_67
  br i1 %tmp_68, label %.loopexit7, label %17

.loopexit7.loopexit:                              ; preds = %17, %18
  br label %.loopexit7

.loopexit7:                                       ; preds = %19, %.loopexit7.loopexit
  %kHit2 = phi i3 [ -1, %.loopexit7.loopexit ], [ %kHit_4_cast, %19 ]
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %kHit2, i32 2)
  br i1 %tmp_74, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit7, %20
  %k_5 = phi i2 [ %k_11, %20 ], [ 0, %.loopexit7 ]
  %wsum8 = phi float [ %wsum_8, %20 ], [ 0.000000e+00, %.loopexit7 ]
  %tmp_76 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %k_5, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %k_11 = add i2 %k_5, 1
  br i1 %tmp_76, label %.loopexit, label %20

; <label>:20                                      ; preds = %.preheader
  %tmp_95 = trunc i2 %k_5 to i1
  %tmp_38 = call i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1 %tmp_95, i2 0)
  %tmp_81 = or i3 %tmp_38, 1
  %tmp_82 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %mptr_2_sum, i32 3, i32 12)
  %sum9 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %tmp_82, i3 %tmp_81)
  %sum9_cast = zext i13 %sum9 to i64
  %bgmodel_addr_7 = getelementptr [5120 x float]* %bgmodel, i64 0, i64 %sum9_cast
  %bgmodel_load_6 = load float* %bgmodel_addr_7, align 4
  %wsum_8 = fadd float %wsum8, %bgmodel_load_6
  %wsum_8_to_int = bitcast float %wsum_8 to i32
  %tmp_83 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wsum_8_to_int, i32 23, i32 30)
  %tmp_96 = trunc i32 %wsum_8_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_83, -1
  %notrhs9 = icmp eq i23 %tmp_96, 0
  %tmp_85 = or i1 %notrhs9, %notlhs8
  %tmp_86 = fcmp ogt float %wsum_8, 0x3FE6666660000000
  %tmp_87 = and i1 %tmp_85, %tmp_86
  br i1 %tmp_87, label %21, label %.preheader

; <label>:21                                      ; preds = %20
  %kForeground_cast = zext i2 %k_11 to i3
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit7, %21
  %kForeground3_1 = phi i3 [ %kForeground_cast, %21 ], [ -1, %.loopexit7 ], [ -1, %.preheader ]
  %tmp_109 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %kHit2, i32 2)
  %slt1 = icmp slt i3 %kHit2, %kForeground3_1
  %rev1 = xor i1 %slt1, true
  %tmp_43 = or i1 %tmp_109, %rev1
  %frame_out_addr = getelementptr [640 x i1]* %frame_out, i64 0, i64 %sum2_cast
  store i1 %tmp_43, i1* %frame_out_addr, align 1
  %p_rec = add i12 %mptr_2_rec, 8
  br label %.preheader41

.loopexit42:                                      ; preds = %.preheader46, %.preheader41
  %mptr_3_rec = add i13 %mptr_0_rec, 2560
  br label %1

; <label>:22                                      ; preds = %1
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @bgsub(i8* %gmem, float* %gmem_offset, i32 %frame_in, i32 %frame_out, i1 %init, i32 %bgmodel) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !18
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @bgsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset, [6 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @p_str1805, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %bgmodel, [10 x i8]* @mode7, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @bundle8, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 1, [9 x i8]* @p_str1808, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle6, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
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

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_10 = trunc i13 %empty to i12
  ret i12 %empty_10
}

define weak i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_11 = trunc i13 %empty to i10
  ret i10 %empty_11
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

define weak i9 @_ssdm_op_BitConcatenate.i9.i1.i1.i1.i6(i1, i1, i1, i6) nounwind readnone {
entry:
  %empty = zext i1 %2 to i7
  %empty_20 = zext i6 %3 to i7
  %empty_21 = shl i7 %empty, 6
  %empty_22 = or i7 %empty_21, %empty_20
  %empty_23 = zext i1 %1 to i8
  %empty_24 = zext i7 %empty_22 to i8
  %empty_25 = shl i8 %empty_23, 7
  %empty_26 = or i8 %empty_25, %empty_24
  %empty_27 = zext i1 %0 to i9
  %empty_28 = zext i8 %empty_26 to i9
  %empty_29 = shl i9 %empty_27, 8
  %empty_30 = or i9 %empty_29, %empty_28
  ret i9 %empty_30
}

define weak i3 @_ssdm_op_BitConcatenate.i3.i1.i2(i1, i2) nounwind readnone {
entry:
  %empty = zext i1 %0 to i3
  %empty_31 = zext i2 %1 to i3
  %empty_32 = shl i3 %empty, 2
  %empty_33 = or i3 %empty_32, %empty_31
  ret i3 %empty_33
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i7.i12(i7, i12) nounwind readnone {
entry:
  %empty = zext i7 %0 to i19
  %empty_34 = zext i12 %1 to i19
  %empty_35 = shl i19 %empty, 12
  %empty_36 = or i19 %empty_35, %empty_34
  ret i19 %empty_36
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i7.i10(i7, i10) nounwind readnone {
entry:
  %empty = zext i7 %0 to i17
  %empty_37 = zext i10 %1 to i17
  %empty_38 = shl i17 %empty, 10
  %empty_39 = or i17 %empty_38, %empty_37
  ret i17 %empty_39
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7, i9) nounwind readnone {
entry:
  %empty = zext i7 %0 to i16
  %empty_40 = zext i9 %1 to i16
  %empty_41 = shl i16 %empty, 9
  %empty_42 = or i16 %empty_41, %empty_40
  ret i16 %empty_42
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7, i7) nounwind readnone {
entry:
  %empty = zext i7 %0 to i14
  %empty_43 = zext i7 %1 to i14
  %empty_44 = shl i14 %empty, 7
  %empty_45 = or i14 %empty_44, %empty_43
  ret i14 %empty_45
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12, i2) nounwind readnone {
entry:
  %empty = zext i12 %0 to i14
  %empty_46 = zext i2 %1 to i14
  %empty_47 = shl i14 %empty, 2
  %empty_48 = or i14 %empty_47, %empty_46
  ret i14 %empty_48
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_49 = zext i1 %1 to i13
  %empty_50 = shl i13 %empty, 1
  %empty_51 = or i13 %empty_50, %empty_49
  ret i13 %empty_51
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10, i3) nounwind readnone {
entry:
  %empty = zext i10 %0 to i13
  %empty_52 = zext i3 %1 to i13
  %empty_53 = shl i13 %empty, 3
  %empty_54 = or i13 %empty_53, %empty_52
  ret i13 %empty_54
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i10.i1.i2(i10, i1, i2) nounwind readnone {
entry:
  %empty = zext i1 %1 to i3
  %empty_55 = zext i2 %2 to i3
  %empty_56 = shl i3 %empty, 2
  %empty_57 = or i3 %empty_56, %empty_55
  %empty_58 = zext i10 %0 to i13
  %empty_59 = zext i3 %empty_57 to i13
  %empty_60 = shl i13 %empty_58, 3
  %empty_61 = or i13 %empty_60, %empty_59
  ret i13 %empty_61
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @bgsub_Block__proc(i1 %init, float* %bgmodel, i32 %bgmodel1, i8* %frame_out, i32 %frame_out2, i32 %frame_in) {
newFuncRoot:
  %frame_in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_in)
  %frame_out2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %frame_out2)
  %bgmodel1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bgmodel1)
  %init_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %init)
  %tmp_114_cast = sext i32 %frame_in_read to i33
  %tmp_115_cast = sext i32 %frame_out2_read to i33
  %tmp_113 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bgmodel1_read, i32 2, i32 31)
  %tmp_116_cast = zext i30 %tmp_113 to i31
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_out, [6 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1805, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface(float* %bgmodel, [6 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 614400, [1 x i8]* @p_str1805, [6 x i8]* @p_str1810, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  %part_bgmodel = alloca [5120 x float], align 16
  %part_frame_in = alloca [640 x i8], align 16
  %part_frame_out = alloca [640 x i1], align 1
  %part2_bgmodel = alloca [5120 x float], align 16
  %part2_frame_in = alloca [640 x i8], align 16
  %part2_frame_out = alloca [640 x i1], align 1
  %part3_bgmodel = alloca [5120 x float], align 16
  %part3_frame_in = alloca [640 x i8], align 16
  %part3_frame_out = alloca [640 x i1], align 1
  %part4_bgmodel = alloca [5120 x float], align 16
  %part4_frame_in = alloca [640 x i8], align 16
  %part4_frame_out = alloca [640 x i1], align 1
  br i1 %init_read, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %newFuncRoot
  %tmp_114 = zext i30 %tmp_113 to i64
  %bgmodel_addr = getelementptr float* %bgmodel, i64 %tmp_114
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr, i32 614400)
  br label %.preheader

.exitStub:                                        ; preds = %1
  ret void

.preheader:                                       ; preds = %0, %.preheader.preheader
  %p = phi i20 [ %p_1, %0 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i20 %p, -434176
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 614400, i64 614400, i64 614400)
  %p_1 = add i20 %p, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %0

.loopexit.loopexit:                               ; preds = %.preheader
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %newFuncRoot
  %learningRate2 = phi float [ 0.000000e+00, %newFuncRoot ], [ 1.000000e+00, %.loopexit.loopexit ]
  br label %1

; <label>:0                                       ; preds = %.preheader
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr, float 0.000000e+00, i4 -1)
  br label %.preheader

; <label>:1                                       ; preds = %burst.wr.end199, %.loopexit
  %part = phi i7 [ 0, %.loopexit ], [ %part_1, %burst.wr.end199 ]
  %tmp_54 = icmp ult i7 %part, -8
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 30, i64 30, i64 30)
  br i1 %tmp_54, label %2, label %.exitStub

burst.wr.end199:                                  ; preds = %burst.wr.header200
  %p_wr_resp193 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_8)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1813, i32 %tmp_80) nounwind
  %part_1 = add i7 %part, 4
  br label %1

burst.wr.header200:                               ; preds = %burst.wr.header200.preheader, %burst.wr.body201
  %indvar15 = phi i10 [ %indvar_next15, %burst.wr.body201 ], [ 0, %burst.wr.header200.preheader ]
  %exitcond16 = icmp eq i10 %indvar15, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next15 = add i10 %indvar15, 1
  br i1 %exitcond16, label %burst.wr.end199, label %burst.wr.body201

burst.wr.body201:                                 ; preds = %burst.wr.header200
  %burstwrite_rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_62 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str606) nounwind
  %empty_63 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_97 = zext i10 %indvar15 to i64
  %part4_frame_out_addr = getelementptr [640 x i1]* %part4_frame_out, i64 0, i64 %tmp_97
  %part4_frame_out_load = load i1* %part4_frame_out_addr, align 1
  %extLd3 = select i1 %part4_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_8, i8 %extLd3, i1 true)
  %burstwrite_rend212 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin7) nounwind
  br label %burst.wr.header200

burst.wr.header186:                               ; preds = %burst.wr.header186.preheader, %burst.wr.body187
  %indvar14 = phi i13 [ %indvar_next14, %burst.wr.body187 ], [ 0, %burst.wr.header186.preheader ]
  %exitcond15 = icmp eq i13 %indvar14, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next14 = add i13 %indvar14, 1
  br i1 %exitcond15, label %burst.wr.header200.preheader, label %burst.wr.body187

burst.wr.header200.preheader:                     ; preds = %burst.wr.header186
  %p_wr_resp195 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_20)
  %tmp_145 = add i33 %tmp_133, %tmp_115_cast
  %tmp_146 = sext i33 %tmp_145 to i64
  %frame_out_addr_8 = getelementptr i8* %frame_out, i64 %tmp_146
  %p_wr_req192 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_8, i32 640)
  br label %burst.wr.header200

burst.wr.body187:                                 ; preds = %burst.wr.header186
  %burstwrite_rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_64 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str590) nounwind
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopName([33 x i8]* @memcpy_OC_bgmodel_OC_part4_bgm) nounwind
  %tmp_95 = zext i13 %indvar14 to i64
  %part4_bgmodel_addr_1 = getelementptr [5120 x float]* %part4_bgmodel, i64 0, i64 %tmp_95
  %part4_bgmodel_load = load float* %part4_bgmodel_addr_1, align 4
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr_20, float %part4_bgmodel_load, i4 -1)
  %burstwrite_rend197 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin6) nounwind
  br label %burst.wr.header186

burst.wr.header171:                               ; preds = %burst.wr.header171.preheader, %burst.wr.body172
  %indvar13 = phi i10 [ %indvar_next13, %burst.wr.body172 ], [ 0, %burst.wr.header171.preheader ]
  %exitcond14 = icmp eq i10 %indvar13, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next13 = add i10 %indvar13, 1
  br i1 %exitcond14, label %burst.wr.header186.preheader, label %burst.wr.body172

burst.wr.header186.preheader:                     ; preds = %burst.wr.header171
  %p_wr_resp197 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_7)
  %p_wr_req194 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_20, i32 5120)
  br label %burst.wr.header186

burst.wr.body172:                                 ; preds = %burst.wr.header171
  %burstwrite_rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_66 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str552) nounwind
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_93 = zext i10 %indvar13 to i64
  %part3_frame_out_addr = getelementptr [640 x i1]* %part3_frame_out, i64 0, i64 %tmp_93
  %part3_frame_out_load = load i1* %part3_frame_out_addr, align 1
  %extLd2 = select i1 %part3_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_7, i8 %extLd2, i1 true)
  %burstwrite_rend183 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin5) nounwind
  br label %burst.wr.header171

burst.wr.header157:                               ; preds = %burst.wr.header157.preheader, %burst.wr.body158
  %indvar12 = phi i13 [ %indvar_next12, %burst.wr.body158 ], [ 0, %burst.wr.header157.preheader ]
  %exitcond13 = icmp eq i13 %indvar12, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next12 = add i13 %indvar12, 1
  br i1 %exitcond13, label %burst.wr.header171.preheader, label %burst.wr.body158

burst.wr.header171.preheader:                     ; preds = %burst.wr.header157
  %p_wr_resp199 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_19)
  %tmp_143 = add i33 %tmp_127, %tmp_115_cast
  %tmp_144 = sext i33 %tmp_143 to i64
  %frame_out_addr_7 = getelementptr i8* %frame_out, i64 %tmp_144
  %p_wr_req196 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_7, i32 640)
  br label %burst.wr.header171

burst.wr.body158:                                 ; preds = %burst.wr.header157
  %burstwrite_rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_68 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str488) nounwind
  %empty_69 = call i32 (...)* @_ssdm_op_SpecLoopName([33 x i8]* @memcpy_OC_bgmodel_OC_part3_bgm) nounwind
  %tmp_91 = zext i13 %indvar12 to i64
  %part3_bgmodel_addr_1 = getelementptr [5120 x float]* %part3_bgmodel, i64 0, i64 %tmp_91
  %part3_bgmodel_load = load float* %part3_bgmodel_addr_1, align 4
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr_19, float %part3_bgmodel_load, i4 -1)
  %burstwrite_rend168 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin4) nounwind
  br label %burst.wr.header157

burst.wr.header142:                               ; preds = %burst.wr.header142.preheader, %burst.wr.body143
  %indvar11 = phi i10 [ %indvar_next11, %burst.wr.body143 ], [ 0, %burst.wr.header142.preheader ]
  %exitcond12 = icmp eq i10 %indvar11, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next11 = add i10 %indvar11, 1
  br i1 %exitcond12, label %burst.wr.header157.preheader, label %burst.wr.body143

burst.wr.header157.preheader:                     ; preds = %burst.wr.header142
  %p_wr_resp201 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_6)
  %p_wr_req198 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_19, i32 5120)
  br label %burst.wr.header157

burst.wr.body143:                                 ; preds = %burst.wr.header142
  %burstwrite_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_70 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str472) nounwind
  %empty_71 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_89 = zext i10 %indvar11 to i64
  %part2_frame_out_addr = getelementptr [640 x i1]* %part2_frame_out, i64 0, i64 %tmp_89
  %part2_frame_out_load = load i1* %part2_frame_out_addr, align 1
  %extLd1 = select i1 %part2_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_6, i8 %extLd1, i1 true)
  %burstwrite_rend154 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin3) nounwind
  br label %burst.wr.header142

burst.wr.header128:                               ; preds = %burst.wr.header128.preheader, %burst.wr.body129
  %indvar10 = phi i13 [ %indvar_next10, %burst.wr.body129 ], [ 0, %burst.wr.header128.preheader ]
  %exitcond11 = icmp eq i13 %indvar10, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next10 = add i13 %indvar10, 1
  br i1 %exitcond11, label %burst.wr.header142.preheader, label %burst.wr.body129

burst.wr.header142.preheader:                     ; preds = %burst.wr.header128
  %p_wr_resp203 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_18)
  %tmp_141 = add i33 %tmp_121, %tmp_115_cast
  %tmp_142 = sext i33 %tmp_141 to i64
  %frame_out_addr_6 = getelementptr i8* %frame_out, i64 %tmp_142
  %p_wr_req200 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_6, i32 640)
  br label %burst.wr.header142

burst.wr.body129:                                 ; preds = %burst.wr.header128
  %burstwrite_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_72 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str433) nounwind
  %empty_73 = call i32 (...)* @_ssdm_op_SpecLoopName([33 x i8]* @memcpy_OC_bgmodel_OC_part2_bgm) nounwind
  %tmp_87 = zext i13 %indvar10 to i64
  %part2_bgmodel_addr_1 = getelementptr [5120 x float]* %part2_bgmodel, i64 0, i64 %tmp_87
  %part2_bgmodel_load = load float* %part2_bgmodel_addr_1, align 4
  call void @_ssdm_op_Write.m_axi.floatP(float* %bgmodel_addr_18, float %part2_bgmodel_load, i4 -1)
  %burstwrite_rend139 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin2) nounwind
  br label %burst.wr.header128

burst.wr.header115:                               ; preds = %burst.wr.header115.preheader, %burst.wr.body116
  %indvar8 = phi i10 [ %indvar_next9, %burst.wr.body116 ], [ 0, %burst.wr.header115.preheader ]
  %exitcond10 = icmp eq i10 %indvar8, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next9 = add i10 %indvar8, 1
  br i1 %exitcond10, label %burst.wr.header128.preheader, label %burst.wr.body116

burst.wr.header128.preheader:                     ; preds = %burst.wr.header115
  %p_wr_resp205 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %frame_out_addr_5)
  %p_wr_req202 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_18, i32 5120)
  br label %burst.wr.header128

burst.wr.body116:                                 ; preds = %burst.wr.header115
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_74 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str308) nounwind
  %empty_75 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_85 = zext i10 %indvar8 to i64
  %part_frame_out_addr = getelementptr [640 x i1]* %part_frame_out, i64 0, i64 %tmp_85
  %part_frame_out_load = load i1* %part_frame_out_addr, align 1
  %extLd = select i1 %part_frame_out_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %frame_out_addr_5, i8 %extLd, i1 true)
  %burstwrite_rend125 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin1) nounwind
  br label %burst.wr.header115

burst.wr.header:                                  ; preds = %burst.wr.body, %burst.rd.end91
  %indvar7 = phi i13 [ 0, %burst.rd.end91 ], [ %indvar_next8, %burst.wr.body ]
  %exitcond3 = icmp eq i13 %indvar7, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next8 = add i13 %indvar7, 1
  br i1 %exitcond3, label %burst.wr.header115.preheader, label %burst.wr.body

burst.wr.header115.preheader:                     ; preds = %burst.wr.header
  %p_wr_resp214 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %bgmodel_addr_17)
  %tmp_139 = add i33 %tmp_115, %tmp_115_cast
  %tmp_140 = sext i33 %tmp_139 to i64
  %frame_out_addr_5 = getelementptr i8* %frame_out, i64 %tmp_140
  %p_wr_req204 = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %frame_out_addr_5, i32 640)
  br label %burst.wr.header115

burst.rd.end91:                                   ; preds = %burst.rd.header92
  %empty_76 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1811, i32 %tmp) nounwind
  call fastcc void @bgsub_process([640 x i8]* %part_frame_in, [640 x i1]* %part_frame_out, [5120 x float]* %part_bgmodel, float %learningRate2) nounwind
  call fastcc void @bgsub_process([640 x i8]* %part2_frame_in, [640 x i1]* %part2_frame_out, [5120 x float]* %part2_bgmodel, float %learningRate2) nounwind
  call fastcc void @bgsub_process([640 x i8]* %part3_frame_in, [640 x i1]* %part3_frame_out, [5120 x float]* %part3_bgmodel, float %learningRate2) nounwind
  call fastcc void @bgsub_process([640 x i8]* %part4_frame_in, [640 x i1]* %part4_frame_out, [5120 x float]* %part4_bgmodel, float %learningRate2) nounwind
  %tmp_80 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1813) nounwind
  %p_wr_req213 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %bgmodel_addr_17, i32 5120)
  br label %burst.wr.header

burst.rd.header92:                                ; preds = %burst.rd.body93, %burst.rd.end76
  %indvar6 = phi i13 [ 0, %burst.rd.end76 ], [ %indvar_next7, %burst.rd.body93 ]
  %exitcond2 = icmp eq i13 %indvar6, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next7 = add i13 %indvar6, 1
  br i1 %exitcond2, label %burst.rd.end91, label %burst.rd.body93

burst.rd.end76:                                   ; preds = %burst.rd.header77
  %p_shl14 = call i19 @_ssdm_op_BitConcatenate.i19.i7.i12(i7 %tmp_73, i12 0)
  %p_shl15_cast = zext i19 %p_shl14 to i20
  %p_shl15 = call i17 @_ssdm_op_BitConcatenate.i17.i7.i10(i7 %tmp_73, i10 0)
  %p_shl16_cast = zext i17 %p_shl15 to i20
  %tmp_77 = add i20 %p_shl15_cast, %p_shl16_cast
  %tmp_136 = zext i20 %tmp_77 to i31
  %tmp_137 = add i31 %tmp_116_cast, %tmp_136
  %tmp_138 = zext i31 %tmp_137 to i64
  %bgmodel_addr_20 = getelementptr float* %bgmodel, i64 %tmp_138
  %p_rd_req212 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_20, i32 5120)
  br label %burst.rd.header92

burst.rd.header77:                                ; preds = %burst.rd.body78, %burst.rd.end62
  %indvar5 = phi i10 [ 0, %burst.rd.end62 ], [ %indvar_next6, %burst.rd.body78 ]
  %exitcond9 = icmp eq i10 %indvar5, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next6 = add i10 %indvar5, 1
  br i1 %exitcond9, label %burst.rd.end76, label %burst.rd.body78

burst.rd.end62:                                   ; preds = %burst.rd.header63
  %tmp_73 = or i7 %part, 3
  %p_shl12 = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %tmp_73, i9 0)
  %p_shl13_cast = zext i16 %p_shl12 to i17
  %p_shl13 = call i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7 %tmp_73, i7 0)
  %p_shl14_cast = zext i14 %p_shl13 to i17
  %tmp_74 = add i17 %p_shl13_cast, %p_shl14_cast
  %tmp_133 = zext i17 %tmp_74 to i33
  %tmp_134 = add i33 %tmp_114_cast, %tmp_133
  %tmp_135 = sext i33 %tmp_134 to i64
  %frame_out_addr_4 = getelementptr i8* %frame_out, i64 %tmp_135
  %p_rd_req211 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr_4, i32 640)
  br label %burst.rd.header77

burst.rd.header63:                                ; preds = %burst.rd.body64, %burst.rd.end47
  %indvar4 = phi i13 [ 0, %burst.rd.end47 ], [ %indvar_next5, %burst.rd.body64 ]
  %exitcond8 = icmp eq i13 %indvar4, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next5 = add i13 %indvar4, 1
  br i1 %exitcond8, label %burst.rd.end62, label %burst.rd.body64

burst.rd.end47:                                   ; preds = %burst.rd.header48
  %p_shl10 = call i19 @_ssdm_op_BitConcatenate.i19.i7.i12(i7 %tmp_66, i12 0)
  %p_shl11_cast = zext i19 %p_shl10 to i20
  %p_shl11 = call i17 @_ssdm_op_BitConcatenate.i17.i7.i10(i7 %tmp_66, i10 0)
  %p_shl12_cast = zext i17 %p_shl11 to i20
  %tmp_70 = add i20 %p_shl11_cast, %p_shl12_cast
  %tmp_130 = zext i20 %tmp_70 to i31
  %tmp_131 = add i31 %tmp_116_cast, %tmp_130
  %tmp_132 = zext i31 %tmp_131 to i64
  %bgmodel_addr_19 = getelementptr float* %bgmodel, i64 %tmp_132
  %p_rd_req210 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_19, i32 5120)
  br label %burst.rd.header63

burst.rd.header48:                                ; preds = %burst.rd.body49, %burst.rd.end33
  %indvar3 = phi i10 [ 0, %burst.rd.end33 ], [ %indvar_next4, %burst.rd.body49 ]
  %exitcond7 = icmp eq i10 %indvar3, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next4 = add i10 %indvar3, 1
  br i1 %exitcond7, label %burst.rd.end47, label %burst.rd.body49

burst.rd.end33:                                   ; preds = %burst.rd.header34
  %tmp_66 = or i7 %part, 2
  %p_shl9 = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %tmp_66, i9 0)
  %p_shl9_cast = zext i16 %p_shl9 to i17
  %p_shl1 = call i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7 %tmp_66, i7 0)
  %p_shl10_cast = zext i14 %p_shl1 to i17
  %tmp_67 = add i17 %p_shl9_cast, %p_shl10_cast
  %tmp_127 = zext i17 %tmp_67 to i33
  %tmp_128 = add i33 %tmp_114_cast, %tmp_127
  %tmp_129 = sext i33 %tmp_128 to i64
  %frame_out_addr_3 = getelementptr i8* %frame_out, i64 %tmp_129
  %p_rd_req209 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr_3, i32 640)
  br label %burst.rd.header48

burst.rd.header34:                                ; preds = %burst.rd.body35, %burst.rd.end18
  %indvar2 = phi i13 [ 0, %burst.rd.end18 ], [ %indvar_next3, %burst.rd.body35 ]
  %exitcond6 = icmp eq i13 %indvar2, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next3 = add i13 %indvar2, 1
  br i1 %exitcond6, label %burst.rd.end33, label %burst.rd.body35

burst.rd.end18:                                   ; preds = %burst.rd.header19
  %p_shl7 = call i19 @_ssdm_op_BitConcatenate.i19.i7.i12(i7 %tmp_59, i12 0)
  %p_shl7_cast = zext i19 %p_shl7 to i20
  %p_shl8 = call i17 @_ssdm_op_BitConcatenate.i17.i7.i10(i7 %tmp_59, i10 0)
  %p_shl8_cast = zext i17 %p_shl8 to i20
  %tmp_63 = add i20 %p_shl7_cast, %p_shl8_cast
  %tmp_124 = zext i20 %tmp_63 to i31
  %tmp_125 = add i31 %tmp_116_cast, %tmp_124
  %tmp_126 = zext i31 %tmp_125 to i64
  %bgmodel_addr_18 = getelementptr float* %bgmodel, i64 %tmp_126
  %p_rd_req208 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_18, i32 5120)
  br label %burst.rd.header34

burst.rd.header19:                                ; preds = %burst.rd.body20, %burst.rd.end6
  %indvar1 = phi i10 [ 0, %burst.rd.end6 ], [ %indvar_next2, %burst.rd.body20 ]
  %exitcond5 = icmp eq i10 %indvar1, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next2 = add i10 %indvar1, 1
  br i1 %exitcond5, label %burst.rd.end18, label %burst.rd.body20

burst.rd.end6:                                    ; preds = %burst.rd.header7
  %tmp_59 = or i7 %part, 1
  %p_shl5 = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %tmp_59, i9 0)
  %p_shl5_cast = zext i16 %p_shl5 to i17
  %p_shl6 = call i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7 %tmp_59, i7 0)
  %p_shl6_cast = zext i14 %p_shl6 to i17
  %tmp_60 = add i17 %p_shl5_cast, %p_shl6_cast
  %tmp_121 = zext i17 %tmp_60 to i33
  %tmp_122 = add i33 %tmp_114_cast, %tmp_121
  %tmp_123 = sext i33 %tmp_122 to i64
  %frame_out_addr_2 = getelementptr i8* %frame_out, i64 %tmp_123
  %p_rd_req207 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr_2, i32 640)
  br label %burst.rd.header19

burst.rd.header7:                                 ; preds = %burst.rd.body8, %burst.rd.end
  %indvar9 = phi i13 [ 0, %burst.rd.end ], [ %indvar_next1, %burst.rd.body8 ]
  %exitcond4 = icmp eq i13 %indvar9, -3072
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5120, i64 5120, i64 5120)
  %indvar_next1 = add i13 %indvar9, 1
  br i1 %exitcond4, label %burst.rd.end6, label %burst.rd.body8

burst.rd.end:                                     ; preds = %burst.rd.header
  %p_shl3 = call i19 @_ssdm_op_BitConcatenate.i19.i7.i12(i7 %part, i12 0)
  %p_shl3_cast = zext i19 %p_shl3 to i20
  %p_shl4 = call i17 @_ssdm_op_BitConcatenate.i17.i7.i10(i7 %part, i10 0)
  %p_shl4_cast = zext i17 %p_shl4 to i20
  %tmp_56 = add i20 %p_shl3_cast, %p_shl4_cast
  %tmp_118 = zext i20 %tmp_56 to i31
  %tmp_119 = add i31 %tmp_116_cast, %tmp_118
  %tmp_120 = zext i31 %tmp_119 to i64
  %bgmodel_addr_17 = getelementptr float* %bgmodel, i64 %tmp_120
  %p_rd_req206 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %bgmodel_addr_17, i32 5120)
  br label %burst.rd.header7

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i10 [ 0, %2 ], [ %indvar_next, %burst.rd.body ]
  %exitcond1 = icmp eq i10 %indvar, -384
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond1, label %burst.rd.end, label %burst.rd.body

; <label>:2                                       ; preds = %1
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1811) nounwind
  %p_shl = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %part, i9 0)
  %p_shl_cast = zext i16 %p_shl to i17
  %p_shl2 = call i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7 %part, i7 0)
  %p_shl2_cast = zext i14 %p_shl2 to i17
  %tmp_55 = add i17 %p_shl_cast, %p_shl2_cast
  %tmp_115 = zext i17 %tmp_55 to i33
  %tmp_116 = add i33 %tmp_114_cast, %tmp_115
  %tmp_117 = sext i33 %tmp_116 to i64
  %frame_out_addr = getelementptr i8* %frame_out, i64 %tmp_117
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %frame_out_addr, i32 640)
  br label %burst.rd.header

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_77 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_78 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr)
  %tmp_58 = zext i10 %indvar to i64
  %part_frame_in_addr = getelementptr [640 x i8]* %part_frame_in, i64 0, i64 %tmp_58
  store i8 %frame_out_addr_read, i8* %part_frame_in_addr, align 1
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.body8:                                   ; preds = %burst.rd.header7
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_79 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_80 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_part_bgmodel_OC_bgmo) nounwind
  %bgmodel_addr_17_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_17)
  %tmp_62 = zext i13 %indvar9 to i64
  %part_bgmodel_addr = getelementptr [5120 x float]* %part_bgmodel, i64 0, i64 %tmp_62
  store float %bgmodel_addr_17_read, float* %part_bgmodel_addr, align 4
  %burstread_rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header7

burst.rd.body20:                                  ; preds = %burst.rd.header19
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_81 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind
  %empty_82 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr_2)
  %tmp_65 = zext i10 %indvar1 to i64
  %part2_frame_in_addr = getelementptr [640 x i8]* %part2_frame_in, i64 0, i64 %tmp_65
  store i8 %frame_out_addr_2_read, i8* %part2_frame_in_addr, align 1
  %burstread_rend31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin2) nounwind
  br label %burst.rd.header19

burst.rd.body35:                                  ; preds = %burst.rd.header34
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_83 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15) nounwind
  %empty_84 = call i32 (...)* @_ssdm_op_SpecLoopName([29 x i8]* @memcpy_OC_part2_bgmodel_OC_bgm) nounwind
  %bgmodel_addr_18_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_18)
  %tmp_69 = zext i13 %indvar2 to i64
  %part2_bgmodel_addr = getelementptr [5120 x float]* %part2_bgmodel, i64 0, i64 %tmp_69
  store float %bgmodel_addr_18_read, float* %part2_bgmodel_addr, align 4
  %burstread_rend45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin3) nounwind
  br label %burst.rd.header34

burst.rd.body49:                                  ; preds = %burst.rd.header48
  %burstread_rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_85 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str29) nounwind
  %empty_86 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr_3)
  %tmp_72 = zext i10 %indvar3 to i64
  %part3_frame_in_addr = getelementptr [640 x i8]* %part3_frame_in, i64 0, i64 %tmp_72
  store i8 %frame_out_addr_3_read, i8* %part3_frame_in_addr, align 1
  %burstread_rend60 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin4) nounwind
  br label %burst.rd.header48

burst.rd.body64:                                  ; preds = %burst.rd.header63
  %burstread_rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_87 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str39) nounwind
  %empty_88 = call i32 (...)* @_ssdm_op_SpecLoopName([29 x i8]* @memcpy_OC_part3_bgmodel_OC_bgm) nounwind
  %bgmodel_addr_19_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_19)
  %tmp_76 = zext i13 %indvar4 to i64
  %part3_bgmodel_addr = getelementptr [5120 x float]* %part3_bgmodel, i64 0, i64 %tmp_76
  store float %bgmodel_addr_19_read, float* %part3_bgmodel_addr, align 4
  %burstread_rend74 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin5) nounwind
  br label %burst.rd.header63

burst.rd.body78:                                  ; preds = %burst.rd.header77
  %burstread_rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_89 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str41) nounwind
  %empty_90 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %frame_out_addr_4_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %frame_out_addr_4)
  %tmp_79 = zext i10 %indvar5 to i64
  %part4_frame_in_addr = getelementptr [640 x i8]* %part4_frame_in, i64 0, i64 %tmp_79
  store i8 %frame_out_addr_4_read, i8* %part4_frame_in_addr, align 1
  %burstread_rend89 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin6) nounwind
  br label %burst.rd.header77

burst.rd.body93:                                  ; preds = %burst.rd.header92
  %burstread_rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  %empty_91 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str52) nounwind
  %empty_92 = call i32 (...)* @_ssdm_op_SpecLoopName([29 x i8]* @memcpy_OC_part4_bgmodel_OC_bgm) nounwind
  %bgmodel_addr_20_read = call float @_ssdm_op_Read.m_axi.floatP(float* %bgmodel_addr_20)
  %tmp_82 = zext i13 %indvar6 to i64
  %part4_bgmodel_addr = getelementptr [5120 x float]* %part4_bgmodel, i64 0, i64 %tmp_82
  store float %bgmodel_addr_20_read, float* %part4_bgmodel_addr, align 4
  %burstread_rend103 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin7) nounwind
  br label %burst.rd.header92

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  %empty_93 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str180) nounwind
  %empty_94 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_bgmodel_OC_part_bgmo) nounwind
  %tmp_83 = zext i13 %indvar7 to i64
  %part_bgmodel_addr_1 = getelementptr [5120 x float]* %part_bgmodel, i64 0, i64 %tmp_83
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
!17 = metadata !{i32 0, i32 614399, i32 1}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 7, metadata !20}
!20 = metadata !{metadata !21, metadata !24}
!21 = metadata !{metadata !"frame_in", metadata !22, metadata !"unsigned char", i32 0, i32 7}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 76799, i32 1}
!24 = metadata !{metadata !"frame_out", metadata !22, metadata !"unsigned char", i32 0, i32 7}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"init", metadata !29, metadata !"bool", i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 0}
