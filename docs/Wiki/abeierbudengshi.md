## 检索字

abeierbudengshi; Abel不等式; Abel inequalities

## 前置知识

[和式](heshi.md) [离散微积分](lisanweijifen.md)

## 概念

### 基本定义

假设$\{x_n\},\{y_n\}$为实数列，记$S_k=y_1+...+y_k$，$D_k=\Delta x_k=x_{k+1}-x_k$为$\{x_n\}$的一阶差分，则：

$$
\sum x_jy_j=x_nS_n-\sum_{j=1}^{n-1}D_kS_k
$$

上式称为**阿贝尔变换**或**分步求和法**。

假设$\{x_n\}$为实数列，$\{y_n\}$为非负不增实数列，记$S_k=\sum_{i=1}^kx_i$，$M=\max\limits_{1\le k\le n} S_k$与$m=\min\limits_{1\le k\le n}S_k$，则：

$$
my_1\le\sum x_jy_j\le My_1
$$

上式称为**阿贝尔不等式**。利用 Abel 变换放缩易证。

## 方法

### 阿贝尔变换证明不等式

**例1** 假设$\{x_n\}$为实数列，$\{y_n\}$为非负不增实数列，且$\forall k\in\{1,2,...,n\}:\prod_{1\le j\le k}x_j\ge\prod_{1\le j\le k}y_j$。求证：$\sum x_j\ge\sum y_j$。

**证明**

我们不妨将条件和题目都作移项处理。有$\prod_{1\le j\le k}\dfrac{x_j}{y_j}\ge1$。而要证的即$\sum(x_j-y_j)\ge0$。两者乍一看并没有什么联系。首先至少要将积式与和式联系起来，此题显然不适合取对数，因而不难预料到本题的最后一步可能是利用均值不等式化和为积。因而我们尝试逆用均值不等式，有$\prod_{1\le j\le k}\dfrac{x_j}{y_j}\le\dfrac1k\sum_{1\le j\le k}\dfrac{x_j}{y_j}$，则得到了$\sum\limits_{j=1}^k(\dfrac {x_j}{y_j}-1)\ge0$。

某个式子的前缀和恒大于（小于）等于0，结合一个“非负而不增”的条件，这已然明确地指向了阿贝尔变换的思路。简单扫一眼，有$x_j-y_j=y_j(\dfrac{x_j}{y_j}-1)$，于是如下的解答便呼之欲出。
$$
\begin{matrix}
LHS-RHS&=&\sum(x_j-y_j)\\
&=&\sum y_j(\dfrac{x_j}{y_j}-1)\\
&=&\sum_{1\le j<n}(y_j-y_{j+1})\sum_{1\le k\le j}(\dfrac{x_k}{y_k}-1)+y_n\sum_{1\le k\le n}(\dfrac{x_k}{y_k}-1)\\
&=&\sum_{1\le j<n}(y_j-y_{j+1})(\sum_{1\le k\le j}\dfrac{x_k}{y_k}-k)+y_n(\sum_{1\le k\le n}\dfrac{x_k}{y_k}-n)
\end{matrix}
$$

考虑到 y 非严格单调减，且$y_n\ge0$，则只需证$\sum\limits_{j=1}^k\dfrac {x_j}{y_j}\ge k$。

故得证。

注：在数列中，阿贝尔变换运用的条件是某个因子的差分十分简便（比如恒等于一个常数），而另一个因子的前缀和易于处理。此时阿贝尔变换一般称为分步求和法。

### 更多技巧

**例2** 设$x_1,...,x_n$为实数，且$x_1\ge x_2\ge...\ge x_n\ge x_{n+1}=0$，求证：$\sqrt{\sum x_j}\le\sum\sqrt j(\sqrt{x_j}-\sqrt{x_{j+1}})$。

**证明**

$\sum\sqrt j(\sqrt{x_j}-\sqrt{x_{j+1}})=\sum\sqrt{x_j}(\sqrt j-\sqrt{j-1})$。

只需证$\sum x_j\le(\sum\sqrt{x_j}(\sqrt j-\sqrt{j-1}))^2$。这看似十分像柯西不等式，但符号是反向的。

取$\sum a_j^2=1(a_j\ge0)$使$\sum x_j=\sum a_j\sqrt{x_j}$，则此时$\dfrac{\sqrt{x_j}}{a_j}$全相等（由 Cauchy 不等式的取等条件）。

只需证$\sum\sqrt{x_j}(\sqrt i-\sqrt{i-1}-a_j)\ge0$。

而$\sum\sqrt{x_j}(\sqrt i-\sqrt{i-1}-a_k)=\sum_{1\le j\le n}(\sqrt{x_j}-\sqrt{x_{j+1}})(\sqrt j-\sum_{i\le k\le j}a_k)$。

只需证$\sqrt i\ge\sum_{1\le k\le i}a_k$。由于$(\sum_{1\le k\le i}a_i)^2\ge i\sum_{1\le k\le i}a_k^2\le i$，故得证。

**例3** 设$\{x_n\}$为正实数序列，且满足$\sum_{1\le j\le k}x_j\ge k$，求证：$\sum x_j^2\ge\dfrac14(\sum\dfrac1j)$。

**证明**

不失一般性，可设$x_1\ge x_2\ge...\ge x_n$。否则，若$\exists x_k<x_{k+1}$，则交换$x_k$，$x_{k+1}$，不影响题设与条件。

令$b_k=\dfrac1{\sqrt{k}}$，则只需证$4\sum x_j^2\ge\sum b_j^2$。

依次证明：$2\sum x_j^2\ge\sum x_jb_j$与$2\sum x_jb_j\ge\sum b_j^2$。

即$\sum x_j(2x_j-b_j)=$