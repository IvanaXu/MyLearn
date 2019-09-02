距离公式

1. 两点间的距离
设$P_1(x_1,y_1)，P_2(x_2,y_2)$，则两点间的距离公式为：
$$
|P_1P_2|=\sqrt{(x_2-x_1)^2+(y_2-y_1)^2}
$$

2. 点到直线的距离
已知点$P_0(x_0,y_0)$，那么点$P_0$到直线$Ax+By+C=0$的距离公式为：
$$
d=\frac{|Ax_0+By_0+C|}{\sqrt{A^2+B^2}}
$$

若要证明公式(2)，
证：
已知直线$Ax+By+C=0$，可得$y=\frac{-A}{B}x+\frac{-C}{B}$，即斜率为$\frac{-A}{B}$,
并当x=0时，$y_1=\frac{-C}{B}$，
同样的，可设过点$P_0(x_0,y_0)$的同斜率直线为$y=\frac{-A}{B}x+b$，

可知$y_0=\frac{-A}{B}x_0+b$，$b=y_0+\frac{A}{B}x_0$，
即$y=\frac{-A}{B}x+y_0+\frac{A}{B}x_0$，
并当x=0时，$y_2=y_0+\frac{A}{B}x_0$，
假设交叉角为a，$\sin a=\frac{d}{l}$，
$d=l\times\sin a$，
且斜率为k的直线交叉角a，$\sin a=\sqrt{\frac{1}{1+k^2}}$，

可得：
$\begin{align*}
d &=|y_1 - y_2|\times\sin a \\
&=|\frac{-C}{B}-(y_0+\frac{A}{B}x_0)|\times\sin a \\
&=|\frac{-C}{B}-(y_0+\frac{A}{B}x_0)|\times\sqrt{\frac{1}{1+(\frac{-A}{B})^2}} \\
&=|\frac{1}{B}|\times|-C-By_0-Ax_0|\times\frac{|B|}{\sqrt{A^2+B^2}} \\
&=\frac{|Ax_0+By_0+C|}{\sqrt{A^2+B^2}}
\end{align*}$
