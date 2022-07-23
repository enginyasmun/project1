public with sharing class KanyeCallout {
    public static HttpResponse fetchQuote() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.kanye.rest');
        request.setMethod('GET');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 200) {
            string kanyeJSON = response.getBody();
            system.debug(kanyeJSON);

    }

    return response;
}
}