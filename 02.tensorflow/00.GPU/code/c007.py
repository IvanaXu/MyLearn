# -*-coding:utf-8-*-
# @auth ivan
# @time 2019-09-28 00:08:00
# @goal c007

# n = 100000000
n = 10000

import time
def foo1(x,y):
        tt = time.time()
        s = 0
        for i in range(x,y):
                s += (pow(i,3) + pow(i,2) + i + 1)
        print('Time used: {} sec'.format(time.time()-tt))
        return s
print(foo1(1,n))

from numba import jit
import time
@jit
def foo2(x,y):
        tt = time.time()
        s = 0
        for i in range(x,y):
                s += (pow(i,3) + pow(i,2) + i + 1)
        print('Time used: {} sec'.format(time.time()-tt))
        return s
print(foo2(1,n))