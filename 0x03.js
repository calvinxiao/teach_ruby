function f(x) {
  return function (y) {
    return x + y
  }
}

l = f(2)
console.log(l(1))
console.log(l.call(null, 1))
console.log(l.apply(null, [1]))