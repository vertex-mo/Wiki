

## 一元多项式环

注意！**对于多项式集合上的运算和关系，x为符号，而不是数。**

而如果我们代入一个具体的数值，比如数域K上的一个数c，则$f(c)$也是一个具体的数值。

**定义1** 设 K 为一**数域**，若$f(x)$为一形如$\sum\limits_{j=0}^na_jx^j$的表达式，其中$n\in\mathbb{N},a_j\in\mathbb{K}$。称$a_j$为系数。若满足：两个这样的表达式相等当且仅当它们含有完全相同的项，则称$f(x)$是数域$\mathbb{K}$上关于x的一个**一元多项式**，其中x称为**不定元**。

系数全为0的多项式称为**零多项式**，记作0。

$a_jx^j$称为j次项。$a_0$为**0次项**或**常数项**。

n称为$f(x)$的次数，记作$\deg f$。

我们定义$\deg0=-\infty$。

我们记$\mathbb{K}[x]=\{\mathbb{K}上的一元多项式\}$。

规定：

- 加法：$\sum\limits_{j=0}^na_jx^j+\sum\limits_{j=0}^mb_jx^j=\sum\limits_{j=0}^n(a_j+b_j)x^j$（不妨设$n\ge m$，$b_j=0(j>m)$。
- 减法：$f(x)-g(x)=f(x)+(-g(x))$。
- 乘法：$(\sum\limits_{j=0}^na_jx^j)(\sum\limits_{j=0}^mb_jx^j)=\sum\limits_{j=0}^n\sum\limits_{k=0}^ma_jb_kx^{j+k}=\sum\limits_{s=0}^{n+m}(\sum\limits_{j+k=s}a_jb_k)x^s$。
- 数乘：$k\sum\limits_{j=0}^na_jx^j=\sum\limits_{j=0}^nka_jx^j$

容易验证：$\mathbb{K}[x]$对于加法和数量乘法成为$\mathbb{K}$上一个**线性空间**。

显然，$\mathbb{K}[x]$种每一个多项式可以由集合$\Omega=\{1,x,x^2,...\}$中有限多个线性表出。

下面我们说明$\Omega$的任一有限子集的元素线性无关。

取有限子集$\Omega_1=\{x^{j_1},...,x^{j_m}\}$，若$k_1x^{j_1}+...+k_mx^{j_m}=0$，由多项式的定义，必有$k_1=...=k_m=0$。故$\Omega_1$的元素不可能线性相关。

从而$\Omega$线性无关。

故$\Omega$为$\mathbb{K}[x]$的一个**基**。

故$\mathbb{K}[x]$为一**无限维线性空间**。

**命题1** 若有$f(x),g(x)\in\mathbb{K}[x]$，则：$\deg(f+g)\le\max\{\deg f,\deg g\}$。

**命题2** 若有$f(x),g(x)\in\mathbb{K}[x]$，则：$\deg(f(x)g(x))=\deg f+\deg g$。

**推论1** $f(x)\ne0,g(x)\ne0\leftrightarrow f(x)g(x)\ne0$

**推论2（消去律）** $f(x)g(x)=f(x)h(x),f(x)\ne0\leftrightarrow g(x)=h(x)$

容易验证，代数系统$<\mathbb{K}[x],+,\times>$为一环。

简记为$\mathbb{K}[x]$，称之为**一元多项式环**。

本部分依然有一些内容，编辑于“抽象代数”部分的“环”。

## 多项式整除

注：有时为了方便，在不引起歧义的情况下，将$f(x)$写作$f$。

**定义1** 设$f(x),g(x)\in\mathbb{K}[x]$。若存在$h(x)\in\mathbb{K}[x]$，使得$f(x)=h(x)g(x)$，则称$g(x)$整除$f(x)$，记作$g(x)|f(x)$。否则，称$g(x)$不整除$f(x)$，记作$g(x)\not|f(x)$。

- $\forall f(x)\in\mathbb{K}[x],k\in\mathbb{K}:k|f(x)$
- $\forall f(x)\in\mathbb{K}[x]:f(x)|0$
- 若$0|f(x)$，则$f(x)=0$。

**定义2** 若$f(x)|g(x),g(x)|f(x)$，则称 f 和 g **相伴**。记作$f(x)\sim g(x)$。

**命题1** $f(x)\sim g(x),f(x)\ne0\leftrightarrow f(x)=cg(x),c\in\mathbb{K^*}$。

**定理1（带余多项式除法）** 设$f(x),g(x)\in\mathbb{K}[x]$，$\deg g\le\deg f$，则存在唯一的$h(x),r(x)\in\mathbb{K}[x],\deg r<\deg g$，使得$f(x)=h(x)g(x)+r(x)$。我们记$f(x)\bmod g(x)=r(x)$

**定义3** 在定理1基础上，定义$h(x),r(x)$分别为 f 除以 g 的**商式**和**余式**。

**命题2** 设$f(x),g(x)\in\mathbb{K}[x]$，数域$\mathbb{E}\supseteq\mathbb{K}$，则在$\mathbb{K}[x]$中$g(x)|f(x)$的充要条件是在$\mathbb{E}[x]$中，$g(x)|f(x)$。

**证明** 我们在$\mathbb{K}[x]$上作带余多项式除法，设$h(x),r(x)\in\mathbb{K}[x],\deg r<\deg g$，使得$f(x)=h(x)g(x)+r(x)$。则这也是$\mathbb{E}[x]$上的带余多项式除法。由$h,r$的唯一性，可知在$\mathbb{E}[x]$上$r(x)=0$当且仅当在$\mathbb{K}[x]$上$r(x)=0$。证毕。

**定义4** 若在$\mathbb{K}[x]$上$c|f,c|g$，则称c为f和g的**公约式**。若一个公约式d满足对于f和g所有的公约式c，都有$c|d$，则称d为f和g的最大公约式，记作$d(x)=\gcd(f(x),g(x))$。 

**定理2（辗转相除法）** $\gcd(f,g)=\gcd(g,f)=\gcd(g,f\bmod g)=\gcd(f,g\bmod f)$

**定理3（K[x]上的裴蜀定理）** 任意$f(x),g(x)\in\mathbb{K}[x]$，存在它们的最大公约式$d(x)$，且存在$u(x),v(x)\in\mathbb{K}[x]$，使$uf+vg=d$。

**命题3** 设$f,g\in\mathbb{K}[x],g\ne0$，数域$\mathbb{E}\subseteq\mathbb{K}$。则在$\mathbb{E}[x]$中的最大公约式等于$\mathbb{K}[x]$中的最大公约式。

**证明** 辗转相除法可做。

**定义5** 若$f,g\in\mathbb{K}[x]$使$\gcd(f,g)=1$，则称其**互素**。

**命题4（定理3推论）** $f,g$互素当且仅当存在$u,v$使$uf+vg=1$。

**命题5（命题3推论）** 设$f,g\in\mathbb{K}[x],g\ne0$，数域$\mathbb{E}\subseteq\mathbb{K}$。则在$\mathbb{E}[x]$中互素等价于$\mathbb{K}[x]$中互素。

### 重要性质

**性质1** 在$\mathbb{K}[x]$中，若$f|gh$，且$\gcd(f,g)=1$，则$f|h$。

**性质2** 在$\mathbb{K}[x]$中，若$f|h,g|h$，且$\gcd(f,g)=1$，则$fg|h$。

**性质3** 在$\mathbb{K}[x]$中，若$\gcd(f,h)=1$，且$\gcd(g,h)=1$，则$\gcd(fg,h)=1$。

## 多项式的根、多项式分解

### 前置内容

**定义1** 若$f\in\mathbb{K}[x]$，$\deg f>0$，$f$的因式只有零次多项式和$f(x)$的相伴元，则称$f$在$\mathbb{K}$上不可约，否则称$f$在$\mathbb{K}$上可约。

**定理1** 若$p(x)\in\mathbb{K}[x],\deg p>0$，则以下命题等价：

(1)$p$在$\mathbb{K}$上不可约

(2)$\forall f\in\mathbb{K}[x]$有$(p,f)=1$或$p|g$。

(3)在$\mathbb{K}[x]$中由$p|fg$可推出$p|f$或$p|g$。

(4)在$\mathbb{K}[x]$中，$p(x)$不能分解为两个比$p(x)$次数低的多项式的乘积。

**证明** 按照$(1)\rightarrow(2)\rightarrow(3)\rightarrow(4)\rightarrow(1)$的顺序易证。

**推论1** $\mathbb{K}[x]$中，若不可约多项式$p|f_1f_2\cdot\cdot\cdot f_n$，则$\exists j\in\{1,...,n\},p|f_j$。

**推论2** $\mathbb{K}[x]$中，一次多项式不可约。

**推论3** $\mathbb{K}[x]$中，次数大于0的多项式$f$可约当且仅当能分解为两个比$f(x)$次数低的多项式的乘积。

**定理2（唯一分解定理）** $\mathbb{K}[x]$中每一个次数大于0的多项式f都可以唯一地分解为$\mathbb{K}$上有限多个不可约多项式的乘积。

**定义2** 设$f\in\mathbb{K}[x],\deg f>0$。若不可约多项式p满足：$p^k|f,p^{k+1}\not|f$，则称p为f的**k重因式**。

特别地，当k=0时，p不是f的因式。当k=1时，p是f的单因式。当$k\ge2$时，p为f的重因式。

**定理3** 若p为f的k重因式，$k>0$，则p为$f'$的k-1重因式。其中$f'$为多项式$f(x)$的导函数。

**推论1** $f$有重因式当且仅当$\deg(\gcd(f,f'))>0$。

**定理4（因式定理/Bezout定理）** $(x-c)|f(x)$当且仅当$f(c)=0$。

**定理5（余式定理）** $(x-c)|f(x)$当且仅当$f(c)=0$。

### 复数域上的根与不可约多项式

**引理1** 我们设$f(x)=\sum\limits_{j=0}^na_jx^j$，且有$\deg f=n>0$。则f必有复根。

**证明** 若

**定理1（代数基本定理）** 我们设$f(x)=\sum\limits_{j=0}^na_jx^j$，且有$\deg f=n>0$。则必有