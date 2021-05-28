main() {
  // var text; // 编译到这里时候，没有检测到值
  // text = 'Hello World';
  // print(text); // js -> console

  // 命名规则
  // 标识符不可以是关键字
  // 标识符可以包含字母和数字  text2
  // 不能包含空格和特殊字符，除去 _ 和 $
  // 不能以数字开头。

  // 类型检查
  // Typescript 有类型检查的
  // var text = 'hw';
  // String text = 'hw';
  // int num = 666;



  // var text;
  // print(text); // null
  // js -> undefined;
  // undefined null Dart 里没有undefined null对象类型
  // Dart 将所有的值都视为对象 -> JS 并没有 -> 面向对象编程,基本思想： 万物皆对象
  // 碰到undefined

  // 常量
  // final const
  // const text = 'Hello World';
  // print(text);

  // 区别在编译时 const -》 编译时候 确定的值
  // final -> 可以是编译时候确定的值,也可以是，运行时候确定的值

  // final date = new DateTime().now();
  // final num = new Random();

  // 实际项目中: ajax, 不知道服务端返回值是什么数据，接收服务端返回的值，这个值也是一个运行时确定的值。

  // 算术运算符
  // + - * / ~/ 除以 % ++ --
  // var a = 10;
  // var b = 3;
  // print(a++);

  // 关系运算符 -> Boolean

  // > < >= <= == !=

  // var a = 10;
  // var b = 3;
  // print(a != b); // Boolean true

  // 类型检测运算符
  // is is!

  // var a = 10;
  // print(a is int); // 对标 js typeof

  // 按位运算符
  // & | ^ ~  二进制    >> << 2禁制 看评论
  // 0101
  // 1001
  // 1101
  // & 当两个操作数都为1
  // | 其中一个或两个为1
  // ^ 其中只有一个1
  // ～ 位否 反转
  // int a = 10;
  // int b = 2;
  // print(a & b);

  // 逻辑运算符 -> Boolean
  // && || ! 

  // 三目运算符 -> 严格类型
  // var a = 'true';
  // var b = 2;
  // print(a ? b : null);

  // ??
  // var a = null;
  // var b = 2;
  // print(a ?? b);

  // 笔记 -> 评论区
  // 项目 -> 评论区
  // 问题 -> 你们提在评论区 1839333350@qq.com
}
