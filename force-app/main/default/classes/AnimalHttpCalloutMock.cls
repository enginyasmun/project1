@isTest
public class AnimalHttpCalloutMock implements HttpCalloutMock{
    //fake response
    public HttpResponse respond(HttpRequest Request){
    HttpResponse response = new HttpResponse();
    response.setHeader('Content-Type', 'application/JSON');
    response.setBody('{"animals" : ["majestic", "flufffy", "bear", "Chicken", "moose"');
    response.setStatusCode(200);
    return response;
}
}