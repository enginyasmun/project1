@isTest

public class CalculatorTest {

@isTest 

    public static void welcomeMessageTest() {
        Calculator.welcomeMessage();
        
    }
@isTest 

    public static void printNewMessageTest() {
        String msg = 'Hi';
        Calculator.printNewMessage(msg);
    }

@isTest

    public static void printNewMessage2Test() {
        String msg2 = 'Hi';
        Date dt = Date.today();
        Calculator.printNewMessage2(msg2, dt);
    }

@isTest

    public static void addTest() {
        Integer ad = Calculator.add(2, 4);
        System.assertEquals(6, ad);
    }
@isTest

    public static void addTest2() {
        Integer ad1 = Calculator.add(3, 5, 7);
        System.assertEquals(15, ad1);
    }

@isTest

    public static void addTest3() {
        List<Integer> lst = new List<Integer>{3,5,9};
        Integer ad2 = Calculator.add(lst);
        System.assertEquals(17, ad2);
    }

}