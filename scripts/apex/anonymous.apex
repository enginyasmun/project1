date myDateOfBirth = date.newInstance(1979, 08, 31);

System.debug(myDateOfBirth);

Integer birthYear = myDateOfBirth.year();
Integer birthMonth = myDateOfBirth.month();
Integer birthDay = myDateOfBirth.day();
Integer sum = birthDay+birthMonth+birthYear;
System.debug(sum);

date herBirthday = date.newInstance(1867, 11, 7);
Integer difference = herBirthday.daysBetween(date.today());
System.debug(difference/365);

Boolean leapCheck = date.isLeapYear(1867);
if (leapCheck == true){
    system.debug('Yes it is a leap year');
}else {
    System.debug('Its not a leap year');
}