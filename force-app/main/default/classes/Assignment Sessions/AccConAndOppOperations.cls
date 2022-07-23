public class AccConAndOppOperations {
    // public static void fetchAllAccount() {
    //     list<account> allAccList = [SELECT name, AnnualRevenue, Type, AccountSource FROM Account];
    //     System.debug(allAccList);
    // }
    // public static void fetchAllAccount2(string ls, string st) {
    //     List<Opportunity> listOpp = [select name from Opportunity where LeadSource= : ls and StageName =: st];
    //     System.debug(listOpp);
    // }
    


// public static void annRev (string name, decimal rev, string type) {
//     Account Acc = new Account();
//     Acc.Name = name;
//     Acc.AnnualRevenue = rev;
//     Acc.Type = type;
//     if (name != null) {
//         insert Acc;
//         System.debug(Acc);
//     } else {
//         System.debug('Account without name can not be created');
//     }
// }

    // public static decimal allClosedWonSum() {
    //     List<Opportunity> listClosedWon = new List<Opportunity>();
    //     listClosedWon = [select amount FROM Opportunity where StageName = 'Closed Won'];
    //     decimal sum = 0;
    //     for (Opportunity eachOpp : listClosedWon) {
    //         sum = sum + eachOpp.Amount;
    //         System.debug(sum);
    //     }
    //     System.debug('The Sum of all Closed won Opportunities is : ' +sum);
    //    return sum;

    // }

    // public static list<account> listAccWithOpp(String oppstname) {
    //     List<Account> listOfAllAccount = [select name, id  from account where id in (select accountid from Opportunity where stageName =: oppstname) ];
    
    //     for (account eachAccount : listOfAllAccount) {
    //         System.debug(eachAccount);
    //     }

    //     return listofallaccount;
    // }

    // public static list<account> AccountList(string stage){
    //     //Fetch Opportunities for a particular stageName
    //     List<Opportunity> oppList = [select AccountId from Opportunity Where StageName =:stage];
    //     Set<Id> accIdsSet = new Set<Id>();//Place holder for keeping unique account Ids
    //     for(Opportunity opp : oppList){
    //         accIdsSet.add(opp.AccountId);
    //     }
    //     //Fetch account records based on the unique account Ids
    //     list<account> Accounts = [select name from Account where Id =: accIdsSet];
    //     return Accounts;
    // }


    // public static list<account> AccountList(string stage){
    //     list<account> Accounts = [select name, (select name from Opportunities where StageName =: stage) from Account ];

    //     List<Opportunity> oppList = new List<Opportunity>();

    //     for (account eachAcc : Accounts) {
    //         oppList = eachAcc.Opportunities;
    //         System.debug(oppList);
            // 
    //     }
    //     return Accounts;
    // }

    
    // public static list<account> listAccWithCont() {
    //     list<account> listOfAccWithCont = [select name, id from Account where id in (select accountid from Contact)];
    //     for (account eachAcc : listOfAccWithCont) {

    //          System.debug(eachAcc);
    //     }

       

    //     return listOfAccWithCont;
    // }

    //     public static void contactCreation(id accid) {
    //     account acc = [select name from Account where id =: accid];
    //     contact c = new contact();
    //     c.lastname = acc.name;
    //     c.Accountid = acc.Id;
    //     insert c;
    // }
    
    public static void updateOpp() {
        List<Opportunity> listOpp = [select name, id, description from Opportunity order by Amount DESC limit 10];
        for(Opportunity opp: listOpp){
            opp.Description = 'This is one of the top 10 opportunity. Please work on this properly';
            system.debug(opp);
        }
        update listOpp;
    }

    public static list<opportunity> OppsAccRelatedCreation(integer n, id accid) {
        List<Opportunity> listOpp2 = new List<Opportunity>();account amo = [select AnnualRevenue from account where id =:accid];
        if (n>0) {
            for (Integer i = 0; i < n; i++) {
            Opportunity op1 = new Opportunity(CloseDate = Date.today().addYears(3));
            op1.StageName = 'Prospecting';
            op1.Amount =amo.AnnualRevenue/n;
            listOpp2.add(op1);
            System.debug(listOpp2);

        }
        
        }else {
            System.debug('Please tell us how many opportunities needs to be created');
        }
        
        return listOpp2;
    }

}