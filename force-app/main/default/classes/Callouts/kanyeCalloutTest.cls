@isTest
public with sharing class kanyeCalloutTest {
    @isTest

    private static void kanyeTest() {
        KanyeCalloutMock am = new KanyeCalloutMock();
            Test.setMock(HttpCalloutMock.class, am );

            test.startTest();
            
            KanyeCallout.fetchQuote();
            HttpResponse response = KanyeCallout.fetchQuote();

            test.stopTest();

            system.assertEquals(200, response.getStatusCode());

        
    }

}