public class AccountManager {
   public static void insertNewDesc() {
       List<Account> newList = new List<Account>();
       List<Account> listToBeUpdated = [select id, name, description, createddate from Account where CreatedDate =TODAY];
       for (account acc : listToBeUpdated) {
           acc.Description = acc.Name +' '+acc.CreatedDate;
           newList.add(acc);
       }
       update newList;
   }
}