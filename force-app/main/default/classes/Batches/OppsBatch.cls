public  class OppsBatch implements Database.Batchable<SObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bx){
            Database.QueryLocator q1 = Database.getQueryLocator([SELECT id, name, stageName       FROM Opportunity]);

            System.debug(q1);
            return q1;
            
        }

    public void execute(Database.BatchableContext bx, List<Opportunity> opps){
        List<Opportunity> delOpps = new List<Opportunity>();
        for (opportunity eachOpp : opps) {
            if (eachOpp.stageName == 'Closed Lost') {
                delOpps.add(eachOpp);
            }
        }

       
        if(!delOpps.isEmpty()){
        
            delete delOpps;

    }
    }

    public void finish(Database.BatchableContext bx){
        System.debug('Updated Closed Lost Opportunites have been deleted');
    
    }
}