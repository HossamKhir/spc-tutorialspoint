class AgriLoan {
    interest;
    rebate;
    constructor(interest, rebate) {
        this.interest = interest;
        this.rebate = rebate;
    }
}
var obj = new AgriLoan(10, 1);
console.log("Interest is : " + obj.interest + " Rebate is : " + obj.rebate);
