public class OppBatch2 implements Database.Batchable<SObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bx){
        Database.QueryLocator q2 = Database.getQueryLocator([SELECT id, name, stageName, ownerId, CloseDate  FROM Opportunity WHERE (StageName !='Closed Won' AND StageName != 'Closed Lost') AND LastModifiedDate >= TODAY ]);
        System.debug(q2);
        return q2;
    }

    public void execute (Database.BatchableContext bx, List<Opportunity> opps){
        List<Task> uptasks = new List<Task>();
    
        for (opportunity eachOpp : opps) {
            task task2 = new task();
                task2.subject = 'Other';
                task2.Description = 'Reminder – Please act on the Opportunity';
                task2.Status = 'In Progress';
                task2.WhatId = eachOpp.Id;
                task2.OwnerId = eachOpp.OwnerId;
                if (eachOpp.CloseDate == date.today()) {
                    task2.ActivityDate = date.today();
                }else {
                    task2.ActivityDate =Date.today().addDays(2);
                }
            uptasks.add(task2);
            System.debug(task2);

        
        }
            if(!uptasks.isEmpty()){
        
                insert uptasks;
        }
    }

    public void finish(Database.BatchableContext bx){
        System.debug('Tasks are updated');
    }
}