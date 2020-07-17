## 检索字



## 前置知识

[和式](heshi.md)

## 概念

### 基本定义

设$f$为$[a,b]\subset\textbf{R}$上的一元函数。定义$f$为$[a,b]$上的凸函数，当且仅当$\forall x,y\in[a,b]$与$0\le t\le 1$，都有$tf(x)+(1-t)f(y)\ge f(tx+(1-t)y)$。

判定方式：

$f$为$[a,b]\subset\textbf{R}$上的一元凸函数，当且仅当$\forall x\in[a,b]\ s.t.f''(x)\ge0$。

设$f$为$[a,b]\subset\textbf{R}$上的一元凸函数，则$\forall x_1,...,x_n\in[a,b]$，有

$$
\sum f(x_j)\ge nf(\dfrac1n\sum x_n)
$$

### 证明

**方法1** 柯西归纳法

易知$f(x_1)+f(x_2)\ge2f(\dfrac{x_1+x_2}2)$。从而$n=2^k(k\in\textbf{N}^*)$时都成立。

假设对$n$成立，下证对$n-1$成立。则

$\sum_{1\le j<n}f(x_j)+f(\dfrac1{n-1}\sum_{1\le j<n}x_j)\ge nf(\dfrac1n(\sum_{1\le j<n}x_j)(1+\dfrac1{n-1}))$

$=n f(\dfrac1{n-1}\sum_{1\le j<n}x_j)$。

两边化简得证。

### 推论

#### 幂平均不等式

已知$x_i>0,i=1,...,n$，实数$p>q$，求证：

$$

$$


## 方法



