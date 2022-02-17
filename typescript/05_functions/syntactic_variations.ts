// It is not mandatory to specify the data type of a parameter
var func = (x) => {
    if (typeof x == "number") {
        console.log(x + " is numeric")
    } else if (typeof x == "string") {
        console.log(x + " is a string")
    }
}
func(12)
func("Tom")

// Optional parentheses for a single parameter
var display = x => {
    console.log("The function got " + x)
}
display(12)

// Optional braces for a single statement, Empty parentheses for no parameter
var disp = () => {
    console.log("Function invoked");
}
disp();