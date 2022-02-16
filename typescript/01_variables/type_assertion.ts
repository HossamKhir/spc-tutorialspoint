var str = '1'
var str2: number = <number><any>str   //str is now of type number 
console.log(typeof (str2))

let code: any = 123;
let employeeCode = code as number;
console.log(typeof (employeeCode)); //Output: number