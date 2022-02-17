// lambda expression
var foo = (x: number) => 10 + x
console.log(foo(100))      //outputs 110

// lambda statement
var bar = (x: number) => {
    x = 10 + x
    console.log(x)
}
bar(100)