public  class ContactTriggerHandler {
    // public static void setContactPhone (List<Contact> triggernew) 
                                        
    // {
    //     List<Account> acct;
   
    //     for(Contact c:triggernew){
    //         if(c.OtherPhone!=null)
    //             break;
    //         else{
    //             acct=[Select Id,Phone from Account where Id = :c.AccountId];
    //             for(Account a1:acct){
    //                 c.OtherPhone=a1.Phone;
    //             }
    //         }
    //     }  
    // }


 
   public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
                                         Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
            //.AddError is allowed in Trigger.NEW.
            //it is not allowed in trigger.old
            for(contact eachContact: cntTriggerNew){
                contact oldContact = cntTriggerOldMap.get(eachContact.id);
                if(oldContact.LeadSource == 'Partner Referral'){
                    eachContact.addError('Cannot update contact where lead source is Partner Referral');
                }
            }

   }

   public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        for(contact eachContact: cntTriggerNew){
                contact oldContact = cntTriggerOldMap.get(eachContact.id);
                if(oldContact.LeadSource != eachContact.LeadSource){
                    eachContact.LeadSource.addError(System.label.contactValidation2);
                }
            }
    }
}