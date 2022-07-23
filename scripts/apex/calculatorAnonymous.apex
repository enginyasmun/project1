Calculator prtmes = new Calculator();
prtmes.printNewMessage('This is my new Calculator');

Calculator calc = new Calculator();
Integer addInteger = calc.add(10, 6);
System.debug('Sum is ' + addInteger);
System.debug('The sum is ' + calc.add(11, 23));

Calculator prbd = new Calculator();
prbd.printBirthDate(date.newInstance(1979, 08, 31));

Calculator offerEndDate = new Calculator();
Integer remdays = offerEndDate.remainingDays(date.newInstance(2021, 12, 10), date.newInstance(2010, 4, 6));
System.debug(remdays/365);
