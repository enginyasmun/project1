// Map<String,Email_Domain__mdt> mapEd = Email_Domain__mdt.getAll();

// Set<String> forSet = mapEd.keyset();
// for(String eachId : forSet){
// System.debug(mapEd.get(eachId).domain__c);

// }

Map<String,Phone__mdt> mapPhone = phone__mdt.getAll();
Set<String> phoneKeys = mapPhone.keySet();
for(string eachPhone : phoneKeys){

System.debug(mapPhone.get(eachPhone).phone_number__c);

}

