List<Account> assignList2 = [SELECT id, name, AnnualRevenue, type, (SELECT id, name FROM contacts)from Account WHERE name = 'United Oil & Gas Corp.--SI--SI--SI'];
System.debug(assignList2);
String jSonType2 = JSON.serialize(assignList2);
System.debug(jSonType2);

// omers way

List<Contact> list3 = [select id, LastName, Account.id, Account.AnnualRevenue, Account.Type from contact where Account.name = 'United Oil & Gas Corp.--SI--SI--SI'];
System.debug(list3);
string js = JSON.serialize(list3);
system.debug(js);