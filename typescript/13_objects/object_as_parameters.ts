var person = {
    firstname: "Tom",
    lastname: "Hanks"
};
var invokeperson = function (obj: { firstname: string, lastname: string }) {
    console.log("first name :" + obj.firstname)
    console.log("last name :" + obj.lastname)
}
invokeperson(person)

// anonymous object
invokeperson({ firstname: "Sachin", lastname: "Tendulkar" });
