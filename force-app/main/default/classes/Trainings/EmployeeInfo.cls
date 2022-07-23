public with sharing class EmployeeInfo {
   public static Map<Integer,String> employeeMap1;
    public static String showInfo(Integer EmpNumber) {
    
    String EmpName = employeeMap1.get(EmpNumber);
    System.debug('Input : ' + EmpNumber);
    System.debug('Output : ' + EmpName);
  
return EmpName;
    }
    
}