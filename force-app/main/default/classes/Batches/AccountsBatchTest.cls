@isTest
public with sharing class AccountsBatchTest {

@isTest 

private static void testMethod1() {
    List<Account> lstAcc = new List<Account>();
    Account acc = new Account();
    acc.Name = 'TEST ACC 0';
    acc.AccountNumber = 'asci-1';
    acc.active__c = 'Yes';
    lstAcc.add(acc);

    for (Integer i = 1; i < 500; i++){
        Account acc2 = new Account();
        acc2.Name = 'TEST ACC '+ i;
        acc2.AccountNumber = 'asci-1 '+ i;
        acc.active__c = 'Yes';
        lstAcc.add(acc2);
   }
   System.debug('Size of Account List = ' + lstAcc.size());

   if (!lstAcc.isEmpty()) {
       insert lstAcc;
   }

   test.startTest();
   AccountsBatch ab = new AccountsBatch();
   Database.executeBatch(ab,500);
   test.stopTest();

   //Assert here

   List<Account> accounts = [SELECT id, description FROM Account];
   for (account acc4 : accounts) {
       System.assert(acc4.Description.containsIgnoreCase('batch'));
   }
}
}