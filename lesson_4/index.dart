main() {
  // 第四节课
  // List对象 Dart中的数组
  // List a = [1, 2, 3];
  // print(a);
  // 两种声明方式
  // 固定长度声明
  // List a = new List(3);
  // a[4] = '1';
  // print(a);
  // 可增长长度的
  // List a = [1, 2, 3];
  // a.add(4);
  // print(a);
  // List a = new List.empty();
  // a[4] = '3'; // List类型的operator 四种之一 []=  
  // print(a);
  // List a = []..length = 3;
  // List a = new List.filled(3, []); // 填充 共享参数
  // a[1].add(1);
  // List a = new List.generate(3, (index) => [], growable: true); // 创建新的对象病赋值
  // a[0].add(1);
  // print(a);
  // final List<int> a = new List<int>.generate(3, (int index) => index * 2, growable: true);
  // List a = []; // 原始类型
  // List b = new List.empty(); // new Array([1 , 2]); // 构造声明  // Dart 继承 消耗性能
  // List operator
  // List a = [1, 2, 3];
  // [], []= + 
  // List b = [4];
  // print(a + b);
  // String a = '12';
  // a[1];

  // List a = [1, 2, 3];
  // a.fillRange(0, 2, []); // fill 共享
  // Iterable b = a.getRange(0, 2); // 
  // a.indexWhere((element) => false); // 
  // a.remove(3); // 移除值
  // print(a);

  // List a = [1, 2, 3]; // 循环
  // for for in while dowhile
  // a.forEach((element) {
  //   print(element);
  // });
  // Iterable b = a.map((e) => e * 2); // 索引xxx
  // var b = a.reduce((value, element) {
  //   print(value);
  //   print(element);
  //   return value + element;
  // });
  // print(b);
  // List a = [1, 2, 3];

  // Iterable // 可迭代类型

  // javascript 迭代器xxxs
  // js 分两种类型, 迭代协议，迭代器协议。 promise A+ http协议
  // String Array Map Set / Object 没有 无序的存储
  // 迭代协议？
  // '@@iterator' [Symbol.iterator]: function values() {...}
  // 迭代器协议
  // 这个方法要返回指定参数，并且可以执行next();
  // [...]
  // 覆盖迭代器
  // Dart Iterable
  // 可迭代的类型
  // 可以按顺序访问的集合
  // List a = [1, 2, 3];
  // print(a is Iterable); // true map.fiter.reduce
  // (1, 2, 3) .toList() // 性能
  // 第一个问题  为什么不直接返回List类型？
  // js Array [1, 2, 3];
  List a = [1, 2, 3];
  Iterable b = a.map((e) => e);
  print(b);
}