trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
    // System.debug('We are in Triggers');

    // if (trigger.isAfter) {
    //     System.debug('We are in After Triggers');
    // }

    // if (trigger.isBefore) {
    //     System.debug('We are in Before Triggers');
    // }


    // if (trigger.isBefore && trigger.isUpdate) {
    //     System.debug('We are in the before-Update triggers');
    // }


    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('We are in the before-Insert triggers');
    // }
    

    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('We are in the after-Update triggers');
    // }

    
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('We are in the after-Insert triggers');
    // }


    // if (trigger.isAfter) {
    //    list<case> caseList = [select casenumber, id, createddate from case];
    //    for (case eachCase : caseList) {
    //        System.debug('Case # ' + eachCase.casenumber + ' was created with id '+ eachCase.id +' on ' +eachCase.CreatedDate);
           
    //    }
    // }

    if (trigger.isAfter) {
        for (case eachCase : trigger.new) {
            System.debug('Case # ' + eachCase.casenumber + ' was created with id '+ eachCase.id +' on ' +eachCase.CreatedDate);
        }
    }
    
}