## 检索字

paixubudengshi; Sort inequalities

## 前置知识

[和式](heshi.md) [极端原理](jiduanyuanli.md)

## 概念

### 基本定义

设非严格单调递增数列$\{a_n\}$与$\{b_n\}$，而$\{i_n\}$为$1,2,..,n$的任一排列。则有：
$$
\sum a_jb_j\ge\sum a_jb_{i_j}\ge\sum a_jb_{n-j+1}
$$
上式记作**排序不等式**。即“顺序和≥乱序和≥逆序和”。当且仅当$a_1=...=a_n$或$b_1=...=b_n$时取等。

### 证明

**方法1**

证明采用[调整法](tiaozhengfa.md)。

令$M=a_1b_{i_1}+...+a_nb_{i_n}$，若$b_{i_k}>b_{i_{k+1}}$，取$b_{i_{k'}}=b_{i_{k+1}},b_{i_{k'+1}}=b_{i_k}$，其它项不变。则：

$M'-M=a_kb_{i_k'}+a_{k+1}b_{i_{k'+1}}-a_k{b_{i_k}}-a_{k+1}b_{i_{k}}=a_kb_{i_{k+1}}+a_{k+1}{b_{i_k}}-a_k{b_{i_k}}-a_{k+1}b_{i_{k+1}}$

$=(a_k-a_{k+1})(b_{i_{k+1}}-b_{i_k})\ge0$。

假设取到最大值 M 时，不满足$b_{i_1}\le...\le b_{i_n}$，则$\exists b_{i_k}>b_{i_{k+1}}$。此时交换它们，必得到更优解，与 M 为最大值矛盾。综上不等式得证。

**方法2**

采用[阿贝尔变换](abeierbianhuan.md)。

有
$$
\begin{matrix}
\sum a_jb_{i_j}&=&\sum_{1\le j< n}((a_j-a_{j+1})\sum_{1\le k\le j}b_{i_k})+a_n\sum b_{i_j}\\
&\le&\sum_{1\le j< n}((a_j-a_{j+1})\sum_{1\le k\le j}b_k)+a_n\sum b_j\\
&=&\sum a_jb_j
\end{matrix}
$$
第二个不等号类似。

### 切比雪夫不等式

见[切比雪夫不等式](qiebixuefubudengshi.md)。

## 方法

### 基本思路：设序

排序不等式要求有大小关系，因而我们通常必须利用式子的对称性来设序。

对于[完全对称](duichenshi)的式子，我们可以设出全序。例如设$x_1\le x_2\le...\le x_n$，而对于[轮换对称](duichenshi.md)的式子，只能设出最大值或最小值（但二者不可同时设出），例如设$x_1=\max(x_1,...,x_n)$或$x_1=\min(x_1,...,x_n)$。

排序不等式给我们一个思想：**纯种即大，杂种即小**（ref：《创知路数学竞赛教程 - 不等式篇》P48对话8）。比如下面的例题1。

**例1** 证明$x^2+y^2+z^2\ge xy+yz+zx$。

**证明**

不妨设$x\le y\le z$，则显。

**例2** 证明$\sum\limits_{cyc}\dfrac a{b+c}\ge\dfrac32$。

**证明**

由于左侧完全对称，不妨设$a\ge b\ge c$，则$\dfrac1{b+c}\ge\dfrac1{c+a}\ge\dfrac1{a+b}$。

由排序不等式，显然有
$$
\begin{matrix}
\dfrac a{b+c}+\dfrac b{c+a}+\dfrac c{a+b}\ge\dfrac b{b+c}+\dfrac c{c+a}+\dfrac a{a+b}\\
\dfrac a{b+c}+\dfrac b{c+a}+\dfrac c{a+b}\ge\dfrac c{b+c}+\dfrac a{c+a}+\dfrac b{a+b}
\end{matrix}
$$
相加即证。

注：两个不等式右侧的排列选择$b,c,a$与$c,a,b$，恰好能够与分母抵消。

### 排列处理

试证明：对于前2007个正整数，不存在四个排列$a,b,c,d$,使$a_1b_1+...+a_{2007}b_{2007}=2(c_1d_1+...+c_{2007}d_{2007})$。

**证明**

正难则反，我们考虑如何构造这四个排列，从而得出矛盾。

前2007个正整数，设它们的两个排列对应相乘再相加的结果的取值范围在$[M,N]$内。则我们的任务是从$[M,N]$中找到两个数，

### 解题利器：齐次化

### 零和权重

