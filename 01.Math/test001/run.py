# -*- coding:utf-8 -*-
# @auth ivan
# @time 2019-09-02 18:56:30
# @goal test


def l_point(p1: list, p2: list) -> (float, float):
    import math
    x1, y1 = p1[0], p1[1]
    x2, y2 = p2[0], p2[1]
    return math.sqrt(pow(x2-x1, 2)+pow(y2-y1, 2)), math.sqrt(2)

print(l_point([1, 1], [2, 2]))



