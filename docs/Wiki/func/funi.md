## 概念

在集合 $X$ 上的迭代函数的形式定义为:

设$X$是集合和$f:X\rightarrow X$是函数。定义$f$的$n$次迭代$f^n$ 为 $f^0=\operatorname{id}_X$而 $f^{n+1} = f \circ f^n$，这里的 $\operatorname{id}_X$ 是在 $X$ 上的恒等函数，即$\operatorname{id}_X(x)=x$。

在上述中，$f \circ g$ 指示函数复合；就是说 $(f \circ g)(x)=f(g(x))$。

换句话说，迭代函数也可以表示为以下的形式：

$f^n(x)={\underbrace{f(f(f(...f(f}_n}(x))...)))$

定义$f^0(x)=x$。

序列$\{x,f^1,f^2,...\}$称为 **Picard 序列**。对于给定的$x\in X$，称序列$\{f^0(x),f^1(x),...\}$为 **$x$的轨道**。

## 解法

事实上，求函数迭代的过程与以下过程等价：
$$
\begin{array}{ll}
\textbf{Step1.} \text{Construct a sequence}\{a_n\},a_0=x,a_{j+1}=f(a_j)\\
\textbf{Step2.} \text{Find out the general term formula of }a_n\\
\textbf{Step3.} f^n(x)=a_n
\end{array}
$$
即利用数列方法，寻找 Picard 序列的通项。

故请参见**数列部分**，本文不再赘述。

