class Car {
    //field 
    engine: string;

    // private
    #private: number;

    //constructor 
    constructor(engine: string) {
        this.engine = engine;
        this.#private = 0;
    }

    //function 
    disp(): void {
        console.log("Engine is  :   " + this.engine);
        console.log("Private is  :   " + this.#private);
    }
}

//create an object 
var obj = new Car("XXSY1")

//access the field 
console.log("Reading attribute value Engine as :  " + obj.engine)

//access the function
obj.disp()
