public class AccountQueueableExample implements Queueable {
   public List<Account> accList;

   public AccountQueueableExample(List<Account> accList){
       this.accList = accList;
   }

   public void execute (QueueableContext qc ){
       for (account a : accList) {
           a.Name = a.Name+ '--SI';
       }
       update accList;
   }
}