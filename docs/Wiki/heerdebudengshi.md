## 检索字

heerdebudengshi; Holder 不等式; Holder inequalitites

## 前置知识

[和式](heshi.md) [柯西不等式](kexibudengshi.md)

## 概念

### 基本定义

 设$a_{ij}>0(1\le i\le j\le n,1\le j\le m)$，若$\lambda_j>0(1\le j\le m)$，且$\sum\lambda_j=1$，则有

$$
\prod_{j=1}^m(\sum_{i=1}^na_{ij})^{\lambda_j}\ge\sum_{i=1}^n\prod_{j=1}^ma_{ij}^{\lambda_j}
$$

上式称为**赫尔德（Holder）不等式**。不难看出，Holder 不等式是卡尔松不等式的推广。

注：出于各种考虑，本系列的词条**不使用范数写法**，**不提及连续形式**。

m=2的形式如下：

若$\{a_n\}$与$\{b_n\}$是正实数序列，$p,q>1,\dfrac1p+\dfrac1q=1$，则：

$$
\sum a_ib_i\le(\sum a_i^p)^{1/p}(\sum b_j^q)^{1/q}
$$


### 证明

记$A_j=\sum\limits_{i=1}^na_{ij}$，则原不等式等价于

$$
\sum_{i=1}^n\prod_{j=1}^m(\dfrac{a_{ij}}{A_j})^{\lambda_j}\le1
$$

由于$f(x)=\ln x$为凸函数，故由[加权 Jensen 不等式](qinshengbudengshi.md)，有

$$
\sum_{j=1}^m\lambda_j\ln\dfrac{a_{ij}}{A_j}=\dfrac1{\sum\lambda_j}\sum_{j=1}^m\lambda_j\ln\dfrac{a_{ij}}{A_j}\le\ln\dfrac{\sum \lambda_ja_{ij}/A_j}{\sum\lambda_j}=\ln\sum_{j=1}^m\lambda_j\dfrac{a_{ij}}{A_j}
$$

两边同时$\exp$，得

$$
\prod_{j=1}^m(\dfrac{a_{ij}}{A_j})^{\lambda_j}\le\sum_{j=1}^m\lambda_j\dfrac{a_{ij}}{A_j}
$$

两边同时对$i=1,2,...,n$求和，则得证。

### 推论

设$\{a_n\}$与$\{b_n\}$为正实数序列，$m>0$或$m<-1$，则

$$
\sum\dfrac{a_i^{m+1}}{b_i^m}\ge\dfrac{(\sum a_i)^{m+1}}{(\sum b_j)^m}
$$

当且仅当存在一个常实数$\lambda$使$a_i=\lambda b_i$时取等。

**证明**

原不等式等价于

$$
(\sum\dfrac{a_i^{m+1}}{b_i^m})(\sum b_j)^m\ge(\sum a_i)^{m+1}
$$

即

$$
(\sum\dfrac{a_i^{m+1}}{b_i^m})^{\dfrac1{m+1}}(\sum b_j)^{\dfrac{m}{m+1}}\ge\sum a_i
$$

由二元 Holder 不等式显然。

## 方法

**例1** 设$p,q>0,x\in[0,\dfrac\pi2]$，求$\dfrac p{\sqrt{\sin x}}+\dfrac q{\sqrt{\cos y}}$的最小值。

**解答**

这个形式给人一种强烈的感觉，即希望用卡尔松不等式消去带有根号的分母。但利用通常的思路

$$
(\dfrac p{\sqrt{\sin x}}+\dfrac q{\sqrt{\cos y}})(\dfrac p{\sqrt{\sin x}}+\dfrac q{\sqrt{\cos y}})(\sin x+\cos y)\ge(p^{2/3}+q^{2/3})^3
$$

发现有一项$\sin x+\cos y$难以处理。不难想到$\sin^2x+\cos^2y=1$，因而若两个三角函数上方的次数为2，则较容易处理。而为了消去分母，$\dfrac p{\sqrt{\sin x}}+\dfrac q{\sqrt{\cos y}}$的次数也应当加倍，即

$$
(\dfrac p{\sqrt{\sin x}}+\dfrac q{\sqrt{\cos y}})^4(\sin^2 x+\cos^2 y)\ge(p^{4/5}+q^{4/5})^5
$$

故有$\dfrac p{\sqrt{\sin x}}+\dfrac q{\sqrt{\cos y}}\ge(p^{4/5}+q^{4/5})^{5/4}$。

但事实上，遇到这种不太好调整次数的，可采用 Holder 不等式+待定常数。

期望使用 Holder 不等式来消去分母。令$a+b=1$，则

$$
(\dfrac p{\sqrt{\sin x}}+\dfrac q{\sqrt{\cos y}})^a(\sin^2 x+\cos^2 y)^b\ge(\dfrac p{\sqrt{\sin x}})^a(\sin^2x)^b+(\dfrac q{\sqrt{\cos x}})^a(\cos^2x)^b
$$

为了消去分母，应当有$a=4b$，结合$a+b=1$，有$a=4/5$，则得到了同样的结论。

**另一常用结论** 设$a,b,c>0,k\in\textbf{N}^*$，求证：$\sum\limits_{cyc}\dfrac{a^{k+1}}{b^k}\ge\sum\limits_{cyc}\dfrac{a^k}{b^{k-1}}$。

证明较易，留作练习。