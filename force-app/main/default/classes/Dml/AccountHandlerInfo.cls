public class AccountHandlerInfo {
    public static list<account> insertNewAccount(List<String> newList) {
     List<Account> accList = new List<account>();
     for (String eachRec : newList) {
            account newAcc = new Account();
            newAcc.name = eachRec;
            accList.add(newAcc);
     }
        insert accList;

        System.debug(accList);
        return accList;

    }


}