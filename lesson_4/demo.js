var a = [1, 2, 3];
a[Symbol.iterator] = function values () {
  return {
    next: function() {
      return {
        value: 'cuishijie',
        done: false,
      }
    }
  }
}
console.log(a)
var b = a[Symbol.iterator]() // 迭代协议 // 返回的迭代器协议
console.log(b.next())
// @override Flutter
// componentDidMount() // 
