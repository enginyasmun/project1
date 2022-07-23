@isTest

public class OperationsHelperTest{

@isTest

    public static void largestOutOfTwoNumbersTest() {
        OperationsHelper op1 = new OperationsHelper();
        // Decimal op2 = op1.largestOutOfTwoNumbers(2.7, 1.8);
        // System.assertEquals(2.7, op2);
        Decimal op3 = op1.largestOutOfTwoNumbers(2.8, 3.8);
        System.assertEquals(3.8, op3);
}

@isTest
    public static void largestOutOfTwoNumbersTest2() {
        OperationsHelper op100 = new OperationsHelper();
        Decimal op101 = op100.largestOutOfTwoNumbers(3, 2);
        System.assertEquals(3,op101);
    }

@isTest
    public static void smallestOutOfThreeNumbersTest() {

        OperationsHelper op4 = new OperationsHelper();
        Decimal op5 = op4.smallestOutOfThreeNumbers(5.5,7.5,3.5);
        System.assertEquals(3.5, op5);//Return c


}

@isTest

    public static void smallestOutOfThreeNumbersTest2() {
        OperationsHelper op200 = new OperationsHelper();
        Decimal op201 = op200.smallestOutOfThreeNumbers(2, 5, 7);
        System.assertEquals(2, op201);//Return a
    }
@isTest

    public static void smallestOutOfThreeNumbersTest3() {
        OperationsHelper op300 = new OperationsHelper();
        Decimal op301 = op300.smallestOutOfThreeNumbers(5, 3, 6);
        System.assertEquals(3, op301);//Return b
    }

@isTest
    public static void sumofPositiveIntegersTest() { //Positive Test
        OperationsHelper op400 = new OperationsHelper();
        Decimal op401 = op400.sumofPositiveIntegers(5);
        System.assertEquals(15, op401);
        
    }


@isTest
 public static void sumofPositiveIntegersTest1() {   //Negative Test
     OperationsHelper op10 = new OperationsHelper();
     Integer op11 = op10.sumofPositiveIntegers(-5);
     System.assertEquals(null, op11);
     
}

@isTest

public static void sumofPositiveIntegers2Test() {
OperationsHelper op15 = new OperationsHelper();
Integer op16 = op15.sumofPositiveIntegers(2, 5);
System.assertEquals(14, op16);

}

@isTest

public static void sumofListValuesTest() {
    OperationsHelper op20 = new OperationsHelper();
    List<Decimal> lt = new List<Decimal>();
    Decimal op21 = op20.sumofListValues(lt);
    System.assertEquals(null, op21);
    
}

@isTest

public static void averageOfListValuesTest() {
    OperationsHelper op30 = new OperationsHelper();
    List<Decimal> lt1 =new  List<Decimal>{2.5,5.5};
    Decimal op31 = op30.averageOfListValues(lt1);
    System.assertEquals(4, OP31);

    List<Decimal> lt2 =new List<Decimal>();
    Decimal op32 = op30.averageOfListValues(lt2);
    System.assertEquals(null, OP32);

}

@isTest

public static void highestOfListValuesTest() {
    OperationsHelper op40 = new OperationsHelper();
    List<Decimal> lt3 = new List<Decimal>{5,6,7,3,4};
    Decimal op41 = op40.highestOfListValues(lt3);
    System.assertEquals(7, op41);
}

@isTest

public static void lowestOfListValuesTest() {
    OperationsHelper op50 = new OperationsHelper();
    List<Decimal> lt4 = new List<Decimal>{3,6,5,8,1};
    Decimal op51 = op50.lowestOfListValues(lt4);
    System.assertEquals(1, op51);
}

@isTest

public static void reverseOrderPrintTest() {
    OperationsHelper op60 = new OperationsHelper();
    List<Decimal> lt5 = new List<Decimal>{3,5,8};
    op60.reverseOrderPrint(lt5);
    
}

}