List<Account> assignList1 = [SELECT id, name, AnnualRevenue, Type, createdDate from account ORDER BY createddate limit 5 ];
String jSonType = JSON.serialize(assignList1);
System.debug(jSonType);