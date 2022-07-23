@isTest
public with sharing class PopulationCalloutTest {
   
    @isTest

    private static void populationTest() {
        PopulationMock am = new PopulationMock();
            Test.setMock(HttpCalloutMock.class, am );

            test.startTest();
                PopulationCallout.fetchPop();
                HttpResponse response = PopulationCallout.fetchPop();

            test.stopTest();

            system.assertEquals(200, response.getStatusCode());
            
    }

    @isTest

    private static void populationTestFail() {
        PopulationMockFail am = new PopulationMockFail();
            Test.setMock(HttpCalloutMock.class, am );

            test.startTest();
                PopulationCallout.fetchPop();
                HttpResponse response = PopulationCallout.fetchPop();

            test.stopTest();

            system.assertEquals(404, response.getStatusCode());
            
    }
}