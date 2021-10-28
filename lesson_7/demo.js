function Person(name, age) {
  this.name = name;
  this.age = age;
}

var child = new Person();
child.__proto__ = null;
console.log(child)
// ???这里可太有意思了