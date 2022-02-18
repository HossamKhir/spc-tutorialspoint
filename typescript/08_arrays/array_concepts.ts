// multi-dimensional arrays
var multi: number[][] = [[1, 2, 3], [23, 24, 25]]
console.log(multi[0][0])
console.log(multi[0][1])
console.log(multi[0][2])
console.log(multi[1][0])
console.log(multi[1][1])
console.log(multi[1][2])

// passing arrays to functions
var names: string[] = new Array("Mary", "Tom", "Jack", "Jill")

function disp(arr_names: string[]) {
    for (var i = 0; i < arr_names.length; i++) {
        console.log(names[i])
    }
}
disp(names)

// returning arrays
function getNames(): string[] {
    return new Array("Mary", "Tom", "Jack", "Jill")
}

var names: string[] = getNames()
for (var i in names) {
    console.log(names[i])
}
