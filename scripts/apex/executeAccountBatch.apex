// create an instance
AccountsBatch ab = new AccountsBatch();

// id batchId = Database.executeBatch(ab,10);
// execute batch with default batchsize of 200 . it can run without id assigning
Database.executeBatch(ab,20);

