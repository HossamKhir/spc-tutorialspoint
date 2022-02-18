var TutorialPoint;
(function (TutorialPoint) {
    var Calc = (function () {
        function Calc() {
        }
        Calc.prototype.doSum = function (limit) {
            var sum = 0;

            for (var i = 0; i <= limit; i++) {
                sum = sum + i;
            }
            return sum;
        }
        return Calc;
    })(TutorialPoint || (TutorialPoint = {}));
    TutorialPoint.Calc = Calc;
});
