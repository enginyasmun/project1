AccountSchedulable asche = new AccountSchedulable();
String cron = '0 0 13 * * ? ';
id idsche = System.schedule('Schedule account job via cron check id', cron, asche);
System.debug(idsche);