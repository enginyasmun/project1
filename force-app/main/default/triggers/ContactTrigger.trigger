trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('Old Values After Insert : ' + trigger.old);
    //     System.debug('New Values After Insert : ' + trigger.new);
    //     System.debug('Old Map After Insert : ' + trigger.oldMap);
    //     System.debug('New Map After Insert : ' + trigger.newMap);
    // }

    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('Old Values After Update : ' + trigger.old);
    //     System.debug('New Values After Update : ' + trigger.new);
    //     System.debug('Old Map After Update : ' + trigger.oldMap);
    //     System.debug('New Map After Update : ' + trigger.newMap);
    // }

    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('Old Values Before Insert : ' + trigger.old);
    //     System.debug('New Values Before Insert : ' + trigger.new);
    //     System.debug('Old Map Before Insert : ' + trigger.oldMap);
    //     System.debug('New Map Before Insert : ' + trigger.newMap);
    // }

    // if (trigger.isBefore && trigger.isUpdate) {
    //     System.debug('Old Values Before Update : ' + trigger.old);
    //     System.debug('New Values Before Update : ' + trigger.new);
    //     System.debug('Old Map Before Update : ' + trigger.oldMap);
    //     System.debug('New Map Before Update : ' + trigger.newMap);
    // }


    // if (trigger.isAfter && trigger.isupdate) {

    //     System.debug('This is After Update Trigger for Contact');

    //     for (id eachId : trigger.newMap.keySet()) {
    //         System.debug('Updated Record s ID is : '+eachId);
    //         String oldLN = trigger.oldMap.get(eachId).LastName;
    //         String newLN = trigger.newMap.get(eachId).LastName;

    //         if (oldLN != newLN) {
    //             System.debug('Lastname is changed !!! '+ '"'+oldLN +'"' +' is changed to ' +'"'+ newLN+'"');
    //         }
    //     }
    // }

    // if (trigger.isBefore && trigger.isUpdate) {
    //     for (contact newCon : trigger.new) {
    //         String oldLN = trigger.oldMap.get(newCon.id).LastName;
    //         if ( oldLN != newCon.LastName) {
    //             System.debug('Lastname is changed '+ '"' + trigger.oldMap.get(newCon.id).LastName + '"' +' is changed to '+ '"' +newCon.LastName );
    //         }
    //     }
    // }

    // //Last name değişirse/güncellenirse(Update) Description da 'Contactın name değişti'
    // // version 1
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(contact cn : trigger.new){
    //         if(cn.lastName != trigger.oldMap.get(cn.id).lastName){ //isimler değişmişse
    //             //Description da 'Contactın name değişti' yazacak
    //             cn.Description = 'Contactın name değişti';
    //         } else {
    //             cn.Description = '';
    //         }     
    //     }
    // }

    // // version 2
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(contact cn : trigger.new){
    //         contact oldCn = trigger.oldMap.get(cn.id);
    //         if(cn.lastName != oldCn.lastName){ //isimler değişmişse
    //             //Description da 'Contactın name değişti' yazacak
    //             cn.Description = 'Contactın name değişti';
    //         } else {
    //             cn.Description = '';
    //         }     
    //     }
    // }

       if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    // Set<Id> accountIds = new Set<Id>();
    // if(trigger.isAfter){
    //     if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
    //         for (contact c : trigger.new) {
    //             if(c.accountid != null){
    //                 accountIds.add(c.AccountId);
    //             }
    //         }
    //     }
    //     if(trigger.isUpdate || trigger.isdelete){
    //         for (contact c : trigger.old) {
    //             if(c.accountid != null){
    //                 accountIds.add(c.AccountId);
    //             }
    //         }
    //     }

    //     if(!accountIds.isEmpty()){
    //         List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
    //         from account where id in :accountIds];

    //         if(!accList.isEmpty()){
    //             list<account> updateAccList = new list<account>();
    //             for (account eachAcc : accList) {
    //                 List<contact> listContacts = eachAcc.contacts;
                    
    //                 Account acc = new account();
    //                 acc.id = eachAcc.id;
    //                 acc.number_of_contacts__c = listContacts.size();
    //                 updateAccList.add(acc);
    //             }
    //             if(!updateAccList.isEmpty()){
    //                 update updateAccList;
    //             }
    //         }
    //     }
    // }

}