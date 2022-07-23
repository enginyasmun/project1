@isTest
public class kanyeCalloutMock implements HttpCalloutMock {
   public HttpResponse respond(HttpRequest request){
    HttpResponse response = new HttpResponse();
    response.setHeader('Content-Type', 'application/json');
    response.setStatusCode(200);
    return response;
   }
}