/*************************************************************************
 * Copyright (c) 2015-2018, NVIDIA CORPORATION. All rights reserved.
 * Modifications Copyright (c) 2019 Advanced Micro Devices, Inc. All rights reserved.
 *
 * See LICENSE.txt for license information
 ************************************************************************/

#include "common.h"
#include "reduce_scatter.h"
#include "collectives.h"

#define UNROLL 4

IMPL_COLL2(ncclReduceScatter, sum,  FuncSum,  ncclCollReduceScatter, ncclSum);
IMPL_COLL2(ncclReduceScatter, prod, FuncProd, ncclCollReduceScatter, ncclProd);
IMPL_COLL2(ncclReduceScatter, min,  FuncMin,  ncclCollReduceScatter, ncclMin);
IMPL_COLL2(ncclReduceScatter, max,  FuncMax,  ncclCollReduceScatter, ncclMax);