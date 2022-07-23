// public with sharing class AnimalsCallouts2 {
//     public static HTTPResponse fetchAnimals() {
// // 1 prepare the request
//         HttpRequest request = new HttpRequest();
//         request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
//         request.setMethod('GET');

// // 2 prepare http

//         Http http = new Http();

// // 3 send request, receive response

//         HttpResponse response = http.send(request);
//         System.debug('status' + response.getStatus());
//         System.debug('status code ' + response.getStatusCode());

// // 4 process the reponse

// if (response.getStatusCode() == 200) {
//     String animalsJSON = response.getBody();
//     System.debug(animalsJSON);

//  Map<String,Object> results = (Map<String,Object>)JSON.deserializeUntyped(animalsJSON);
//  System.debug(results);

//  List<Object> animals = (List<Object>)results.get('animals');

//  System.debug(animals);

//  for (object ani : animals) {
//      System.debug(ani);
//  }
//  System.debug('Object Animals ends');
// }else {
//     System.debug('Something Wrong');
// }

        
//     }

// }


public with sharing class AnimalsCallouts2 {
    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

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

            Object ob = JSON.deserializeUntyped(animalsJSON);
            Map<string, object> results = (Map<string, object>)ob;
            system.debug('results = ' + results);
            
            List<object> animals = (List<object>) results.get('animals'); //result object to list

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
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 200) {
            AnimalsCalloutsResponse animalResponse = (AnimalsCalloutsResponse)JSON.deserialize(response.getBody(), AnimalsCalloutsResponse.class);
            List<String> allAnimals = animalResponse.animals;
            for (string a  : allAnimals) {
                System.debug(a);
            }


        } else {
            system.debug('something went wrong people');

        }return response;
    } 
}