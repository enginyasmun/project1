public  class CustomerTriggerHandler {
    
    public static void delCustomers(List<Customer__c> cusTriggerOld) {


Set<Id> activeList = new Set<Id>();
Set<Id> inActiveList = new Set<Id>();

for (customer__C eachCus : cusTriggerOld) {
    if (eachCus.active__c == true) {
        activeList.add(eachCus.id);
        
    }else {
        inActiveList.add(eachCus.id);
    }   
}

if (!activeList.isEmpty()) {
    list<payment__c> payList = [SELECT id from payment__c 
                                WHERE customers__c in:activeList];

if (!payList.isEmpty()) {
    delete payList;
    
}
}

if (!inactiveList.isEmpty()) {
    list<payment__c> payList2 = [SELECT id, mode__c from payment__c 
                                WHERE customers__c in:inActiveList 
                                AND mode__c = 'Online'];

if (!payList2.isEmpty()) {
    delete payList2;
    
}
}


}
}