Map<String,Country_Code__c> mcs = country_Code__c.getAll();
System.debug('Country Codes are --> ' + mcs);
Set<String> keys = mcs.keyset();
for (String eachCode : keys){
    System.debug('Country Name is ' + eachCode +' and the code is '  + mcs.get(eachCode).country_Code__c);
}