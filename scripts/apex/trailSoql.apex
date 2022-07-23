list<Salesforce_Ticket__c> newList = [ Select id from Salesforce_Ticket__c where Salesforce_Project__r.status__c = 'New'];

System.debug(newList);