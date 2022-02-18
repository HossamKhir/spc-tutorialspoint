var str: any = new String("This is string");
console.log("str.charAt(0) is:" + str.charAt(0));
console.log("str.charAt(1) is:" + str.charAt(1));
console.log("str.charAt(2) is:" + str.charAt(2));
console.log("str.charAt(3) is:" + str.charAt(3));
console.log("str.charAt(4) is:" + str.charAt(4));
console.log("str.charAt(5) is:" + str.charAt(5));

// 
console.log("str.charAt(0) is:" + str.charCodeAt(0));
console.log("str.charAt(1) is:" + str.charCodeAt(1));
console.log("str.charAt(2) is:" + str.charCodeAt(2));
console.log("str.charAt(3) is:" + str.charCodeAt(3));
console.log("str.charAt(4) is:" + str.charCodeAt(4));
console.log("str.charAt(5) is:" + str.charCodeAt(5));

// 
var str1 = new String("This is string one");
var str2 = new String("This is string two");
var str3 = str1.concat(str2.toString());
console.log("str1 + str2 : " + str3)

// 
var index = str1.indexOf("string");
console.log("indexOf found String :" + index);

var index = str1.indexOf("one");
console.log("indexOf found String :" + index);

// 
var index = str1.lastIndexOf("string");
console.log("lastIndexOf found String :" + index);

index = str1.lastIndexOf("one");
console.log("lastIndexOf found String :" + index);

// 
var str1 = new String("This is beautiful string");

var index = str1.localeCompare("This is beautiful string");

console.log("localeCompare first :" + index);

// 
var re = /\w+/gi;
var res = str1.match(re);
console.log(res);

// 
var re = /apples/gi;
var str: any = "Apples are round, and apples are juicy.";
var newstr = str.replace(re, "oranges");
console.log(newstr)

var re = /(\w+)\s(\w+)/;
var str: any = "zara ali";
var newstr = str.replace(re, "$2, $1");
console.log(newstr);

// 
var str: any = "Apples are round, and apples are juicy.";
if (str.search(re) == -1) {
    console.log("Does not contain Apples");
} else {
    console.log("Contains Apples");
}

// 
var sliced = str.slice(3, -2);
console.log(sliced);

// 
var splitted = str.split(" ", 3);
console.log(splitted);

// 
console.log("(1,2): " + str.substr(1, 2));
console.log("(-2,2): " + str.substr(-2, 2));
console.log("(1): " + str.substr(1));
console.log("(-20, 2): " + str.substr(-20, 2));
console.log("(20, 2): " + str.substr(20, 2));

// 
console.log("(1,2): " + str.substring(1, 2));
console.log("(0,10): " + str.substring(0, 10));
console.log("(5): " + str.substring(5));

// 
console.log(str.toLocaleLowerCase());
console.log(str.toLocaleUpperCase());

// 
console.log(str.toLowerCase())
console.log(str.toUpperCase())
