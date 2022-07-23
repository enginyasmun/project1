public class StudentInfo {
    public StudentInfo() {
        System.debug('Welcome to our school');

    }
    public void nameList(){
        List <string> studentNameList = new List<string>();
        studentNameList.add('Ben');
        studentNameList.add('Rich');

        System.debug('List of Students : ' + studentNameList);
    }
}