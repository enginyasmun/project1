@isTest
public class CalculatorClassTest {
@isTest   
    public static void dynCal() {  // test Addition
        CalculatorClass cal = new CalculatorClass();
        Decimal ad = cal.dynamicCalulationMethod(3, 5, 'Addition');
        System.assertEquals(8, ad);
    }

@isTest

    public static void dynCal1() {  // test subtraction
        CalculatorClass cal1 = new CalculatorClass();
        Decimal subs = cal1.dynamicCalulationMethod(8, 3, 'Substraction');
        System.assertEquals(5, subs);
    }

@isTest

    public static void dynCal2() { // test Division
        CalculatorClass cal2 = new CalculatorClass();
        Decimal div = cal2.dynamicCalulationMethod(8, 2, 'Division');
        System.assertEquals(4, div);
    }
@isTest

    public static void dynCal3() {  // test Multiplication
        CalculatorClass cal3 = new CalculatorClass();
        Decimal mul = cal3.dynamicCalulationMethod(3, 3, 'Multiplication');
        System.assertEquals(9, mul);
    }

@isTest
    
    public static void dynCal4() {  //Negative Test
        CalculatorClass cal4 = new CalculatorClass();
        Decimal neg = cal4.dynamicCalulationMethod(3, 4, 'Expo');
        System.assertEquals(0, neg);
    }
}