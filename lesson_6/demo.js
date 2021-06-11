function a() {
  var a = '1';
  function b() {
    var b = '2';
    function c() {
      var c = '3';
      // this
      // console.log(this)
      console.log(a);
      console.log(b);
      console.log(c);
    }
    c();
  }
  b();
}
a();

// 闭包的作用 -> 代码执行块 函数有自己的作用域 -》 分割作用域(全局作用域 + 函数作用域)

// 闭包：函数自身 + 外部变量env环境的集合

// 闭包 -> 函数套函数 return 函数

// function a () {
//   var b = '10';
//   var d = '12'
//   return function c() {
//     console.log(b)
//   }
// }

// a()();

// if (true) {
//   var c = '2';
// }

// console.log(c);

// function a() {
//   var b = '1';
//   a();
// }

// 闭包会导致内存泄漏？ -> 殷燃edith 无限递归
// IE d不被回收的

// 分割作用域  访问函数内部变量