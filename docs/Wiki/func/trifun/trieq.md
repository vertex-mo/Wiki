## 三角恒等式

### 类型1：利用同角三角函数关系。

- $\tan^2(\alpha)+1=\dfrac1{\cos^2(\alpha)}$

利用“商数关系”将 tan 化为sin 和 cos，再利用“平方关系”即可。

其余恒等式也可类似证明。

### 类型2：利用基本公式。

- $\tan(x+y+z)=\dfrac{\tan(x)+\tan(y)+\tan(z)-\tan(x)\tan(y)\tan(z)}{1-\tan(x)\tan(y)-\tan(y)\tan(z)-\tan(z)\tan(x)}$

反复利用和角公式化简即可。

### 类型3：三角内角关系。

在$\triangle ABC$中：

- $\tan(A)+\tan(B)+\tan(C)=\tan(A)\tan(B)\tan(C)$
- $\cot(A)\cot(B)+\cot(B)\cot(C)+\cot(C)\cot(A)=1$
- $\sin^2(A)+\sin^2(B)+\sin^2(C)=2(1+\cos(A)\cos(B)\cos(C))$
- $\cos^2(A)+\cos^2(B)+\cos^2(C)=1-2\cos(A)\cos(B)\cos(C)$
- 令$f(A,B)=\tan\dfrac A2\tan\dfrac B2$，则$f(A,B)+f(B,C)+f(C,A)=1$
- 令$f(A,B)=\dfrac{\cot(A)+\cot(B)}{\tan(A)+\tan(B)}$，则$f(A,B)+f(B,C)+f(C,A)=1$

### 类型4：反三角函数恒等式：

- 证明思路：**换元+逆运算**。
- $\arcsin(x)+\arccos(x)=\dfrac\pi2,\arctan(x)+\text{arccot}(x)=\dfrac\pi2$
- $\arctan(x)=\arcsin(\dfrac x{\sqrt{x^2+1}})$
  证明：设$\arctan(x)=\alpha$，则$\cos^2(\alpha)=\dfrac1{x^2+1},\sin^2(\alpha)=\dfrac{x^2}{x^2+1}$。考虑到 arctan 的符号，有$\arcsin(\dfrac x{\sqrt{x^2+1}})=\alpha$。
- $\arctan(\dfrac1{\sqrt2})+\arcsin(\dfrac1{\sqrt2})=\arctan(\dfrac{\sqrt2+1}{\sqrt2-1})$  
  证明：令$\alpha=\arctan(\dfrac1{\sqrt2}),\beta=\arcsin(\dfrac1{\sqrt2}),\gamma=\arctan(\dfrac{\sqrt2+1}{\sqrt2-1})$  
  则原式等价于$\tan(\alpha+\beta)=\tan(\gamma)$，  
  即$\dfrac{\tan(\alpha)+\tan(\beta)}{1-\tan(\alpha)\tan(\beta)}=\tan(\gamma)$，将$\beta$转化为$\arctan$的形式，再暴力验证即可。

## 三角方程

常用思想：

- 运用公式
- 分离变量
- 说明解的个数，然后猜出解，证明其成立（一般是唯一解）。

???+note "例题"
    (1)解方程$\sin(x+\dfrac\pi7)=\sin(x)+\sin(\dfrac\pi7)$  
    (2)解方程$\cos(x)\cos(2x)=\cos(3x)\cos(4x)$  
    (3)解方程$\sin30°\sin80°\sin(x)=\sin20°\sin50°\sin(x+40°)$

??? note "解析"
    (1)$2\sin\dfrac{x+\dfrac\pi7}2\cos\dfrac{x+\dfrac\pi7}2=2\sin\dfrac{x+\dfrac\pi7}2\cos\dfrac{x-\dfrac\pi7}2\tag*{.}$  
    $1°\sin\dfrac{x+\dfrac\pi7}2=0\rightarrow x=2k\pi-\dfrac\pi7(k\in\mathbb{Z})\tag{1.1}$  
    $2°\cos\dfrac{x+\dfrac\pi7}2-\cos\dfrac{x-\dfrac\pi7}2=0\tag*{.}$  
    $2\sin\dfrac x2\sin\dfrac\pi7=0\rightarrow\dfrac x2=k\pi\rightarrow x=2k\pi(k\in\mathbb{Z})\tag{1.2}$  
    (2)$\cos(x)+\cos(3x)=\cos(x)+\cos(7x)\tag*{.}$  
    $\cos(3x)-\cos(7x)=0\rightarrow\sin(5x)\sin(x)=0\rightarrow x=k\pi\ or\ x=\dfrac{k\pi}5(k\in\mathbb{Z})\tag{2}$
    (3)$\dfrac{\sin(x+40°)}{\sin(x)}=\dfrac{\sin80°\sin30°}{\sin20°\sin50°}=2\cos20°\tag*{.}$  
    $\cos40°+\dfrac{\cos(x)}{\sin(x)}\sin40°=2\cos20°\rightarrow\cot(x)=\sqrt3\rightarrow x=k\pi+\dfrac\pi6(k\in\mathbb{Z})\tag{3}$