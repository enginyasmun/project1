@isTest
public class DmlDemoTest2 {

@isTest

    public static void dmlInsertDemoTest() {
        
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> lstAcc = [SELECT id, name FROM Account where name ='Engin'];
        System.assertEquals(1, lstAcc.size());
        System.assertEquals('Engin', lstAcc[0].Name);

    }

@isTest

    public static void dmlInsertDemo_CustomTest() {
        
        DmlDemo.dmlInsertDemo_cstmObj();

        List<Salesforce_project__c> lstAcc2 = [SELECT id, project_name__c from Salesforce_project__c WHERE project_name__c = 'Teach DML to FALCONS' ];

    System.assertEquals(1, lstAcc2.size());
    System.assertEquals('Teach DML to FALCONS', lstAcc2[0].project_name__c);


        
    }

}