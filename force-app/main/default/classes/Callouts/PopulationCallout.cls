public with sharing class PopulationCallout {
    public static HttpResponse fetchPop() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://datausa.io/api/data?drilldowns=Nation&measures=Population');
        request.setMethod('GET');

        //2. prepare http
        Http http = new Http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        System.debug(response.getBody());

        //4. process the response

        if (response.getStatusCode() == 200) {
            Object popOb= JSON.deserializeUntyped(response.getBody());
            System.debug(popOb);

           Map<String,Object> results = (Map<String,Object>)popOb;
            System.debug(results.get('data'));

            List<Object> obRes = (List<Object>)results.get('data');
            System.debug(obRes);
            System.debug('Loop starts here');
            for (object ob : obRes) {
                System.debug(ob);
            }
        } else {
            System.debug('somethign wrong');
        }

return response;
    }
}