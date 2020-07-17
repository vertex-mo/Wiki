## 检索字

shuerbudengshi; Schur 不等式; Schur inequalities

## 前置知识

[和式](heshi.md)

## 概念

### 基本定义

设$x,y,z\ge0,r\in\textbf{R}$，则$\sum\limits_{cyc}x^r(x-y)(x-z)\ge0$，等号成立当且仅当$x=y=z$或$x=0,y=z$或$y=0,x=z$或$z=0,x=y$。

### 证明

不妨设$x\ge y\ge z$，设$M=\sum\limits_{cyc}x^r(x-y)(x-z)$。

若$r\ge0$，则$x^r\ge y^r$，则$M\ge y^r(x-y)(x-z-y+z)=y^r(x-y)^2\ge0$。

反之，则$z^r\ge y^r$，则$M\ge0+y^r(y-z)(x-z-x+y)=y^r(y-z)^2\ge0$。

### 推广

设$a,b,c\ge0,x,y,z\in\textbf{R}$，若$(a,b,c)$与$(x,y,z)$都是非严格单调序列，则有

$$
a(x-y)(x-z)+b(y-x)(y-z)+c(z-x)(z-y)\ge0
$$

**证明**

由对称性不妨设$x\ge y\ge z$，若$a\ge b\ge c$，则有$c(z-x)(z-y)\ge0$，而

$a(x-y)(x-z)+b(y-x)(y-z)=(x-y)(a(x-z)-b(y-z))$

$\ge(x-y)(b(x-z)-b(y-z))=b(x-y)^2\ge0$。

若$a\le b\le c$，则$a(x-y)(x-z)\ge0$，余下过程同理。

### r=1的特例

- $x(x-y)(x-z)+y(y-x)(y-z)+z(z-x)(z-y)\ge0$
- $\sum\limits_{cyc}x^3+3xyz\ge\sum\limits_{sym}x^2y$
- $(\sum x)^3-4(\sum x)(\sum yz)+9xyz\ge0$（注：进行 [pqr 代换](pqrdaihuan.md)：$p=x+y+z,q=xy+yz+zx,r=xyz$后则为形式$p^3-4pq+9r\ge0$）。

## 方法

### 善用特例

**例1** 设$a,b,c$为三角形的三边，求证：$a^2(b+c-a)+b^2(c+a-b)+c^2(a+b-c)\le3abc$。

**证明**

暴力展开后，原式等价于$a^3+b^3+c^3+3abc\ge b^2(a+c)+c^2(a+b)+a^2(b+c)$。由r=1的 Schur 不等式显。

### 齐次化

在之前曾经提到过，齐次化之后采用均值、排序、舒尔不等式，是一个十分有用的技巧。

**例2** 设$a,b,c\in\textbf{R}^*$，且$abc=1$，试证明$(a-1+\dfrac1b)(b-1+\dfrac1c)(c-a+\dfrac1a)\le1$。

**证明**

令$a=\dfrac xy,b=\dfrac yz,c=\dfrac zx$，则此时不等式成为$(\dfrac xy-1+\dfrac zy)(\dfrac yz-1+\dfrac xz)(\dfrac zx-1+\dfrac yx)\le1$。

即$(x+z-y)(y+x-z)(z+y-x)\le xyz$。

- 在遇到$abc=1$一类的条件，且题中涉及到同时出现$a$和$\dfrac1a$，可考虑变换$a=\dfrac xy,b=\dfrac yz,c=\dfrac zx$。这样自然满足了$abc=1$，同时本质上是将$a,b,c$这样的一次式降成零次式$x/y,y/z,z/x$，而零次式和它的倒数都是零次式，从而能够方便地齐次化$a$与$\dfrac1a$，从而方便处理。

### 杂项方法

**例3** 试证明，对$\forall a,b,c\in\textbf{R}$，$(a^2+2)(b^2+2)(c^2+2)\ge9(ab+bc+ca)$。

**证明**

暴力展开，原式等价于$8+a^2b^2c^2+2\sum a^2b^2+4\sum a^2\ge9(ab+bc+ca)$。

考虑配方法。由于$\sum(ab-1)^2\ge0$，则$2\sum a^2b^2+6\ge2\sum ab$，又由舒尔不等式，$2+a^2b^2c^2+\sum a^2\ge3\sqrt[3]{a^2b^2c^2}+\sum a^2\ge2\sum ab$

故$8+a^2b^2c^2+\sum a^2+2\sum a^2b^2\ge6\sum ab$。

**例4** 设$a,b,c\in\textbf{R}^*$，求证：$\sqrt{abc}(\sqrt a+\sqrt b+\sqrt c)+(a+b+c)^2\ge4\sqrt{3abc(a+b+c)}$。

**证明**

显然作如下换元：

令$\sqrt a=x,\sqrt b=y,\sqrt c=z$，则$xyz(x+y+z)+(x^2+y^2+z^2)^2=\sum\limits_{cyc}x^2yz+\sum\limits_{cyc} x^4+2\sum\limits_{cyc}x^2y^2\ge\sum\limits_{cyc}xy(x^2+y^2)+2\sum\limits_{cyc}x^2y^2$

$\ge2\sum\limits_{cyc}x^2y^2+2\sum\limits_{cyc}x^2y^2=4(x^2y^2+y^2z^2+z^2x^2)=4(ab+bc+ca)$

而$(ab+bc+ca)^2\ge3\sum\limits_{cyc}ab*ac=3abc(a+b+c)$。

故得证。

### 推广 Schur

**例5**  求证：当非负实数$x,y,z$中任意两数之和不为零时，$\sum\limits_{cyc}\dfrac{x^3+xyz}{y+z}\ge x^2+y^2+z^2$。

**证明**

设$LHS-RHS=\sum\limits_{cyc}\dfrac{x(x-y)(x-z)}{y+z}=M$。

不妨设$x\ge y\ge z$，则有$\dfrac x{y+z}\ge\dfrac{y}{x+z}\ge\dfrac z{x+y}$

由推广 Schur 不等式得证。