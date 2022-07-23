Account acc = [SELECT id, OwnerId FROM Account WHERE industry = 'Biotechnology' LIMIT 1];
System.debug(acc.id);
Map<String,Object> inputs = new Map<String,Object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountOwnerId', acc.OwnerId);
Flow.Interview AccFlow = new Flow.Interview.Account_Update_Flow(inputs);
AccFlow.start();

