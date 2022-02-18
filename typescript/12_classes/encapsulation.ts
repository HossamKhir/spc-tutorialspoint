class Encapsulate {
    str: string = "hello"
    private str2: string = "world"
    protected str3: string = "!";
}

var obj = new Encapsulate()
console.log(obj.str)     //accessible 
console.log(obj.str2)   //compilation Error as str2 is private
console.log(obj.str3);  // compilation error as str3 is protected
