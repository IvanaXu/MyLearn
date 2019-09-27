# -*-coding:utf-8-*-
# @auth ivan
# @time 2019-09-28 00:08:00
# @goal c003

import pycuda.autoinit
import pycuda.driver as drv
import numpy
 
from pycuda.compiler import SourceModule
mod = SourceModule("""
__global__ void multiply_them(float *dest, float *a, float *b)
{
  const int i = threadIdx.x;
  dest[i] = a[i] * b[i] - a[i] + b[i];
}
""")
multiply_them = mod.get_function("multiply_them")
n = 400
a = numpy.random.randn(n).astype(numpy.float32)
b = numpy.random.randn(n).astype(numpy.float32)
dest = numpy.zeros_like(a)
multiply_them(
        drv.Out(dest), drv.In(a), drv.In(b),
        block=(n,1,1), grid=(1,1))
print (dest-a*b)
# ———————————————— 
#版权声明：本文为CSDN博主「MachineLP」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。
#原文链接：https://blog.csdn.net/u014365862/article/details/85338619
