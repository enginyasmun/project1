public with sharing class CalculatorCallout {
    public static Double addition(double num1, double num2) {
        CalculatorServices.CalculatorImplPort calculator = new CalculatorServices.CalculatorImplPort();


        return calculator.doAdd(num1,num2);
    }

    public static Double multiplication(double num1, double num2) {
        CalculatorServices.CalculatorImplPort calculator = new CalculatorServices.CalculatorImplPort();


        return calculator.domultiply(num1,num2);
    }

    public static Double division(double num1, double num2) {
        CalculatorServices.CalculatorImplPort calculator = new CalculatorServices.CalculatorImplPort();


        return calculator.dodivide(num1,num2);
    }


    public static Double subtraction(double num1, double num2) {
        CalculatorServices.CalculatorImplPort calculator = new CalculatorServices.CalculatorImplPort();


        return calculator.doSubtract(num1,num2);
    }


}