public with sharing class ContactCallout {
    @future(callout=true)
    public static void sendDataGo(List<Id> contactIds){
        List<Contact> con = [select name, email, gender__c, status__c from contact where id = :contactIds[0]];
        UserInfo info = new UserInfo();
        info.name = con[0].Name;
        info.email = con[0].Email;
        info.gender = con[0].gender__c;
        info.status = con[0].status__c;
        string jsonString = json.serialize(info);
        System.debug(jsonString);
        String endpoint = 'https://gorest.co.in/public/v2/users';
        String token = '70e1f461fd475135683473e734663791d988ca49336b3a1002405be2ff00ed29';
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        request.setBody(jsonString);
        request.setHeader('Content-Type', 'application/json; charset=utf-8');
        request.setHeader('Authorization', 'Bearer ' + token);
        Http http = new http();
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 201){
            Application_Log__c ap = new Application_Log__c();
            ap.log_type__c = 'Success';
            ap.status__c = 'Success';
            ap.message__c = 'Application Log succesfully created';
            insert ap;
        } else {
            Application_Log__c ap = new Application_Log__c();
            ap.log_type__c = 'Error';
            ap.status__c = 'Error';
            ap.message__c = 'Application Log Failed';
            insert ap;
        }
    }
}