var num: number = 5;
var i: number;
var factorial = 1;

for (i = num; i >= 1; i--) {
  factorial *= i;
}
console.log(factorial)

// continue statement
var num: number = 0
var count: number = 0;

for (num = 0; num <= 20; num++) {
  if (num % 2 == 0) {
    continue
  }
  count++
}
console.log(" The count of odd values between 0 and 20 is: " + count)    //outputs 10