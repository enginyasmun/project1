// trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
//    if (trigger.isBefore&&trigger.isUpdate) {
//     System.debug(' before Trigger Called');
//     if (trigger.isUpdate) {
//         System.debug(' update Trigger Called');
//     }
//    }
//    if (trigger.isAfter&& trigger.isInsert) {
//     System.debug(' After Trigger Called');
//     System.debug('New Record ' + trigger.new);
//    }
//     System.debug('---------------------------');

// if (Trigger.isInsert && Trigger.isBefore) {
//     system.debug('---------isInsert && isBefore START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isInsert && isBefore END------------');
// }
// if (Trigger.isInsert && Trigger.isAfter) {
//     system.debug('---------isInsert && isAfter START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isInsert && isAfter END------------');
// }
// if (Trigger.isUpdate && Trigger.isBefore) {
//     system.debug('---------isUpdate && isBefore START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isUpdate && isBefore END------------');
// }
// if (Trigger.isUpdate && Trigger.isAfter) {
//     system.debug('---------isUpdate && isAfter START------------');
//     system.debug('trigger.isBefore = ' + trigger.isBefore);
//     system.debug('trigger.isAfter = ' + trigger.isAfter);
//     system.debug('trigger.isInsert = ' + trigger.isInsert);
//     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
//     system.debug('---------isUpdate && isAfter END------------');
// }

// // 1 Account ve buna bağlı 7 tane contact create edelim..
// account acc1 = new account();
// acc1.name = 'account trigger test';
// insert acc1;
// list<Contact> conList = new list<Contact>();
// for (Integer i = 1; i <= 7; i++) {
//     contact cn = new contact();
//     cn.lastName = 'Contact ' + i;
//     cn.accountId = acc1.id; // contactı accounta bağladım..
//     conList.add(cn);
// }
// if (!conList.isEmpty()) {
//     insert conList;
// }
   

// if (trigger.isInsert && trigger.isAfter) {
//         //trigger.new -> record(s) which were responsible for firing the trigger
//         system.debug('trigger.new after insert = ' + trigger.new);

//         list<account> newAccounts = trigger.new;

//         system.debug('total account inserted = ' + newaccounts.size());
//         for (account acc : newAccounts) {
//             system.debug('accout id is = ' + acc.Id + ', account name is: ' + acc.Name);
//         }
//     }

        // if (trigger.isInsert && trigger.isBefore) {
                       
        //      system.debug('trigger.new before insert = ' + trigger.new);

        //      for(Account acc:trigger.new){
        //          System.debug(acc.CreatedDate);

        //      }
        // }         
        
        // if (trigger.isInsert && trigger.isAfter) {
              
        //     system.debug('trigger.new after insert = ' + trigger.new);

        //     for(Account acc:trigger.new){
        //          System.debug(acc.CreatedDate);

        //      }
        // }



// }

// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.new before update = ' + trigger.new);
    //     list<account> newAccounts = trigger.new;
    //     for (account acc :  newAccounts) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after update = ' + trigger.new);
    //     for (account acc :  trigger.new) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }

    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.new before insert = ' + trigger.new);
    // }
    // if (trigger.isInsert && trigger.isAfter) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after insert = ' + trigger.new);
    // }


    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/


    /*
    system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
    */

    // if (trigger.isBefore && trigger.isupdate) {
    //     for (account acc : trigger.old) {
    //         System.debug('Old Phone Number before update '+acc.phone);
    //     }
    // }
    // if (trigger.isBefore && trigger.isupdate) {
    //     for (account acc : trigger.new) {
    //         System.debug('New Phone Number before update '+acc.phone);
    //     }
    // }

    // if (trigger.isAfter && trigger.isupdate) {
    //     for (account acc : trigger.old) {
    //         System.debug('Old Phone Number after update '+acc.phone);
    //     }
    // }
    // if (trigger.isAfter && trigger.isupdate) {
    //     for (account acc : trigger.new) {
    //         System.debug('New Phone Number after update '+acc.phone);
    //     }
    // }

    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug(trigger.old);
    // }

    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug(trigger.old);
    // }
        // if (trigger.isAfter) {
            
        //     if (trigger.isUpdate) {
        //         Set<Id>idSet = new Set<Id>();
        //         for (account oldAcc : trigger.old) {
        //             id eachId= oldAcc.Id;
        //             idSet.add(eachId);
        //             system.debug('Old Acc Id = ' + oldAcc.Id + ', Old Accname = '+ oldAcc.Name);
                    
        //         }
        //         System.debug(idSet);
        //         Set<Id>idSetNew = new Set<Id>();
        //         for (account newAcc : trigger.new) {
        //             id eachId= newAcc.Id;
        //             idSetNew.add(eachId);
        //             System.debug('New Acc Id = ' + newAcc.Id + ', Old Accname = '+ newAcc.Name);
        //         }
        //         System.debug(idSetNew);
        //         Boolean setCheck = idSet.equals(idSetNew);
        //         System.debug('Both IDs are same = '+ setCheck);
        //     }
            
        
        // }

    // Map<Id,Account> trgNewMap = trigger.newMap;
    // Map<Id,Account> trgOldMap = trigger.oldMap;

    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('======= BEFORE INSERT ========');
    //     System.debug('Before insert OLD MAP ' + trgOldMap);
    //     System.debug('Before insert NEW MAP ' + trgNewMap);
    // }

    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('======= AFTER INSERT ========');
    //     System.debug('After insert OLD MAP ' + trgOldMap);
    //     System.debug('After insert NEW MAP ' + trgNewMap);
    // }

    // if (trigger.isBefore && trigger.isUpdate) {
    //     System.debug('======= BEFORE UPDATE ========');
    //     System.debug('Before update OLD MAP ' + trgOldMap);
    //     System.debug('Before update NEW MAP ' + trgNewMap);
    //     System.debug('Before update new data ' +trigger.new);
    // }

    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('======= AFTER UPDATE ========');
    //     System.debug('After update OLD MAP ' + trgOldMap);
    //     System.debug('After update NEW MAP ' + trgNewMap);
    // }


    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('This is After Update Trigger of Account Object');
    //     Map<Id,Account> accOldMap = trigger.oldMap;
    //     Map<Id,Account> accNewMap = trigger.newMap;

    //     for (Id eachId : accNewMap.keySet()) {
    //         System.debug('Acc Id is : ' +eachId);

    //         account oldAcc = accOldMap.get(eachId);
    //         System.debug('Old Acc name is : ' +oldAcc.Name);

    //         account newAcc = accNewMap.get(eachId);
    //         System.debug('New Acc name is : ' +newAcc.Name);
    //     }
    // }      

// }

// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {


    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     map<id, account> newAccountMap = trigger.newmap;
    //     map<id, account> oldAccountMap = trigger.oldmap;
    //     for(account eachAcc: trigger.new){
    //         boolean updateDesc = false;
    //         if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
    //             updateDesc = true;
    //         }
    //         if(trigger.isUpdate){
    //             Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
    //             string oldAccountActive = oldAccount.Active__c;
    //             //check if active is updated
    //             //active is changed to 'Yes'
    //             if(eachAcc.Active__c == 'Yes' &&
    //                 oldAccountActive != 'Yes'
    //             ) {
    //                 updateDesc = true;
    //             }
    //         }
    //         if(updateDesc){
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //         }
    //     }
    // }
    
    /*if(trigger.isAfter && trigger.isUpdate){

        map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

        set<id> setOfAccIds = newAccMap.keySet();
        integer countWebsiteUpdated = 0;
        for(ID eachId : setOfAccIds){
            //get old account
            account oldAcc = oldAccMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            //get new account
            account newAcc = newAccMap.get(eachId);
            string newWebsite = newAcc.Website;

            if(oldWebsite != newWebsite){
                //website is CHANGED
                system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
                countWebsiteUpdated++;
            }

        }
        system.debug('# of account website updaetd = ' + countWebsiteUpdated);
    }
    */
    
    /*if(trigger.isAfter && trigger.isUpdate){
        map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

        set<id> setOfAccIds = newAccMap.keySet();
        
        for(ID eachId: setOfAccIds){
            system.debug('==============');
            system.debug('each id = ' + eachId);

            Account newAccount = newAccmap.get(eachId);
            system.debug('New account name = ' + newAccount.Name);
            
            Account oldAccount = oldAccmap.get(eachId);
            system.debug('Old account name = ' + oldAccount.Name);
        }
    }

*/


    /*
    map<id, account> trgNewMap = trigger.newMap;
    map<id, account> trgOldMap = trigger.oldMap;

    if(trigger.isBefore &&  trigger.isInsert){
        system.debug('=======BEFORE INSERT=========');
        system.debug('Before insert OLD MAP = ' + trgOldMap);
        system.debug('Before insert NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isInsert){
        system.debug('=======AFTER INSERT=========');
        system.debug('AFter insert OLD MAP = ' + trgOldMap);
        system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    }

    if(trigger.isBefore &&  trigger.isUpdate){
        system.debug('=======BEFORE UPDATE=========');
        system.debug('Before update OLD MAP = ' + trgOldMap);
        system.debug('Before update NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isUpdate){
        system.debug('=======AFTER UPDATE=========');
        system.debug('AFter update OLD MAP = ' + trgOldMap);
        system.debug('AFter update NEW MAP = ' + trgNEWMap);
    }



/*
    if(trigger.isAfter){
        if(trigger.isUpdate){
            List<account> oldAccounts = trigger.old;
            List<account> newAccounts = trigger.new;

            for(account oldAcc: oldaccounts){
                system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
            }
            for(account newAcc: newaccounts){
                system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
            }
        }
    }
    */


      /*
    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.old before insert = ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger.old after insert = ' + trigger.old);
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.old before update = ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('trigger.old after update = ' + trigger.old);
    }
    
     /*
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.new before update = ' + trigger.new);
        list<account> newAccounts = trigger.new;
        for (account acc :  newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }
    if (trigger.isAfter && trigger.isUpdate) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after update = ' + trigger.new);
        for (account acc :  trigger.new) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }

    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    }
    */


    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/


    /*
    system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
    */


    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('After Update Trigger of Account Object');
        
    //     integer counterWS = 1;
    //     for (id eachID : trigger.newMap.keySet()) {
    //         String oldWS = trigger.oldMap.get(eachId).Website;
    //         account newWS = trigger.newMap.get(eachID);
    //         if (oldWs != newWS.Website) {
    //             System.debug('Website has been updated and old Website is : '+ oldWS+' and new Website is : '+newWS.Website+' '+counterWS);
    //             counterWS ++;
    //         }
    //     }
    //         System.debug('Number of Website updates : '+ (counterWS-1));
    // }

    // if (Trigger.isInsert && Trigger.isBefore) {
    //     system.debug('---------isInsert && isBefore START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isInsert && isBefore END------------');
    //     System.debug('                                    ');
    // }
    // if (Trigger.isInsert && Trigger.isAfter) {
    //     System.debug('                                    ');
    //     system.debug('---------isInsert && isAfter START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isInsert && isAfter END------------');
    //     System.debug('                                    ');
    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     System.debug('                                    ');
    //     system.debug('---------isUpdate && isBefore START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isUpdate && isBefore END------------');
    //     System.debug('                                    ');
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     System.debug('                                    ');
    //     system.debug('---------isUpdate && isAfter START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isUpdate && isAfter END------------');
    //     System.debug('                                    ');
    // }

    // if (Trigger.isInsert && Trigger.isBefore) {
    //     for(account ac : trigger.new){
    //         if(ac.Active__c == 'Yes'){
    //             ac.Description = 'ACTİVE';
    //         } else {
    //             ac.Description = '';
    //         }
    //     }
    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     for(account ac : trigger.new){
    //         if(ac.Active__c == 'Yes' && trigger.oldMap.get(ac.id).Active__c != 'Yes'){
    //             ac.Description = 'ACTİVE';
    //         } else {
    //             ac.Description = '';
    //         }
    //     }
    // }

    //         //bir account update edildiginde annual revenue  degismisse  description fielde aradaki farki yazsin.su kadar artti veya su kadar azaldi
    //     if(trigger.isBefore&& trigger.isUpdate){
    //         for (account ac : trigger.new) {
    //             if(trigger.newMap.get(ac.id).AnnualRevenue!=trigger.oldMap.get(ac.id).AnnualRevenue!= null){
    //                 if(trigger.newMap.get(ac.id).AnnualRevenue>trigger.oldMap.get(ac.id).AnnualRevenue ){
    // Decimal fark= ac.AnnualRevenue-trigger.oldMap.get(ac.id).AnnualRevenue ;
    // ac.Description= fark + 'Annual revenue artti';
    //                 }else {
    //                     decimal fark=trigger.oldMap.get(ac.id).AnnualRevenue- ac.AnnualRevenue;
    //                     ac.Description= fark+ 'Annual revenue azaldi';
    //                 }
    //             }
    //         }
    //         }

            // if (trigger.isAfter && trigger.isUpdate) {
            //     Map<Id,Account> oldMap = trigger.oldMap;
            //     Map<Id,Account> newMap = trigger.newMap;

            //     Set<Id> idSet = newMap.keySet();
            //     integer webCounter = 0;
            //     for (id eachid : idSet) {
            //         string oldWeb = oldMap.get(eachId).Website;
            //         String newWeb = newMap.get(eachId).Website;
            //         if (oldWeb != newWeb) {
            //             System.debug('Website has been updated for '+'" '+ newMap.get(eachId).name +' "'+ ' and new Website is '+ newWeb);
            //             webCounter++;
            //         }

                    

            //     }
            //     System.debug('Number of Websites has been updated is : ' +webCounter );
            // }

            // if ((trigger.isBefore && trigger.isInsert) || (trigger.isBefore && trigger.isUpdate)) {
            //     for (account eachAcc : trigger.new) {
            //         if (eachAcc.active__c == 'Yes') {
            //             eachAcc.Description ='Account is active. Enjoy!!!';
            //         }else {
            //             eachAcc.Description='';
            //         }
            //     }
                
            // }

            // if (trigger.isBefore) {
            //     System.debug('Before insert/Update Trigger on Account Object');
            //     AccountTriggerHandler.updateAccountDescription(Trigger.new, Trigger.Old, Trigger.newMap, Trigger.oldMap);
            // }


            // trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
                // AccountTriggerHandler.accPhoneUpdate(trigger.new, trigger.old, trigger.oldMap, trigger.newMap);
        // }

        trigger AccountTrigger on Account (After Insert, After Update) {
            if(Trigger.isAfter){
                if(Trigger.isUpdate || Trigger.isInsert){
                    AccountTriggerHandler.getKanyeQuote(Trigger.New, Trigger.oldMap);
                }
            }
        }