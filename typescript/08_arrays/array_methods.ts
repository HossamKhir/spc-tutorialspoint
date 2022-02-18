var alpha: any = ["a", "b", "c"];
var numeric: any = [1, 2, 3];

var alphaNumeric = alpha.concat(numeric);
console.log("alphaNumeric : " + alphaNumeric);

// 
function isBigEnough(element, index, array) {
    return (element >= 10);
}

var passed: any = [12, 5, 8, 130, 44].every(isBigEnough);
console.log("Test Value : " + passed);

// 
var passed: any = [12, 5, 8, 130, 44].filter(isBigEnough);
console.log("Test Value : " + passed);

// 
let num = [7, 8, 9];
num.forEach(function (value) {
    console.log(value);
});

// 
var index = [12, 5, 8, 130, 44].indexOf(8);
console.log("index is : " + index);

// 
var arr: any = new Array("First", "Second", "Third");

var str = arr.join();
console.log("str : " + str);

var str = arr.join(", ");
console.log("str : " + str);

var str = arr.join(" + ");
console.log("str : " + str);

// 
var index = [12, 5, 8, 130, 44].lastIndexOf(8);
console.log("index is : " + index);

// 
var numbers = [1, 4, 9];
var roots = numbers.map(Math.sqrt);
console.log("roots is : " + roots);

// 
var numbers = [1, 4, 9];

var element = numbers.pop();
console.log("element is : " + element);

var element = numbers.pop();
console.log("element is : " + element);

// 
var numbers = new Array(1, 4, 9);
var length = numbers.push(10);
console.log("new numbers is : " + numbers);
length = numbers.push(20);
console.log("new numbers is : " + numbers);

// 
var total = [0, 1, 2, 3].reduce(function (a, b) { return a + b; });
console.log("total is : " + total);

// 
var total = [0, 1, 2, 3].reduceRight(function (a, b) { return a + b; });
console.log("total is : " + total);

// 
var arr: any = [0, 1, 2, 3].reverse();
console.log("Reversed array is : " + arr);

// 
var arr: any = [10, 1, 2, 3].shift();
console.log("Shifted value is : " + arr);

// 
var arr: any = ["orange", "mango", "banana", "sugar", "tea"];
console.log("arr.slice( 1, 2) : " + arr.slice(1, 2));
console.log("arr.slice( 1, 3) : " + arr.slice(1, 3));

// 
var retval = [2, 5, 8, 1, 4].some(isBigEnough);
console.log("Returned value is : " + retval);

var retval = [12, 5, 8, 1, 4].some(isBigEnough);
console.log("Returned value is : " + retval);

// 
var sorted = arr.sort();
console.log("Returned string is : " + sorted);

// 
var removed = arr.splice(2, 0, "water");
console.log("After adding 1: " + arr);
console.log("removed is: " + removed);

removed = arr.splice(3, 1);
console.log("After removing 1: " + arr);
console.log("removed is: " + removed);

// 
var str = arr.toString();
console.log("Returned string is : " + str);

// 
var length: number = arr.unshift("water");
console.log("Returned array is : " + arr);
console.log("Length of the array is : " + length);
