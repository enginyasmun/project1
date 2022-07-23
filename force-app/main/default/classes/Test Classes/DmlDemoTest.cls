@isTest
public class DmlDemoTest {
    @isTest
    public static void dmlInsertTest1() {
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id, name from Account where name = 'SoftInnovas'];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('SoftInnovas', listAcc[0].Name);

    }
    @isTest
  public static void dmlDemoUpdate2Test() {
      Account acc = new Account();
      acc.Name = 'SoftInnovas Inc.';
      insert acc;
      DmlDemo.dmlUpdateDemo_2();
      list<Contact> listCnt = [select id, name from contact];
      system.assertEquals(1, listCnt.size());
      System.assertEquals('Biden', listCnt[0].Name);
      
  }


}