
// List<Case> caseList = new List<case>();
// // Create account sObjects
// case c1 = new case(Subject='true',status ='Working');
// Case c2 = new case(Subject='false');
// // Add accounts to the list
// caseList.add(c1);
// caseList.add(c2);
// // Bulk insert the list
// insert caseList;
// case c1 = [select subject from Case limit 1];
// c1.Subject = 'Very very True';
// update c1;
// System.debug(c1);

// list<account> updateAcc = [Select id,name, website from account where createddate = today];

// List<Account> newList = new List<Account>();

//     for (account eachAcc : updateAcc) {
//         eachAcc.website = 'New Website update again  ';
//         newList.add(eachAcc);
//     }
// delete updateAcc;


// List<Account> newList = [select website from Account where createdDate = today];
// List<Account> updateList = new List<Account>();
// for (account eachAcc : newList){
//     eachAcc.website = 'www.your.com';
//     updateList.add(eachAcc);
// }
// update updateList;

// list<Account> acList = new list<Account>();
// account ac = new account();
// ac.name = 'ac trigger name';
// acList.add(ac);
// account ac2 = new account();
// ac2.name = 'ac trigger name 2';
// acList.add(ac2);

// insert acList;

// ac.name = 'ac trigger name update';
// update ac;

List<Account> newAcc = [select id, name, website from account where createddate = today];
List<Account> newUpdateAcc = new List<Account>();
// system.debug(newAcc);
integer counter = 4;
for(account eachAcc : newAcc){
    eachAcc.Website = 'www.newWebbb'+counter+'.com';
    // system.debug('Updated Website is : ' + eachAcc.Website);
    newUpdateAcc.add(eachAcc);
    counter ++;
}
update newUpdateAcc;
