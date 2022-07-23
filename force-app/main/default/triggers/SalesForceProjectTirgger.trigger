trigger SalesForceProjectTirgger on Salesforce_Project__c (before insert, after insert, before update, after update) {


    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.OldMap, Trigger.NewMap);
    }
}