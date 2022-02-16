var num: number = 5;
var factorial: number = 1;

while (num >= 1) {
  factorial = factorial * num;
  num--;
}
console.log("The factorial  is " + factorial);

// break statement
var i: number = 1
while (i <= 10) {
  if (i % 5 == 0) {
    console.log("The first multiple of 5  between 1 and 10 is : " + i)
    break     //exit the loop if the first multiple is found 
  }
  i++
}  //outputs 5 and exits the loop