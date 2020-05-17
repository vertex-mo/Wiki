## 交流方式

参见首页 QQ 群。

站长 QQ ：3530235993

## F.A.Q.

### 如何修改一个页面的内容

在对应页面右上方有一个编辑按钮<i class="md-icon">edit</i>。

### 如何添加一个知识点的页面

目前无此项功能，请联系我们以添加页面。

!!! warning "注意"
    写 .md 文件时，请勿在开头写上标题。

### 为什么我的 markdown 格式乱了

可以查阅 [cyent 的笔记](https://cyent.github.io/markdown-with-mkdocs-material/) ，或者 [MkDocs 使用说明](https://github.com/ctf-wiki/ctf-wiki/wiki/Mkdocs-%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E) 。

#### 我的数学公式怎么乱码了

如果是行间公式（用的 `$$` ），目前已知的问题是需要在 `$$` 两侧留有空行，且 `$$` 要 **单独** 放在一行里（且不要在前加空格）。格式如下：

```text
// 空行
$$
a_i
$$
// 空行
```

