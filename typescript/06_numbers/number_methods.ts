//toExponential() 
var num1 = 1225.30
var val = num1.toExponential();
console.log(val)

// toFixed()
var num3 = 177.234
console.log("num3.toFixed() is " + num3.toFixed())
console.log("num3.toFixed(2) is " + num3.toFixed(2))
console.log("num3.toFixed(6) is " + num3.toFixed(6))

// toLocaleString()
var num = new Number(177.1234);
console.log(num.toLocaleString());

// toPrecision()
var num = new Number(7.123456);
console.log(num.toPrecision());
console.log(num.toPrecision(1));
console.log(num.toPrecision(2));

// toString()
var num = new Number(10);
console.log(num.toString());
console.log(num.toString(2)); // binary
console.log(num.toString(8)); // octal
console.log(num.toString(16)); // hexa

// valueOf()
var num = new Number(10);
console.log(num.valueOf());
