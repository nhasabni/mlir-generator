module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: !torch.vtensor<[1,3,28,28],f32>) -> !torch.vtensor<[1,10],f32> {
    %int128 = torch.constant.int 128
    %int1 = torch.constant.int 1
    %int12 = torch.constant.int 12
    %int64 = torch.constant.int 64
    %int6 = torch.constant.int 6
    %float0.000000e00 = torch.constant.float 0.000000e+00
    %int7 = torch.constant.int 7
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %0 = torch.vtensor.literal(dense<[-0.0822330489, -0.0315642804, 0.0537667871, 0.0290130898, -0.0541423559, 0.0765043646, -0.0715591758, -0.074384205, 0.0208447669, -0.0298003498]> : tensor<10xf32>) : !torch.vtensor<[10],f32>
    %1 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<10x128xf32>) : !torch.vtensor<[10,128],f32>
    %2 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %3 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x9216xf32>) : !torch.vtensor<[128,9216],f32>
    %true = torch.constant.bool true
    %4 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %5 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x32x3x3xf32>) : !torch.vtensor<[64,32,3,3],f32>
    %6 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<32xf32>) : !torch.vtensor<[32],f32>
    %7 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<32x1x3x3xf32>) : !torch.vtensor<[32,1,3,3],f32>
    %int2 = torch.constant.int 2
    %none = torch.constant.none
    %int0 = torch.constant.int 0
    %int-1 = torch.constant.int -1
    %float2.500000e-01 = torch.constant.float 2.500000e-01
    %float5.000000e-01 = torch.constant.float 5.000000e-01
    %false = torch.constant.bool false
    %8 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %9 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %10 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %11 = torch.aten.convolution %arg0, %7, %6, %8, %9, %8, %false, %10, %int1 : !torch.vtensor<[1,3,28,28],f32>, !torch.vtensor<[32,1,3,3],f32>, !torch.vtensor<[32],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,32,26,26],f32>
    %12 = torch.aten.relu %11 : !torch.vtensor<[1,32,26,26],f32> -> !torch.vtensor<[1,32,26,26],f32>
    %13 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %14 = torch.aten.convolution %12, %5, %4, %8, %9, %8, %false, %13, %int1 : !torch.vtensor<[1,32,26,26],f32>, !torch.vtensor<[64,32,3,3],f32>, !torch.vtensor<[64],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,24,24],f32>
    %15 = torch.aten.relu %14 : !torch.vtensor<[1,64,24,24],f32> -> !torch.vtensor<[1,64,24,24],f32>
    %16 = torch.prim.ListConstruct %int2, %int2 : (!torch.int, !torch.int) -> !torch.list<int>
    %17 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %18 = torch.aten.max_pool2d %15, %16, %17, %9, %8, %false : !torch.vtensor<[1,64,24,24],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool -> !torch.vtensor<[1,64,12,12],f32>
    %19 = torch.aten.sub.float %float1.000000e00, %float2.500000e-01 : !torch.float, !torch.float -> !torch.float
    %20 = torch.prim.NumToTensor.Scalar %19 : !torch.float -> !torch.vtensor<[],f64>
    %21 = torch.aten.to.dtype %18, %int7, %false, %false, %none : !torch.vtensor<[1,64,12,12],f32>, !torch.int, !torch.bool, !torch.bool, !torch.none -> !torch.vtensor<[1,64,12,12],f64>
    %22 = torch.prim.ListConstruct %int1, %int64, %int12, %int12 : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %23 = torch.aten.empty.memory_format %22, %none, %none, %none, %none, %none : !torch.list<int>, !torch.none, !torch.none, !torch.none, !torch.none, !torch.none -> !torch.vtensor<[1,64,12,12],f64>
    %24 = torch.valsem.aten.uniform %23, %float0.000000e00, %float1.000000e00, %none : !torch.vtensor<[1,64,12,12],f64>, !torch.float, !torch.float, !torch.none -> !torch.vtensor<[1,64,12,12],f64>
    %25 = torch.aten.lt.Tensor %24, %20 : !torch.vtensor<[1,64,12,12],f64>, !torch.vtensor<[],f64> -> !torch.vtensor<[1,64,12,12],i1>
    %26 = torch.aten.to.dtype %25, %int6, %false, %false, %none : !torch.vtensor<[1,64,12,12],i1>, !torch.int, !torch.bool, !torch.bool, !torch.none -> !torch.vtensor<[1,64,12,12],f32>
    %27 = torch.aten.mul.Tensor %26, %18 : !torch.vtensor<[1,64,12,12],f32>, !torch.vtensor<[1,64,12,12],f32> -> !torch.vtensor<[1,64,12,12],f32>
    %28 = torch.aten.div.Scalar %27, %19 : !torch.vtensor<[1,64,12,12],f32>, !torch.float -> !torch.vtensor<[1,64,12,12],f32>
    %29 = torch.aten.flatten.using_ints %28, %int1, %int-1 : !torch.vtensor<[1,64,12,12],f32>, !torch.int, !torch.int -> !torch.vtensor<[1,9216],f32>
    %30 = torch.aten.linear %29, %3, %2 : !torch.vtensor<[1,9216],f32>, !torch.vtensor<[128,9216],f32>, !torch.vtensor<[128],f32> -> !torch.vtensor<[1,128],f32>
    %31 = torch.aten.relu %30 : !torch.vtensor<[1,128],f32> -> !torch.vtensor<[1,128],f32>
    %32 = torch.aten.sub.float %float1.000000e00, %float5.000000e-01 : !torch.float, !torch.float -> !torch.float
    %33 = torch.prim.NumToTensor.Scalar %32 : !torch.float -> !torch.vtensor<[],f64>
    %34 = torch.aten.to.dtype %31, %int7, %false, %false, %none : !torch.vtensor<[1,128],f32>, !torch.int, !torch.bool, !torch.bool, !torch.none -> !torch.vtensor<[1,128],f64>
    %35 = torch.prim.ListConstruct %int1, %int128 : (!torch.int, !torch.int) -> !torch.list<int>
    %36 = torch.aten.empty.memory_format %35, %none, %none, %none, %none, %none : !torch.list<int>, !torch.none, !torch.none, !torch.none, !torch.none, !torch.none -> !torch.vtensor<[1,128],f64>
    %37 = torch.valsem.aten.uniform %36, %float0.000000e00, %float1.000000e00, %none : !torch.vtensor<[1,128],f64>, !torch.float, !torch.float, !torch.none -> !torch.vtensor<[1,128],f64>
    %38 = torch.aten.lt.Tensor %37, %33 : !torch.vtensor<[1,128],f64>, !torch.vtensor<[],f64> -> !torch.vtensor<[1,128],i1>
    %39 = torch.aten.to.dtype %38, %int6, %false, %false, %none : !torch.vtensor<[1,128],i1>, !torch.int, !torch.bool, !torch.bool, !torch.none -> !torch.vtensor<[1,128],f32>
    %40 = torch.aten.mul.Tensor %39, %31 : !torch.vtensor<[1,128],f32>, !torch.vtensor<[1,128],f32> -> !torch.vtensor<[1,128],f32>
    %41 = torch.aten.div.Scalar %40, %32 : !torch.vtensor<[1,128],f32>, !torch.float -> !torch.vtensor<[1,128],f32>
    %42 = torch.aten.linear %41, %1, %0 : !torch.vtensor<[1,128],f32>, !torch.vtensor<[10,128],f32>, !torch.vtensor<[10],f32> -> !torch.vtensor<[1,10],f32>
    %values, %indices = torch.aten.max.dim %42, %int1, %true : !torch.vtensor<[1,10],f32>, !torch.int, !torch.bool -> !torch.vtensor<[1,1],f32>, !torch.vtensor<[1,1],si64>
    %43 = torch.aten.sub.Tensor %42, %values, %float1.000000e00 : !torch.vtensor<[1,10],f32>, !torch.vtensor<[1,1],f32>, !torch.float -> !torch.vtensor<[1,10],f32>
    %44 = torch.aten.exp %43 : !torch.vtensor<[1,10],f32> -> !torch.vtensor<[1,10],f32>
    %45 = torch.prim.ListConstruct %int1 : (!torch.int) -> !torch.list<int>
    %46 = torch.aten.sum.dim_IntList %44, %45, %true, %none : !torch.vtensor<[1,10],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[1,1],f32>
    %47 = torch.aten.log %46 : !torch.vtensor<[1,1],f32> -> !torch.vtensor<[1,1],f32>
    %48 = torch.aten.sub.Tensor %43, %47, %float1.000000e00 : !torch.vtensor<[1,10],f32>, !torch.vtensor<[1,1],f32>, !torch.float -> !torch.vtensor<[1,10],f32>
    return %48 : !torch.vtensor<[1,10],f32>
  }
}
