List<Account> newList = [SELECT id, name from Account];
String jsList = JSON.serialize(newList);
System.debug(jsList);
