public class OpportunitySchedulable implements Schedulable{
    public void execute(SchedulableContext Sc) {
        Database.executeBatch(new oppsBatch());
    }
}