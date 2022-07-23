public with sharing class AnimalsCallouts {

    public static string GET_ANIMALS_ENDPOINT = CalloutInfo__mdt.getinstance('Animals_EndPoint_GET').EndPoint__c;
    public static string POST_ANIMALS_ENDPOINT = CalloutInfo__mdt.getinstance('Animals_EndPoint_POST').EndPoint__c;

    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';

    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_GET);

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 200) {
            string animalsJSON = response.getBody();
            system.debug(animalsJSON);

            //Object ob = JSON.deserializeUntyped(animalsJSON);
            //Map<string, object> results = (Map<string, object>)ob;

            Map<string, object> results = (Map<string, object>)JSON.deserializeUntyped(animalsJSON);
            system.debug('results = ' + results);

            Object ob1 = results.get('animals');
            List<object> animals = (List<object>) ob1;
            system.debug('======object animals list START=====');
            for (object a : animals) {
                system.debug(a);
            }
            system.debug('======object animals list END=====');
        } else {
            system.debug('something went wrong people');
        }
    }

    public static HttpResponse fetchAnimals2() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_GET);

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 200) {
            AnimalsCalloutResponse animalResponse = 
                (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
            system.debug('====STRING animals list START ======');
            list<string> allAnimals = animalResponse.animals;
            for (string a : allAnimals) {
                system.debug(a);
            }
            system.debug('====STRING animals list END ======');

        } else {
            string result = 'Failed';
            system.debug('something went wrong people');
        }

        return response;
    }

    public static HttpResponse postAnimals() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(POST_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_POST);
        string jsonBody = '{"name" : "enginess"}';
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
            AnimalsCalloutResponse animalResponse = 
                (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
            system.debug('====STRING animals list START ======');
            list<string> allAnimals = animalResponse.animals;
            for (string a : allAnimals) {
                system.debug(a);
            }
            system.debug('====STRING animals list END ======');
         

        } else {
            string result = 'Failed';
            system.debug('something went wrong people');
        }

        return response;
    }
}