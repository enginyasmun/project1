public  class primitiveDataTypeDemo {
    public void printBasicDataType(){
        string batchName = 'Falcons';
        Integer totalCandidates = 120;
        boolean isAdminCompleted = true;
        Decimal decValue = 27.01;
        Long longValue = 211156154165654L;
        Object obj = 'This is a string';
        Object obj2 = 10;
        Id idNumber = '0018c00002Ewf8CAAR';
       

        System.debug('Batch Name is ' +batchName);
        System.debug('Total number of Candidates ' + totalCandidates);
        System.debug('Completed the admin ? ' + isAdminCompleted);
        System.debug('Decimal Value is  ' + decValue);
        System.debug('LongValue is  ' + longValue);
        System.debug('Object 1 Value is  ' + obj);
        System.debug('Object 2 Value is  ' + obj2);
        System.debug('Id Value is  ' + idNumber);


    String batchDescription = batchName + ' is the best. ';

    System.debug(batchDescription);

    }
}