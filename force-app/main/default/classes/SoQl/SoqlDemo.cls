public with sharing class SoqlDemo {
    // public static void accountSOQL_1(){
    //     List<Account> listAcc = [Select ID, Name FROM Account WHERE Name LIKE '%A'];
    //     System.debug('Account List = ' + listAcc);

    //     Account acc = [select Id, Name FROM Account ORDER BY CreatedDate DESC LIMIT 1];
    //     System.debug(acc);
    //     System.debug('The number of accounts in query is ' + listAcc.size());
    // }

    // public static void accountSOQL_2(){
    //     Account acc = [Select Id, name, phone, Accountnumber FROM Account ORDER BY CreatedDate DESC LIMIT 1];
    //     System.debug('The latest Account created is ' + acc);

    //     String accName = acc.Name;
    //     String accPhone = acc.Phone;

    //     System.debug('Account name is ' + accName + ' The Phone Number is ' + accPhone);

    //     System.debug('The Account Number is ' + acc.AccountNumber);
    // }

    // public static void accountSOQL_3() {
    //     List<Account> listAcc = [Select Id, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC];
    //     System.debug('All Accounts we query is '+listAcc);

    //     for (Account eachAccount : listAcc) {
    //         String accName = eachAccount.Name;
    //         String accPhone = eachAccount.Phone;
    //         System.debug('Account Name is ' + accName+' and the phone number is '+ accPhone);
    //         System.debug('The Account Number is '+ eachAccount.AccountNumber);

    //         System.debug('----------------------------------------');
    //         // String accShippingCity = eachAccount.ShippingCity;
    //         // System.debug(accShippingCity);
            
    //     }
    //     //if we wanna debug all accounts one by one
    //     System.debug('All Accounts we query is '+listAcc);
    //     for (Integer i = 0; i < listAcc.size(); i++) {
    //         Account accName1 = listAcc.get(i);
    //         System.debug(accName1);
    //         System.debug('----------------------------------------');
            
    //     }
    //     //if we wanna debug all accounts one by one
    //     System.debug('All Accounts we query is '+listAcc);
    //     for (account eachAccount : listAcc) {
    //         System.debug(eachAccount);
    //         System.debug('----------------------------------------');
    //     }
    // }

    // public static void accountSOQL_Filter() {
    //     String accNameFilter = 'Engin Yasmun';
    //     List<Account> listAcc = [select id, name, AccountNumber,ShippingAddress from Account WHERE name = :accNameFilter];
    //     System.debug(listAcc);
    // }

    // public static void accountSOQL_Filter(String accNameFilter) {
    //     List<Account> listAcc = [select id, name, ShippingCity,AccountNumber FROM Account WHERE Name = :accNameFilter];
    //     System.debug(listAcc);
    // }

    // public static void childToParent_soql1() {
    //     List<Contact> listCnt = [select id, name, Account.name FROM Contact where Account.Industry = 'Energy'];
    //     System.debug(listCnt.size());
    //     System.debug(listCnt);
    //     for (contact eachContact : listCnt) {
    //         System.debug('Contact Name is '+ eachContact.name + ' Account Name is '+ eachContact.Account.name);
    //     }
        
    // }

    public static void sampleSoql() {
        List<Account> AccQue = new List<Account>();
        AccQue = [select name, annualrevenue, (SELECT name, amount from opportunities WHERE stageName like '%Id%') FROM Account WHERE Type = 'Customer - Direct'];
        
            for (Account eachAcc : AccQue) {
                System.debug('Account Name : ' + '"' + eachAcc.Name + '"' + ' and its Annual Revenue is : ' + eachAcc.AnnualRevenue);
                for (Opportunity eachOpp : eachAcc.Opportunities) {
                    System.debug('Opportunity Name : ' + eachOpp.Name);
                    System.debug('Opportunity Amount : ' + eachOpp.Amount);
                }
            }
    
    }
}