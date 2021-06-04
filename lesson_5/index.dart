import 'dart:collection';
import 'dart:convert';

main() {
  // List、Iterable
  // Map对象
  // 声明方式 - 字面量，构造
  // Map a = { 'name': 'inke' };
  // print(a);
  // Map 对象 键值对对集合
  // key value  key 可以使任何对象 Dart中所有东西对象
  // Map a = { null: 'inke' };
  // print(a);
  // js Object的对象类型 键值对的集合 key => string、Symbol.iterator 迭代协议
  // []
  // Map b = { 'name': 'inke' };
  // Map a = new Map.from(b); // 浅拷贝
  // Map a = json.decode(json.encode(b)); // 深拷贝
  // print(a);
  // String a = '''
  //  [1, 2]
  // ''';
  // print(json.decode(a) is List);
  // Map b = { 'name': 'inke' };
  // Iterable a = b.values;
  // print(a);
  // b['age'] = '18'; // operator
  // 批量修改值 - 迭代的过程不允许修改键
  // b.updateAll((key, value) => value + 'modify');
  // print(b.containsKey('name')); // hasOwnProperty
  // Map c = b.map((key, value) => MapEntry(value, key));
  // Map <key, value> 集合 表示一个键值对 MapEntry
  // entries -> 多个 MapEntry
  // Map a = new Map.fromEntries(entries)
  // print(c);
  // MapEntry a = MapEntry('name', 'inke');
  // MapEntry b = MapEntry('location', 'cs');
  // var c = [a, b];
  // Map d = new Map.fromEntries(c); // entries
  // print(d);
  // List c = ['name', 'location', 'c'];
  // List b = ['inke', 'cs'];
  // Map a = new Map.fromIterables(c, b); // 类型是固定的 <String, String>
  // print(a);
  // List b = new Map.from(other);
  // javascript Object 装饰生成器 { a: b }
  // new Object() {}
  // Dart Map().  
  // HashMap // 无序
  // LinkedHashMap // 有序的key插入的顺序
  // SplayTreeMap // 自平衡二叉树
  // SplayTreeMap() a = new LinkedHashMap();
  // List a = [1];
  // a.toList();
  // javascript Map Object 键 Map键 Map 值值对
  // Map 迭代顺序是插入的顺序
}