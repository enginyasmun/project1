public with sharing class JsonFormatter {
    public List<Account> accList; //{get;set;}
    public List<Contact> conList; // {get;set;}

public static void RetriveData() {
   JsonFormatter newFormat = new JsonFormatter();

   List<Account> accsList = [SELECT id, name from Account];
   List<Contact> consList = [SELECT id, name from Contact];

   newFormat.accList = accsList;
   newFormat.conList = consList;

   string jsList = JSON.serialize(newFormat);
   System.debug(jsList);
}

}