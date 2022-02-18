interface Person {
    age: number
}

interface Musician extends Person {
    instrument: string
}

var drummer = <Musician>{};
drummer.age = 27
drummer.instrument = "Drums"
console.log("Age:  " + drummer.age);
console.log("Instrument:  " + drummer.instrument);

// 
interface IParent1 {
    v1: number
}

interface IParent2 {
    v2: number
}

interface Child extends IParent1, IParent2 { }
var Iobj: Child = { v1: 12, v2: 23 }
console.log("value 1: " + this.v1 + " value 2: " + this.v2)
