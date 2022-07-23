public class OpportunityTriggerHandler {
    // public static void updateOpportunity( List<Opportunity> newTrigger,             List<Opportunity> oldTrigger, map<id,opportunity> newtriggermap, map<id,opportunity> oldtriggermap)  {
    //     Set<Id> idset = newtriggermap.keyset();
    //     // System.debug(idset);
    //     for (id eachoppid : idset) {
    // System.debug(newTriggerMap.get(eachOppid).Amount + ' ' + oldtriggermap.get(eachoppId).amount);
    // System.debug(newTriggerMap.get(eachOppid).CloseDate + ' ' + oldtriggermap.get(eachoppId).CloseDate);
    //     }
    // }

    // public static void updateOpportunity( List<Opportunity> triggernew, map<id,opportunity> oldtriggermap)  {
    //     for (opportunity eachopp : triggernew) {
    // System.debug(eachopp.Amount +''+ oldtriggermap.get(eachopp.Id).amount);
    // System.debug(eachopp.CloseDate + '' + oldtriggermap.get(eachopp.Id).CloseDate);
    //     }
    // }

    public static void updateStageName(List<Opportunity> triggernew, map<id,opportunity> oldtriggermap) {
        for (opportunity eachOpp : triggernew) {
            Opportunity oldOppVal = oldtriggermap.get(eachOpp.id);
            if (oldOppVal.StageName != eachOpp.StageName) {
                System.debug(eachOpp.Description + ' '+ eachOpp.Name);
            }
            
        }
        
    }
}