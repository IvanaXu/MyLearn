import pycuda.autoinit
import pycuda.driver as drv
import numpy as np
from timeit import default_timer as timer
 
from pycuda.compiler import SourceModule
mod = SourceModule("""
__global__ void func(float *a, float *b, size_t N)
{
 const int i = blockIdx.x * blockDim.x + threadIdx.x;
 if (i >= N)
 {
  return;
 }
 float temp_a = a[i];
 float temp_b = b[i];
 a[i] = (temp_a * 10 + 2 ) * ((temp_b + 2) * 10 - 5 ) * 5 - temp_a * temp_b;
 // a[i] = a[i] + b[i];
}
""")
 
func = mod.get_function("func")
 
def test(N):
  # N = 1024 * 1024 * 90  # float: 4M = 1024 * 1024
 
  print("N = %d" % N)
 
  N = np.int32(N)
 
  a = np.random.randn(N).astype(np.float32)
  b = np.random.randn(N).astype(np.float32)
  # copy a to aa
  aa = np.empty_like(a)
  aa[:] = a
  # GPU run
  nTheads = 256 * 4
  nBlocks = int( ( N + nTheads - 1 ) / nTheads )
  start = timer()
  func(
      drv.InOut(a), drv.In(b), N,
      block=( nTheads, 1, 1 ), grid=( nBlocks, 1 ) )
  run_time = timer() - start
  print("gpu run time %f seconds " % run_time)

  # cpu run
  start = timer()
  # aa = (aa * 10 + 2 ) * ((b + 2) * 10 - 5 ) * 5
  run_time = timer() - start
 
  print("cpu run time %f seconds " % run_time)
 
  # check result
  r = a - aa
  print( min(r), max(r) )
 
def main():
 for n in range(1, 50):
  N = 1024 * 1024 * (n * 10)
  print("------------%d---------------" % n)
  test(N)
 
if __name__ == '__main__':
  main()

# ———————————————— 
#版权声明：本文为CSDN博主「MachineLP」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。
#原文链接：https://blog.csdn.net/u014365862/article/details/85338619
