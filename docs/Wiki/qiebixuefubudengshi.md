## 检索字

qiebixuefubudengshi; Chebyshev不等式; Chebyshev inequalities

## 前置知识

[和式](heshi.md) [排序不等式](paixubudengshi.md)

## 概念

### 基本定义

若$a_1\le a_2\le...\le a_n,b_1\le b_2\le...\le b_n$，则：

$$
\sum a_jb_j\ge\dfrac1n\sum a_j\sum b_j
$$

若$a_1\le a_2\le...\le a_n,b_1\ge b_2\ge...\ge b_n$，则：

$$
\sum a_jb_j\le\dfrac1n\sum a_j\sum b_j
$$


### 证明

由[排序不等式](paixubudengshi.md)：

令$M=\sum a_jb_j$

$$
\begin{matrix}
M&\ge&a_1b_1+a_2b_2+...+a_nb_n\\
&\ge&a_1b_2+...+a_nb_1\\
&\ge&a_1b_3+...+a_nb_2\\
&\ge&...\\
&\ge&a_1b_n+...+a_nb_{n-1}
\end{matrix}
$$

n 式相加，即得到$nM\ge\sum a_j\sum b_j$

证毕。

## 方法

### 基础用法

**例1** 设$a\le b\le c\le d\le e$，且$a+b+c+d+e=1$，求证：$ad+dc+cb+be+ea\le\dfrac15$。

**证明**

左侧的形式很奇怪，难以套用 Chebyshev 不等式。

考虑变形。若直接合并同类项，会使原式极其不对称。为了合并后让$a,b,c,d,e$所乘的内容相似，考虑对左侧乘2。

$$
2(ad+bc+cb+be+ea)=a(d+e)+b(c+e)+c(b+d)+d(a+c)+e(b+a)
$$

此时$d+e\ge c+e\ge b+d\ge a+c\ge a+b$。

则由切比雪夫不等式，有

$$
t\le\dfrac15(a+b+c+d+e)(2(a+b+c+d+e))=\dfrac25
$$

其中$t=a(d+e)+b(c+e)+c(b+d)+d(a+c)+e(b+a)$。

故$ad+dc+cb+be+ea=\dfrac t2\le\dfrac15$。

**例2** 设$a,b,c,d>0$，且$a^2+b^2+c^2+d^2=4$，试证：$\sum\limits_{cyc}\dfrac{a^2}{b+c+d}\ge\dfrac43$

**证明**

在看到这种形式时，通常会联想到柯西不等式，即$LHS\ge\dfrac{(a+b+c+d)^2}{3(a+b+c+d)}=\dfrac{a+b+c+d}3$

但根据条件，我们仅可以得到$a+b+c+d\le4$，不等号方向不符。因而不可使用柯西。

又考虑到条件的$a^2+b^2+c^2+d^2$恰好为分子之和，而和$\sum\limits_{cyc}\dfrac1{b+c+d}$可以根据$a+b+c+d\le4$求得最小值。而左侧完全对称，故使用 Chebyshev 不等式将十分方便。

假设$a\ge b\ge c\ge d$，则$a^2\ge b^2\ge c^2\ge d^2$，$b+c+d\le c+d+a\le d+a+b\le a+b+c$。

由切比雪夫不等式，有

$$
LHS\ge\dfrac14(\sum a^2)(\sum_{cyc}\dfrac1{b+c+d})=\sum_{cyc}\dfrac1{b+c+d}
$$

注意到，这与一开始仅在分母差了一个$a^2$。回想到初始尝试使用柯西不等式时，唯一的障碍便是分子的一个放缩方向错误的$a+b+c+d$，而此时这个障碍已经消除，因而使用柯西不等式进行处理将会非常顺畅。

由柯西不等式，$\sum\limits_{cyc}\dfrac1{b+c+d}\ge\dfrac{16}{3(a+b+c+d)}\ge\dfrac{16}{3*4}=\dfrac43$。

证毕。

*最好有这样一个习惯：不要轻易地丢弃一开始的错误解法，它们对最终的解答处理可能将有指导性意义。*

### Chebyshev 联合技术

已知$\sum f(x_j)=0$，若$f(x)$与$\dfrac{g(x)}{f(x)}$单调性相同（反），则有$\sum g(x_j)\ge(\le)0$

**例3** 设$a,b,c,d,e\ge0,\sum\dfrac1{a+4}=1$，求证：$\sum\dfrac a{4+a^2}\le1$。

**证明**

原条件等价于$0=\sum(\dfrac1{a+4}-\dfrac15)$，即$\sum\dfrac{1-a}{a+4}=0$。

故只需证$\sum(\dfrac a{4+a^2}-\dfrac15)=\sum\dfrac{(1-a)(a+4)}{5(4+a^2)}\le0$

即证$\sum\dfrac{1-a}{a+4}\dfrac{a^2-16}{4+a^2}\le0$

不妨设$a\ge b\ge c\ge d\ge e$，为了处理两个因式的单调性，考虑分离常数。有$\dfrac{1-a}{a+4}=\dfrac5{a+4}-1$

故$\dfrac{1-a}{a+4}$单调递减，即其单调性与序列$(a,b,c,d,e)$刚好相反。则左侧即逆序和。

由 Chebyshev 不等式，有$\sum\dfrac{1-a}{a+4}\dfrac{a^2-16}{4+a^2}\le0$。得证。

*有关恒等变形：在初中时，形如将等号右侧的常数分配至左侧、分离常数等技巧常常会被讲到。有时不恰当的变形将会将问题导向复杂，而合适的变形则将导向最终的证明。把握这之间的度，需要积累与经验。*

**例4** 设$a,b,c>0,a+b+c=3$，求证：$\dfrac1{a^2}+\dfrac1{b^2}+\dfrac1{c^2}\ge a^2+b^2+c^2$。

**证明**

即证$\sum\limits_{cyc}(\dfrac1{a^2}-a^2)=\sum\limits_{cyc}\dfrac{(1-a)(1+a+a^2+a^3)}{a^2}\ge0$

不妨设$a\ge b\ge c$，则$1-a\le1-b\le1-c$。下面处理另一个因子的单调性。

我们证明若$x\ge y$，则$\dfrac{1+x+x^2+x^3}{x^2}<\dfrac{1+y+y^2+y^3}{y^2}$

$x=y$时自然成立，故仅考虑$x>y$的情况，则

$$
\begin{matrix}
\dfrac{1+x+x^2+x^3}{x^2}<\dfrac{1+y+y^2+y^3}{y^2}&\Leftrightarrow&x^2y^3+x^2y+x^2>y^2x^3+y^2x+y^2\\
&\Leftrightarrow&(x-y)(-a^2b^2+ab+a+b)>0\\
&\Leftrightarrow&-x^2y^2+xy+x+y>0\\
\end{matrix}
$$

而$-x^2y^2+xy+x+y>2\sqrt{xy}+xy-x^2y^2=\sqrt{xy}(2+\sqrt{xy}-\sqrt{xy}xy)$

易知$(2+\sqrt{xy}-\sqrt{xy}xy)$为关于$\sqrt{xy}$的三次函数，求导即证$-x^2y^2+xy+x+y>0$。

则$\dfrac{1+a+a^2+a^3}{a^2}\le\dfrac{1+b+b^2+b^3}{b^2}\le\dfrac{1+c+c^2+c^3}{c^2}$

由 Chebyshev 不等式即证。

- Q：为何要对$\dfrac{1+x+x^2+x^3}{x^2}<\dfrac{1+y+y^2+y^3}{y^2}$成立的充要条件加以分析？
- A：当$x>y$时，我们希望证明$\dfrac{1+x+x^2+x^3}{x^2}<\dfrac{1+y+y^2+y^3}{y^2}$或其反命题，从而对第二个因子进行定序。如果这个式子成立的充要条件可以由$x>y$推出，则$f(x)=\dfrac{1+x+x^2+x^3}{x^2}$单调减，从而$\dfrac{1+a+a^2+a^3}{a^2}\le\dfrac{1+b+b^2+b^3}{b^2}\le\dfrac{1+c+c^2+c^3}{c^2}$；若该充要条件与题目的条件矛盾，则说明此式子不可能成立，故$f(x)$单增，从而有$\dfrac{1+a+a^2+a^3}{a^2}\ge\dfrac{1+b+b^2+b^3}{b^2}\ge\dfrac{1+c+c^2+c^3}{c^2}$。在本题，我们遇到的是前一种情形。
- 不过需要注意的是，并不是所有的情况都能定序。也许在推理过程中会发现$\dfrac{1+x+x^2+x^3}{x^2}<\dfrac{1+y+y^2+y^3}{y^2}$有时候成立，有时候不成立，就无法判断其单调性。此时就需要考虑换一种思路了。
- Q：如何想到$x+y\ge2\sqrt{xy}$的放缩方式？
- A：考虑到$-x^2y^2+xy+x+y$是一个二元函数，注意到前两项都是关于$xy$的单项式，为了方便处理，“化和为积”的思路就十分自然了。
- 当然，也可考虑[偏导数](piandaoshu.md)。

