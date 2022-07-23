try{
    Account ac = new Account();
    ac.Name = ' Exception test';
insert ac;}
catch (DmlException Dex){
    System.debug('DML went wrong ');
}

catch (Exception Ex){
    System.debug('Something went wrong');
}

System.debug('Apex is SIMPLE');