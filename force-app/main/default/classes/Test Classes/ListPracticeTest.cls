@isTest

public class ListPracticeTest {

 
    @isTest   
    public static void addPlanetTest() {
        ListPractice lp = new ListPractice();
        string dt = lp.addPlanet('Earth', 3, 1);// Variable to pass for the test
        System.assertEquals('Planet added successfully', dt);
    

        String dt1 = lp.addPlanet('', 5, 10);
        System.assertEquals('Planet without name can not be added to the list', dt1);
    }
 
}