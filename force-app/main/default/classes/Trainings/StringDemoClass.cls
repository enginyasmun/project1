public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = 'learning string methods in apex language.';
 //length method ()
        Integer lengthOfString = sessionDescription.length();
        System.debug('The length of the strig is ' +lengthOfString + ' letters');

//Uppercase method () 
        String uppercaseofString = sessionDescription.toUpperCase();
        System.debug(uppercaseofString);

// First letter capatalize method()

        string firstLetter = sessionDescription.capitalize();
        System.debug(firstLetter);

// to remember the original one

        System.debug('Original string is ' + sessionDescription);

// to check contains method

        boolean containsApex = sessionDescription.contains('apex');
        System.debug('has apex = ' + containsApex);

        Boolean containsApex1 = sessionDescription.contains('Apex');
        System.debug('has Apex = ' + containsApex1);

        Boolean containsApex2 = sessionDescription.contains('salesforce');
        System.debug('has salesforce = ' + containsApex2);

        Boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
        System.debug('has APEX = ' + containsApex3);

// to check ignoring case sensitive contains
        Boolean containsApex4 = sessionDescription.containsIgnoreCase('in');
        if (containsApex4 == true ) {
            System.debug('yes it contains "in" ');
        }else {
            System.debug('Wrong answer');
        }

// to check equals method
        string apexx = 'apex';
        String ap = 'apex';
        Boolean apexcheck = apexx.equals(ap);
        system.debug(apexcheck);

// tp trim spaces 
        string sessionDescription2 = '    learn    ';
        system.debug(sessionDescription2.trim());

// to learn date
        
    }
//new method -------------------


    public void printNewDate(){

// to check date method it works as newinstance and year month date

    date newdate = Date.newInstance(2021, 01, 27);
    time newTime = time.newInstance(18, 10, 02, 05);

    date todaysDate = date.today();
    System.debug(newdate);
    System.debug('Todays Date is ' + todaysDate);
    System.debug('create a new Date instance');

// ********************** Datetime checks time zone ************************** 

    Datetime newdatetime = Datetime.now();

    Datetime dt = Datetime.newInstance(newDate, newTime);

    System.debug(newdatetime);


    System.debug(dt);

    time timeEntry = time.newInstance(22, 15, 59, 02);
    system.debug(timeEntry);

    Datetime dt2 = datetime.newInstance(2022, 01, 10, 11, 05, 10);
    System.debug(dt2);

// lets do our age

    date todaysDate1 = date.today();
    date myBirthday = date.newInstance(1979, 01, 31);
    Integer myAgeinDays = myBirthday.daysBetween(todaysDate1);
    Integer myAge = myAgeinDays/365;

    System.debug('I am now ' + myage+ ' years old.');

// lets do my age by months

    Integer myAgeinMonths = myBirthday.monthsBetween(todaysDate1);
    Integer myAge2 = myAgeinMonths/12;

    System.debug('I am now ' + myAge2+ ' years old.');
}

public void printSubsEndDate(){
        date subsStartDate = date.today();
        date subsEndDate = subsStartDate.addDays(1461);
        System.debug('Your Subscription ends on ' + subsEndDate);
        Integer endYear = subsEndDate.year();
        System.debug('Your Subscription End year is ' + endYear);
        Integer endMonth = subsEndDate.month();
// System.debug('Your Subscription will end on the month of '+ endMonth + ' of ' +endYear);

// try to type the month name by case 

        switch on endMonth {
                when 1 {
                        System.debug('Your Subscription will end on the month of Janurary of ' +endYear);         
                }
                when 2{
                        System.debug('Your Subscription will end on the month of February of ' +endYear);         
                }
                when 3 {
                        System.debug('Your Subscription will end on the month of March of ' +endYear);         
                }
                when 4 {
                        System.debug('Your Subscription will end on the month of April of ' +endYear);         
                }
                when 5 {
                        System.debug('Your Subscription will end on the month of May of ' +endYear);         
                }
                when 6 {
                        System.debug('Your Subscription will end on the month of June of ' +endYear);         
                }
                when 7 {
                        System.debug('Your Subscription will end on the month of July of ' +endYear);         
                }
                when 8 {
                        System.debug('Your Subscription will end on the month of August of ' +endYear);         
                }
                when 9 {
                        System.debug('Your Subscription will end on the month of September of ' +endYear);         
                }
                when 10 {
                        System.debug('Your Subscription will end on the month of October of ' +endYear);         
                }
                when 11 {
                        System.debug('Your Subscription will end on the month of November of ' +endYear);         
                }
                when 12 {
                        System.debug('Your Subscription will end on the month of December of ' +endYear);         
                }
                when else {
                        System.debug('Date Error... Pls Check the Date!!!');
                }
        }
}

public void printDateTime(){
        datetime dtnow = Datetime.now();
        Datetime offerEndDateTime = dtnow.addHours(74);
        integer dayofEnd = offerEndDateTime.day();
        string dayofWeek = offerEndDateTime.format('EEEE');
        System.debug('Your Offer will be ending on ' +offerEndDateTime);
        System.debug('Your offer will end on the '+dayofEnd + 'th day');
        System.debug('Your Subscription s end day is ' + dayofWeek);
        switch on dayofWeek {
                when 'Monday' {
                        System.debug('Its Monday. You can renew your subscription today');
                }
                when 'Tuesday' {
                        System.debug('Its Tuesday. You can renew your subscription today');
                }
                when 'Wednesday' {
                        System.debug('Its Wednesday. You can renew your subscription today');
                }
                when 'Thursday' {
                        System.debug('Its Thursday. You can renew your subscription today');
                }
                when 'Friday' {
                        System.debug('Its Friday. You can renew your subscription today');
                }
                when 'Saturday' {
                        System.debug('Its Weekend and you cant renew your subscription today');
                }
                when 'Sunday' {
                        System.debug('Its Weekend and you cant renew your subscription today');
                }
                when else {
                        System.debug('Wrong Date');
                        
                }
        }
}

public void printteststrings(){
        String firstString = 'Welcome to the Salesforce world, apex is host in this world.';
        Boolean testResult = firstString.contains('HOST');
        if( testResult == true){
                System.debug('Yes It contains "HOST" keyword.');
        }else{
                System.debug('No It doesnt contain "HOST" keyword because our method used is key sensitive.');
        }

        string sentence1 = 'My favourite part is apex';
        String sentence2 = 'MY FAVOURITE PART IS APEX';
        Boolean checkResult = sentence1.equals(sentence2);
        if( checkResult == true){
                System.debug('Yes given 2 sentences are equal.');
        }else{
                System.debug('No they are not equal and dont forget method used is key sensitive.');
        }

        Date dateOfJoin = date.newInstance(2017, 03, 10);
        Date todaysDate1 = date.today();
        Integer daysofwork = dateOfJoin.daysBetween(todaysDate1);
        Integer experinceInYears = daysofwork/365;

        switch on experinceInYears {
                when 1,2,3 {
                        System.debug('The Staff is junior');  
                }
                when 4,5,6 {
                        System.debug('The Staff is Senior');  
                }
                when else {
                        System.debug('The Staff is Executive');  
                }
        }
        
}
}