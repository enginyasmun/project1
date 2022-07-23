public with sharing class JProductCallout {
    
    private static string GET_JPRODUTCS = CalloutInfo__mdt.getInstance('GET_JPRODUCTS').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';

    

    public static HttpResponse fetchJProducts() {
        
  
    //1. create request

    HttpRequest request = new HttpRequest();
    request.setEndpoint(GET_JPRODUTCS);
    request.setMethod(HTTP_GET);

    //2. prepare http
    http http = new http();

    //3. send request, get response

    HttpResponse response = http.send(request);

    system.debug(response);
    

    // 4. process the responde

    if (response.getStatusCode() == 200) {
        System.debug(response.getBody());

        JProductResponseWrapper jpwrapper = (JProductResponseWrapper)JSON.deserialize(response.getBody(), JProductResponseWrapper.class);
        System.debug(jpwrapper);

        list<JProduct__c> jpList = new list<JProduct__c>();
        list<JProductResponseWrapper.Cls_Jp> listClsJp = jpwrapper.products;
        for (JProductResponseWrapper.Cls_Jp eachJpCls : listClsJp) {
            JProduct__c jp = new JProduct__c();
          jp.id__c = eachJpCls.id;
          jp.title__c = eachJpCls.title;
          jp.description__c = eachJpCls.description;
          jp.price__c = eachJpCls.price;
          jp.Discount_Percentage__c = eachJpCls.discountPercentage;
          jp.brand__c = eachJpCls.brand;
          jp.category__c = eachJpCls.category;
          jpList.add(jp);

        }
upsert jpList id__c;

 

    }else {
        System.debug('Something Went Wrong guys!!!');
    }

       //List<post__c> 


        //for each loop on list<post> from wrapper class

  
      
       //map all fields of wrapper post to post__c object fields
  
    // Database.insert(listPosts, false);
   

    // Integer tt = dummywrapper.total;
    // insert tt;
  
            //add in list<post__c>
        //database.insert(list of post);

        return response;
    }
    
}