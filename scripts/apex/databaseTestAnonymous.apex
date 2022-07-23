try {
    Account acc1 = new Account();
acc1.Name = 'SI Test';
acc1.Industry = 'Energy';
acc1.active__c = 'No';

Account acc2 = new Account();
acc2.Name = 'UI Test';
acc2.Industry = 'Energy';
acc2.active__c = 'Yes';

Account acc12x = new Account();
Account acc12y = new account();
account acc12z = new Account();

List<Account> listAcc = new List<Account>{acc1, acc2, acc12x,acc12y,acc12z};

list<Database.SaveResult> results = Database.insert(listAcc, false);
System.debug(results);

for (database.SaveResult eachResult : results) {
    if (eachResult.isSuccess()) {
        System.debug('Account Succesfully inserted, Account Id is: ' +eachResult.getId());
    }
    else{
        System.debug('Errors : ' + eachResult.getErrors() + 'Account id : ' + eachResult.getId());
    }
}
} catch (Exception ex) {
    System.debug('There is an error in code');
    
}

