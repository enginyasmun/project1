public  class AccountTriggerHandler {
    // public static void updateAccountDescription(List<Account> accTriggerNew,
    //                                 List<Account> accTriggerOld, 
    //                                 Map<Id,account> accTriggerNewMap, 
    //                                 Map<Id,Account> accTriggerOldMap) {

    //     if ((trigger.isBefore && trigger.isInsert) || (trigger.isBefore && trigger.isUpdate)) {
    //             for (Account eachAcc : acctriggernew) {
    //                 if (eachAcc.active__c == 'Yes') {
    //                     eachAcc.Description ='Account is active. Enjoy!!!';
    //                 }else {
    //                     eachAcc.Description='';
    //                 }
    //             }
    //         }

    // }

        // QUESTION 1: Week 7

    // public static void createContact(List<Account> triggernew){
    //         list<contact> newContact = new list<contact>();
    //         for(account eachAcc: triggernew){
    //             for (Integer i = 0; i < 5; i++) {
    //                 contact eachContact = new contact();
    //             eachContact.LastName = eachAcc.name + i;
    //             eachContact.phone = eachAcc.phone + i;
    //             newContact.add(eachContact);
    //             eachContact.accountid = eachAcc.Id;
    //             }
    //         }
    //         insert newContact;
    //     }

    //     // QUESTION 2:

    // public static void newOpp(list<account> triggernew, list<account> triggerold, map<id, account> newmap, map<id, account> oldmap){
    //     list<account> acc = triggernew;
    //     List<Opportunity> relatedOpp = [select name, id, stagename from Opportunity where AccountId in :acc and stagename != 'closed won'];
    //     System.debug(relatedOpp);
    //     List<Opportunity> updatedOpp = new list<Opportunity>();
    //     for(Opportunity eachOpp : relatedOpp){
    //         eachOpp.stagename = 'closed lost';
    //         updatedOpp.add(eachOpp);
    //     }
    //     update updatedOpp;
    // }

     // QUESTION 3:
    // public static void updateAcc(list<account> triggernew, list<account> triggerold){
    //     list<account> acc = [select id, name, phone from account];
    //     list<account> accOldPhone = triggerold;
    //     list<account> accNewPhone = triggernew;
    //     for(account eachAcc : accOldPhone){
    //         for(account eachAcc1 : accNewPhone){
    //             if(eachAcc.phone != eachAcc1.Phone){
    //                 System.debug('old phone: ' + eachAcc.phone + ' ' + 'New Phone: ' + eachAcc1.Phone);
    //                 list<contact> phone = [select id, name, phone, otherphone from contact where accountid in :accnewphone];
    //                 list<contact> phone2 = new list<contact>();
    //                 for(contact eachContact : phone){
    //                     eachContact.phone = eachAcc1.Phone;
    //                     eachContact.OtherPhone = eachAcc.Phone;
    //                     phone2.add(eachContact);
    //                 }
    //                 update phone2;
    //             }
    //         }
    //     }
    // }

    // Question 3 Alternate 

    // public static void accPhoneUpdate(List<account> accTriggerNew , 
    //                                     List<Account> accTriggerOld, 
    //                                     Map<Id,Account> accTriggerOldMap, 
    //                                     Map<Id,Account> accTriggerNewMap)
    // {

    //     Set<Id> idSet = new Set<Id>();
    //     for (account eachAcc : accTriggerNew) {
    //         Account oldAcc = accTriggerOldMap.get(eachacc.id);
    //         if (eachAcc.phone != oldAcc.Phone) {
    //             idSet.add(eachAcc.id);
    //         }
    //     }

    //     list<Contact> cntList = [select otherphone, mobilephone, accountId from contact where AccountId in :idSet];
    //     if (!cntList.isEmpty()) {
    //         for (contact eachCont : cntList) {
    //             eachCont.MobilePhone = accTriggerNewMap.get(eachCont.accountId).Phone;
    //             eachCont.OtherPhone = accTriggerOldMap.get(eachCont.accountId).phone;

    //         }

    //         update cntList;
    //     }

        
    // }

    public static void getKanyeQuote(List<Account> newList, Map<Id,Account> oldMap){
        //In this method we will identify all the account Ids 
        //for which quote needs to be updated
        Set<Id> accIdsSet = new Set<Id>();
        if(oldMap != null){
            //This will run when the record is updated
            for(Account acc : newList){
                Account oldRec = oldMap.get(acc.Id);
                if(oldRec.GetKanyeQuote__c != acc.GetKanyeQuote__c && acc.GetKanyeQuote__c){
                    accIdsSet.add(acc.Id);
                }
            }
        } else {
            //This will run when new record is created
            for(Account acc : newList){
                if(acc.GetKanyeQuote__c){
                    accIdsSet.add(acc.Id);
                }
            }
        }
        if(!accIdsSet.isEmpty()){
            updateKanyeQuote(accIdsSet);
        }
    }
    @future(callout=true)
    public static void updateKanyeQuote(Set<Id> accIdsSet){
        String quote = QuotesCallout.makeGetCallout();
        List<Account> accList = new List<Account>();
        for(Id accId : accIdsSet){
            Account acc = new Account();
            acc.Id = accId;
            acc.Kanye_Quote__c = quote;
            acc.GetKanyeQuote__c = false;
            accList.add(acc);
        }
        if(!accList.isEmpty()){
            Update accList;
        }
    }


}