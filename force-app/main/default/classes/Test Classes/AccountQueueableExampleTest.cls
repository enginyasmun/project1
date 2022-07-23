@isTest
public with sharing class AccountQueueableExampleTest {
    
@TestSetup
static void makeData(){
    List<Account> accounts = new List<Account>();
    for (Integer i = 0; i < 100; i++) {
        account a = new Account(name = 'Test Account ' + i, phone = '4545446');
        accounts.add(a);
    }
    insert accounts;
}

@isTest

static void MethodName() {
    List<Account> accs = [SELECT id, name from Account];


    test.startTest();

    AccountQueueableExample aq = new AccountQueueableExample(accs);
    System.enqueueJob(aq);

    test.stopTest();

    Integer count = [SELECT COUNT() from account where name like '%SI%' ];
    system.assertEquals(100, count);

}
}