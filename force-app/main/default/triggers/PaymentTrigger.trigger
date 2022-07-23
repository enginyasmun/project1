// trigger PaymentTrigger on Payment__c (before insert, before update, before delete, after insert, after update, after delete) {

   
   
//     if (trigger.isAfter) {

//         if (trigger.isInsert) {
//            Set<Id> cusId = new Set<Id>();
//            if (trigger.new.size() > 0) {
//                for (payment__c eachPay : trigger.new) {
//                    if (eachPay.mode__c == 'online') {
//                        System.debug(eachpay.Customer__c);
//                        cusId.add(eachPay.customers__c);
//                    }
//                }  
//            }

//            List<Customer__c> updateList = [ SELECT id, name, number_of_online_payments__c, (SELECT id, name from payments__r WHERE mode__c = 'Online') from Customer__c where id in :cusId];
//            list<customer__c> toUpdate = new list<customer__c>();
//            for (customer__c eachCus : updateList) {
//               eachCus.number_of_online_payments__c = eachCus.payments__r.size();
//               toUpdate.add(eachCus);
//            }
// update toUpdate;

//         }
        
//     }
// }

trigger PaymentTrigger on Payment__c (before insert, before update, before delete, after insert, after update, after delete) {
    if (trigger.isAfter) {
        if (trigger.isInsert) {
           Set<Id> cusId = new Set<Id>();
           if (trigger.new.size() > 0) {
               for (payment__c eachPay : trigger.new) {
                   if (eachPay.mode__c == 'online') {
                       System.debug(eachPay.Customers__c);    // this gives us id for customer chosen for payment
                       cusId.add(eachPay.Customers__c);
                   }
               }
           }
           List<Customer__c> updateList = [ SELECT id, name, number_of_online_payments__c, (SELECT id, name from payments__r WHERE mode__c = 'Online') from Customer__c where id in :cusId];
           list<customer__c> toUpdate = new list<customer__c>();
           for (customer__c eachCus : updateList) {
              eachCus.number_of_online_payments__c = eachCus.payments__r.size();
              toUpdate.add(eachCus);
           }
update toUpdate;
        }
    }
}