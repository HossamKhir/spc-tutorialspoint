function factorial(number) {
    if (number <= 0) {         // termination case
        return 1;
    } else {
        return (number * factorial(number - 1));     // function invokes itself
    }
};
console.log(factorial(6));      // outputs 720

// Anonymous
(function () {
    var x = "Hello!!";
    console.log(x)
})()      // the function invokes itself using a pair of parentheses ()