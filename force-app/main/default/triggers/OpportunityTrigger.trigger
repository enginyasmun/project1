trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update){
    if (trigger.isAfter && trigger.isUpdate) {
    OpportunityTriggerHandler.updateStageName(trigger.new, trigger.oldmap);
    }


    if (trigger.isAfter && trigger.isUpdate) {
        OppsBatch opp1 = new OppsBatch();
        Database.executeBatch(opp1);
        }
}