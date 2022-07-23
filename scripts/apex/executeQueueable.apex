List<Account> accList = [SELECT id, name from Account];
AccountQueueableExample aqe = new AccountQueueableExample(accList);
id JobID = system.enqueueJob(aqe);
System.debug('Job ID ' + JobID);
for (account ac : accList) {
    System.debug(accList);
}
