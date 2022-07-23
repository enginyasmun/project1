String jsonStringAcc = '{"Name" : "JasonToApex","Type" : "Prospect" , "AnnualRevenue" : 50 }';
Account acc = (Account)JSON.deserialize(jsonStringAcc, account.class);
insert acc;
system.debug(acc);


string jsonStringAcc2 = '[{"Name": "JsonToApex4", "Type": "Prospect", "AnnualRevenue": 50}, {"Name": "JsonToApex2", "Type": "Prospect", "AnnualRevenue": 1000}]';
list<Account> lA = (List<Account>)JSON.deserialize(jsonStringAcc2, List<Account>.class);
insert lA;