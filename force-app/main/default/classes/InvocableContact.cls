public with sharing class InvocableContact {
    @invocableMethod
    public static void setDataGo(list<Id> contactIds) {
        ContactCallout.sendDataGo(contactIds);
    }
}