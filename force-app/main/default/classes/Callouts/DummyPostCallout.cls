public with sharing class DummyPostCallout {
    private static string GET_DUMMYPOST_ENDPOINT = CalloutInfo__mdt.getInstance('GET_DUMMYPOST').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';

    public static void postCallout() {

        //1. create request

        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_DUMMYPOST_ENDPOINT);
        request.setMethod(HTTP_GET);

        //2. prepare http
        http http = new http();

        //3. send request, get response

        HttpResponse response = http.send(request);

        system.debug(response);

        // 4. process the responde

        if(response.getStatusCode() == 200){
            system.debug(response.getBody());
            DummyPostResponseWrapper dummywrapper = (DummyPostResponseWrapper)JSON.deserialize(response.getBody(), DummyPostResponseWrapper.class);
                system.debug('dummy wrapper = '+dummywrapper);

           //List<post__c> 

           list<post__c> listPosts = new list<post__c>();
           List<DummyPostResponseWrapper.Cls_Post> listClsPost = dummywrapper.posts;


            //for each loop on list<post> from wrapper class

            for (DummyPostResponseWrapper.Cls_Post dpost : listClsPost) {
                System.debug(dpost);
                post__c p = new post__c();
                p.id__c = dpost.id;
                p.title__c = dpost.title;
                p.body__c = dpost.body;
                p.userId__c = dpost.userId;
                p.tags__c = dpost.tags.tostring();
                listPosts.add(p);
          
           //map all fields of wrapper post to post__c object fields
            
            }
        // Database.insert(listPosts, false);
        upsert listPosts id__c;

        // Integer tt = dummywrapper.total;
        // insert tt;
      
                //add in list<post__c>
            //database.insert(list of post);
        } else {
            system.debug(response.getStatus());
        }
    }
}