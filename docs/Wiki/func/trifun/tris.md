## 常用代换思路

- $\sqrt{a^2-x^2}$，设$x=a\cos\theta$，则$\sqrt{a^2+a^2\cos\theta}=a\sin\theta(0\le\theta\le\pi)$

- $\sqrt{x^2+a^2}$，设$x=a\tan\theta$，则$\sqrt{a^2+a^2\tan^2\theta}=a\sec\theta(-\dfrac\pi2<\theta<\dfrac\pi2)$

- $\sqrt{x^2-a^2}$，设$x=a\sec\theta$，则$\sqrt{a^2\sec^2\theta-a^2}=a\tan\theta(0<\theta<\pi)$

- 设$x=\tan\dfrac\theta2$，则：  
  $\dfrac{2x}{1+x^2}=\sin\theta(-\pi<\theta<\pi)$  
  $\dfrac{1-x^2}{1+x^2}=\cos\theta(-\pi<\theta<\pi)$  
  $\dfrac{2x}{1-x^2}=\tan\theta(-\dfrac\pi2<\theta<\dfrac\pi2)$

- 其他利用三角函数基本公式的方法。

## 范围问题

???+note "例1"
    求值域：$y=\dfrac{\sqrt{x^2+1}}{x-1}$

??? note "解析"
    设$x=\tan\theta(-\dfrac\pi2<\theta<\dfrac\pi2)$，则:  
    $y=\dfrac{\sec\theta}{\tan\theta-1}\tag*{.}$  
    $=\dfrac{\dfrac1{\cos\theta}}{\dfrac{\sin\theta}{\cos\theta}-1}=\dfrac1{\sin\theta-\cos\theta}=\dfrac1{\sqrt2(\dfrac{\sqrt2}2\sin\theta-\dfrac{\sqrt2}2\cos\theta)}=\dfrac1{\sqrt2\sin(\theta-\dfrac\pi4)}\tag*{.}$  
    考虑到$-\dfrac\pi2<\theta<\dfrac\pi2$,结合图像，有$-\sqrt2\le\sqrt2\sin(\theta-\dfrac\pi4)<1$，故$\text{ran}y=(0,1)\cup(-\infty,-\dfrac{\sqrt2}2)$。

???+note "关于本题的处理方式"
    这里求值域其实就是三角不等式的内容。化简到$\dfrac1{\sin\theta-\cos\theta}$时，分母中有两个异名的三角函数相减，不利于处理。如果对三角函数的基本公式很熟悉，不难联想到利用差角公式化为一个正弦，并利用正弦函数区间最值来得出答案。  
    考虑到差角公式$\sin(x)\cos(y)-\cos(x)\sin(y)=\sin(x-y)$，考虑到这与$\sin(x)-\cos(x)$差了两个系数$\cos(y),\sin(y)$，为了便利对这两个系数的处理，最好使得$\cos(y)=\sin(y)=t$，从而能够直接提出公因子 t，得出$\sin(x-y)=t(\sin(x)-\sin(y))$，从而达到了目的。而这样的 y 显然就是$\dfrac\pi4$，并有$t=\dfrac{\sqrt2}2$。

## 恒等式问题

三角代换的最高境界，即代换后使得题中条件自然成立，而无需再人工处理。

因此熟练运用三角代换还需要熟悉各大常用恒等式。

???+note "例题2"
    (1)对$x,y,z\in\mathbb{R}$，设$f(x,y)=\dfrac{x-y}{1+xy}$,求证：$f(x,y)+f(y,z)+f(z,x)=f(x,y)f(y,z)f(z,x)$。  
    (2)对$x,y,y\in\mathbb{R}$，有$xy+yz+xz=1$，设$g(x,y,z)=x(1-y^2)(1-z^2)$，求证：$g(x,y,z)+g(y,z,x)+g(z,x,y)=4xyz$。

??? note "解析"
    (1)不难看出，这十分类似于正切函数的差角公式。因此考虑设$x=\tan\alpha,y=\tan\beta,z=\tan\gamma$，再设$\alpha-\beta=A,\beta-\gamma=B,\gamma-\alpha=C$。则$A+B+C=0$。考虑到“三角恒等式”的类型二第一式，显然有：  
    $\tan(A)+\tan(B)+\tan(C)=\tan(A)\tan(B)\tan(C)\tag*{.}$  
    故命题自然成立。  
    (2)设$x=\tan\dfrac\alpha2,y=\tan\dfrac\beta2,z=\tan\dfrac\gamma2$，则：  
    $\alpha+\beta+\gamma=\pi\tag*{.}$  
    $g(x,y,z)+g(y,z,x)+g(z,x,y)=4xyz\leftrightarrow\sum\limits_{cyc}\dfrac{1-y^2}{2y}\dfrac{1-z^2}{2z}=1\leftrightarrow\sum\limits_{cyc}\dfrac1{\tan\beta}\dfrac1{\tan\gamma}=1$  
    $\leftrightarrow\tan\alpha+\tan\beta+\tan\gamma=\tan\alpha\tan\beta\tan\gamma\leftrightarrow\text{true}$

其中$\sum\limits_{cyc}$表示轮换求和。有$\sum\limits_{cyc}f(x,y,z)=f(x,y,z)+f(y,z,x)+f(z,x,y)$。多元也同理。

## 不等式问题

见不等式章节的“三角代换”。