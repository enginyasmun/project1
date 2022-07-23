List<Account> assignList3 = [SELECT id, name, AnnualRevenue, type, (SELECT id, stageName, amount from Opportunities) from Account WHERE name = 'United Oil & Gas Corp.--SI--SI--SI'];
System.debug(assignList3);
String jsonList3 = JSON.serialize(assignList3);
System.debug(jsonList3);