public with sharing class PostMethodforUsercreationCallout {
    public static void Post() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users');
        request.setMethod('POST');
        string jsonBody = '{ "name": "Testing", "job": "Software"}';
        request.setBody(jsonBody);
        request.setHeader('Content-Type', 'application/json');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 201) {
            string userCr = response.getBody();
            system.debug(userCr);
            System.debug(response);

                Map<string, object> results = (Map<string, 
            object>)JSON.deserializeUntyped(response.getBody());
            System.debug(results);
            System.debug(results.values());
}
}
}