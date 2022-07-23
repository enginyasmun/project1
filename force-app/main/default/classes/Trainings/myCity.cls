public  class myCity {
    public void cityInformation() {
        string country = 'Germany';
        string city = 'Stuttgart';
        String favoriteCity = 'I want to go to '+ country+', especially '+ city;
        System.debug(favoriteCity);
    }
    public void stringMethod(){
        string sentence = 'I am Salesforce Developer';
        Boolean checksentence = sentence.contains('force');
        if (checksentence==true){
            System.debug('Cumlemizde "force" kelimesi var');
        }else {
            System.debug('Cumlemizde "force" kelimesi bulunmamaktadir');
        }
        Integer numChaSen = sentence.length();
        System.debug('Number of Characters in the Sentence is ' +numChaSen);

        String allUpp = sentence.toUpperCase();
        System.debug(allUpp);    
    }

    public void dateMethod(){
        date todaysDate = date.today();
        System.debug(todaysDate);
        Datetime dateTimeNow = Datetime.now();
        Datetime futureDateTime = dateTimeNow.addHours(50); 
        System.debug(futureDateTime);
    }

    public void cityInformation1(){
        Date dateofEstablishment = Date.newInstance(1776, 07, 04);
        Time sunRiseTime = time.newInstance(06, 19, 00, 00);
        date todaysDate = date.today();
        date futureDate = todaysDate.addMonths(36);

        System.debug('Usa was founded on '+dateofEstablishment);
        System.debug('The Sun rises at '+sunRiseTime);
        System.debug('The Future Date is '+futureDate);
        
    }
}