@RestResource(urlMapping ='/AccountCustom/*')

Global class AccountCustomApi {
    @HttpGet    
    global static Account getAccount(){
        
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        System.debug(uri);
        String accountName = uri.substringAfterLast('/');
        System.debug(accountName);
        account acc = [SELECT ID, name from Account where name LIKE :accountName];
        System.debug(acc);
        return acc;
        
    
    }


    @HttpPost    
    global static String postContact(String accName){
        
        Account acc = new Account();
        acc.Name = accName;
        insert acc;

        Contact ccc = new Contact();
        ccc.AccountId = acc.Id;
        ccc.LastName = acc.Name;
        insert ccc;

        return acc + ' ' + ccc;

}

}