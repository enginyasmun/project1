public with sharing class CartsCallouts {
 public static HttpResponse fetchCarts() {
     // prepare the request

     HttpRequest request = new HttpRequest();
     request.setEndpoint('https://gorest.co.in/public/v2/users');
     request.setMethod('GET');

     // prepare http

     Http http = new http();

     // send request and receive response

     HttpResponse response = http.send(request);
     System.debug(response.getStatus());
     System.debug(response.getStatusCode());
     System.debug(response.getBody());
    
     // lets process the response

     if (response.getStatusCode() == 200) {

    Object ob = JSON.deserializeUntyped(response.getBody());

System.debug(ob);

List<Object> str = (List<Object>) ob;
for (object o : str) {
    System.debug(o);
}

    }

     return response;
 }
}