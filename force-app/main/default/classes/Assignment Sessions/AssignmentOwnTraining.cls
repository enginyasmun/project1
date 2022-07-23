public  class AssignmentOwnTraining {
//    public static decimal sumOfAllClosedWonOpp() {
//        List<Opportunity> oppList = [select amount from Opportunity where StageName='Closed Won'];
    
//        decimal sum = 0;
//        for (Opportunity eachOpp : oppList) {
//             sum += eachOpp.Amount;
//             System.debug(sum);
            
//        }
// System.debug('Final Sum of All Closed Won Opportinities is : ' + sum);
//        return sum;
//    }

    // public static list<account> accountsWithOpps(string stname) {
    //     list<account> paraAccount = [select id, name from account where id in (select AccountId from Opportunity where StageName=:stname)];
    //     for (account eachAcc : paraAccount) {
    //         System.debug(eachAcc);
    //     }
        

    //     return paraAccount;
    // }


    // public static list<account> accountsWithContacts() {
    //     List<Account> accList = [select name, id from Account where id in(SELECT Accountid from Contact)];
    //     for (account eachAcc : accList) {
    //         System.debug(eachAcc);
    //     }
        

    //     return accList;
    // }

        // public static void createContactWithAccId(id accid) {
        //     Account acc = [select name, id from Account where id =:accid];

        //     Contact newCont = new Contact();
        //     newCont.accountid =accid;
        //     newCont.LastName = acc.Name;
        //     insert newCont;

        // }

        // public static void updateDesc() {
        //     List<Opportunity> oppList = [select name, description from Opportunity order by amount desc limit 10];
        //     for (opportunity eachOpp : oppList) {
        //         eachOpp.Description = 'This is one of the top 10 opportunity. Please work on this properly';
        //         System.debug(eachOpp);
        //     }
            
        // }

        //  public static list<opportunity> nNumberOppForAcc(integer n, id accid) {
        //      account accToBeUsed = [select name, AnnualRevenue from account where id =:accid];
        //      List<Opportunity> nOppList = new List<Opportunity>();

        //      for (Integer i = 0; i <=n; i++) {
        //          Opportunity op = new Opportunity();
        //          op.CloseDate =date.today().addYears(3);
        //          op.StageName='Prospecting';
        //          op.Amount= accToBeUsed.AnnualRevenue/n;
        //          op.Name=accToBeUsed.Name;
        //          nOppList.add(op);
        //          System.debug(op.Name);
        //          System.debug(op.StageName);
        //          System.debug(op.Amount);
                 
        //      }
        //      return nOppList;

        //  }   

        //  public static void noContactAcc() {
        //      List<Account> noConAcc = [select name,id from Account where id not in(SELECT AccountId from Contact )];
        //      for (account eachAccount : noConAcc) {
        //         Contact newCon = new Contact();
        //         newCon.lastName = eachAccount.Name;
                
        //         System.debug(eachAccount);
        //         System.debug(newCon);
        //      }
             
        //  }

         public static void oppDelete() {
             List<Opportunity> oppList = [select name from Opportunity where Amount < 20000 and StageName='Closed Lost'];
             System.debug(oppList);
             delete oppList;
         }



}