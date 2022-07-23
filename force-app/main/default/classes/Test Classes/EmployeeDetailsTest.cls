@isTest
public  class EmployeeDetailsTest {

@isTest

    public static void showDetailsTest() {
        EmployeeDetails emp = new EmployeeDetails();
        String name = 'Engin';
        String email = 'en@gin.com';
        Long phone = 154321514;
        emp.showDetails(name, email, phone);
    }
}