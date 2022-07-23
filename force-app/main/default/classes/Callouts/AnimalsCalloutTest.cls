@istest
    public with sharing class AnimalsCalloutTest {
        @istest
        private static void testFetchAnimalsSuccess() {
            AnimalsHttpCalloutMock am = new AnimalsHttpCalloutMock();
            Test.setMock(HttpCalloutMock.class, am );

            Test.startTest();
            AnimalsCallouts.fetchAnimals();
            HttpResponse response = AnimalsCallouts.fetchAnimals2();
            AnimalsCallouts.postAnimals();
            Test.stopTest();

            system.assertEquals(200, response.getStatusCode());
    }

@isTest

    private static void testFetchAnimalsFailure() {
        AnimalsHttpMockCalloutFailure am = new AnimalsHttpMockCalloutFailure();
            Test.setMock(HttpCalloutMock.class, am );

            Test.startTest();
            HttpResponse response = AnimalsCallouts.fetchAnimals2();
            Test.stopTest();

            system.assertEquals(404, response.getStatusCode());
    }

@isTest
    private static void testpostAnimals() {
        AnimalsHttpCalloutMock am = new AnimalsHttpCalloutMock();
        Test.setMock(HttpCalloutMock.class, am );

        Test.startTest();
        
        HttpResponse response = AnimalsCallouts.postAnimals();
        AnimalsCallouts.postAnimals();
        Test.stopTest();

        system.assertEquals(201, response.getStatusCode());
}
}