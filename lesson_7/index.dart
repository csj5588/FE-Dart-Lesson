main() {
  // 1.概念
  // class class_name {  
  //   <fields>
  //   <getters/setters>
  //   <constructors>
  //   <functions>
  // }

  // <fields>字段 - 字段是类中声明的任何变量。字段表示与对象有关的数据。
  // <getters/setters>get和set方法 - 允许程序初始化和检索类字段的值。默认的getter/setter与每个类相关联。但是，可以通过显式定义setter/getter来覆盖默认值。
  // <constructors>构造函数 - 负责为类的对象分配内存。
  // <functions>函数 - 函数表示对象可以采取的操作。它们有时也被称为方法。
  // 这些组件放在一起称为该类的 数据成员。

  // 2.创建类的实例
  // Car c = new Car();
  // c.disp();

  // 3.构造方法 constructor
  /**
   * 构造函数是类的特殊函数，**负责初始化类的变量**。
   * Dart定义了一个与该类名称相同的构造函数。
   * 构造函数是一个函数，因此可以参数化。
   * 但是，与函数不同，构造函数不能具有返回类型。
   * 如果未声明构造函数，则会为您提供默认的无参数构造函数。
   * 
   * 构造函数的语法糖
   * class Point {
   *  num x, y;
   *  // 注意x,y的赋值会在构造函数执行之前完成
   *  Point(this.x, this.y)
   * }
   */
  // Car c = new Car('E1001');
  // c.disp();
  // Dart 在第一个版本实例化对象需要new关键字，但是在Dart2之后就去掉了new关键字
  // Point point1 = Point(3,4);
  // 如果类中没有声明构造函数，Dart会提供一个默认的构造函数。这个默认的构造函数会调用父类的默认构造函数，并且该构造函数是没有参数的

  // 4.命名构造函数 - 使类定义多个构造函数
  // 使用命名构造函数可以为类提供多个构造函数，按官方的说法就是提供额外的清晰度
  // 之前说过，构造函数是不嫩被继承的，这意味着父类的命名构造函数也不能被子类继承。
  // 如果你想在一个已经定义命名构造函数的父类中通过继承创建一个子类，你必须在子类中实现构造函数
  // Car c = new Car.nameConst('engine3');

  // 5. this关键字
  /**
   * this指向类的当前实例，为了避免class变量与参数名称相同的歧义，类的字段以this为前缀
   */
  // 6. getter和setter方法
  /**
   * getter & setter方法，也称为存取和存取器，
   * 允许该程序初始化并分别检索类字段的值。使用get关键字定义getter或访问器。
   * setter或mutator是使用set关键字定义的。
   * 
   * mutator: /*在计算机科学中，增变的方法是用于控制变化的变量的方法。
   *   它们也被广泛称为setter方法。通常，setter伴随着getter，该getter返回private成员变量的值。
   *   mutator方法最常用于面向对象的编程中，符合封装原则。*/
   * 
   * 默认的getter和setter与每个类相关联。但是可以通过显示定义setter和getter来覆盖默认值，
   * getter没有参数并返回一个值，setter有一个参数并且不返回值。
   */

  // Student s1 = new Student();
  // s1.stud_name = 'MARK'; 
  // s1.stud_age = 0; // Age should be greater than 5
  // print(s1.stud_name); // 'MARK'
  // print(s1.stud_age); // null

  // [Nine Demo]
  // var rect = Rectangle(3, 4, 20, 15);
  // assert(rect.left == 3);
  // rect.right = 12;
  // assert(rect.left == -8);

  // 7. 类继承
  /**
   * 程序从现有类创建新类的能力。扩展为创建较新类的类称为父类或者超类。
   * 新创建的类称为子类。
   * 
   * 一个类使用extends关键字从另一个类继承。子类继承父类的构造函数之外的所有属性和方法。
   * 
   * PS：Dart不支持多重继承，多重继承例子如下：
   * class Dog(Mammal, Runnable) { ... } // 狗 多重继承为 哺乳类，能跑
   * 
   * 继承后，类之间存在继承关系，因此子类获得对其父类数据成员的隐式访问；
   * 
   * 继承类型 - 三种：
   * - 单继承 - 每个类最多可以从一个父类扩展。
   * - 多继承 - 一个类可以从多个类继承，Dart不支持多重继承
   * - 多层次继承 - 类可以从另一个子类继承
   * 
   * 多层次继承：
   * class Child extends Root{}
   * class Leaf extends Child{}
   */

  // 8.类继承和方法重写。@override
  /**
   * 方法重写是子类在其父类中重新定义方法的机制 third demo
   * 重写方法时，函数参数的数量和类型必须匹配。
   */
  // Child c = new Child();
  // c.m1(12);

  // 9.static
  /**
   * static关键字可以应用于一类，即数据成员-字段-方法。静态变量保留其值，直到程序完成执行。？？
   * 静态成员由类名引用
   */
  // StaticMem.num = 12;
  // // initialize the static variable
  // StaticMem.disp(); // invoke the static method
  // 另一种情况的尝试，就是非static变量的值保留情况
  // StaticMem mem = new StaticMem()
  // mem.num = 12;
  // mem.disp();
  // 这种情况也是可以的，有什么区别呢，首先明确概念
  /**
   * 使用 static 关键字来实现类级别的变量和函数
   * 静态成员不能访问非静态成员（ static 关键字修饰的成员 不能访问 非 static 关键字修饰的成员）
   * 非静态成员可以访问静态成员
   * 类中的常量是需要使用 static const 声明
   * 静态变量在其首次被使用的时候才被初始化。
   * 可以将静态方法作为编译时常量。例如，你可以将静态方法作为一个参数传递给一个常量构造函数。
   */

  // 10.super关键字
  /**
   * super关键字用来指一类的直接父类，关键字可用于引用变量，属性或方法的超类。
   * Five Demo
   */
  // 11.私有属性及私有方法
  /**
   * 私有属性及方法只有放在单独文件class中生效
   * Seven Demo
   */
  // var emp = new Employee.fromJson({});
  // print(emp);
  // 12.noSuchMethod()
  /**
   * 当用户调用你定义的类中不存在的属性与方法时，可以做出一些响应，通过重写noSuchMethod()
   */
  // class A {
  //   @override
  //   void noSuchMethod(Invocation invocation) {
  //     print('You tried to use a non-existent member: ' + '${invocation.memberName}');
  //   }
  // }
  // 13.枚举类
  /**
   * 枚举类是一种特殊的类，用于表示固定数量的常量值
   * enum Color { red, green, blue }
   * 枚举中的每个值都有一个索引，它返回枚举声明中值的位置，例如，第一个值具有索引0，第二个值具有索引1.
   * assert(Color.red.index == 0);
   * 通过 values 可以获取枚举中所有的值
   * List<Color> colors = Color.values;
   * assert(colors[2] == Color.blue);
   * 枚举类不会像正常类一样可以被继承，重写等等，它具有以下限制

  不能继承，重新实现，在Minix使用
  不能实例化枚举类
   */
}

// [Eight Demo]
// class Rectangle {
//   num left, top, width, height;

//   Rectangle(this.left, this.top, this.width, this.height);

//   num get right => left + width;
//   set right(num value) => left = value - width;

//   num get bottom => top + height;
//   set bottom(num value) => top = value - height;
// }

// [Seven Demo]Person类中没有一个无参数，未命名的构造函数
// class Person {
//   String firstName;
//   // 命名构造函数
//   Person.fromJson(Map data) {
//     print('in Person');
//   }
// }

// class Employee extends Person {
//   // 你必须调用父类的super.fromJson(data).
  
//   Employee.fromJson(Map data) : super.fromJson(data) {
//     print('in Employee');
//   }
// }


// [Five Demo]
// class Parent {
//   String msg = 'message variable from the parent class';

//   void m1(int a) => print('value of a ${a}');
// }

// class Child extends Parent {
//   @override
//   void m1(int b) {
//     print('value of b ${b}');
//     super.m1(13);
//     print('${super.msg}');
//   }
// }

// [First Demo]
// class Car {
//   String engine = '134'; // fields

//   Car(String engine) { // constructor
//   }

//   Car.nameConst(String engine) {
//     print(this.engine);
//     print(engine);
//   }

//   void disp() { // functions
//     print(engine);
//   }
// }

// [Second Demo]
// class Student {
//   String name;
//   int age;

//   String get stud_name {
//     return this.name;
//   }

//   void set stud_name(String name) {
//     this.name = name;
//   }

//   int get stud_age {
//     return this.age;
//   }

//   void set stud_age(int age) {
//     if (age <= 0) {
//       print('Age should be greater than 5');
//     } else {
//       this.age = age;
//     }
//   }
// }

// [Third Demo] - 方法重写
// class Parent {
//   void m1(int a ) {
//     print('value of a ${a}');
//   }
// }

// class Child extends Parent {
//   @override
//   void m1(int b) {
//     print('value of b ${b}');
//   }
// }

// [Fourth Demo]
// class StaticMem {
//   static int num;
//   static disp() {
//     print('The value of num is ${num}');
//   }
// }
// class Person {
//   //用static关键字声明静态成员
//   static var name = "zz"; //静态值
//   var age = 18;

//   static void show() {//静态方法可以访问静态成员，但是不可以访问非静态的成员
//     print(name);
//   }

//   void getInfo() {//非静态成员可以访问静态成员以及非静态成员
//     print(name); //访问静态属性
//     print(this.age); //访问非静态属性
//     show(); //调用静态方法
//   }
// }