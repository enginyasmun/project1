public with sharing class ZippoPostCodeCallout {
    public static string GET_ZIPPO = CalloutInfo__mdt.getinstance('GET_ZIPPO').EndPoint__c;

    public static HttpResponse fetchPostcode(String x) {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ZIPPO);
        request.setMethod('GET');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getBody().contains(x)) {
            string zippoJSON = response.getBody();
            system.debug(zippoJSON);

    }else {
        System.debug('Zippo code is not valid');
    }

    return response;
}

}