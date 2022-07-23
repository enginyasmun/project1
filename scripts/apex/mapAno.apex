Map<String,Decimal> currISOCodeAndExchangeRateMap = new  Map<String,Decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
System.debug(currISOCodeAndExchangeRateMap.get('AUD'));
string exc = 'SAD';
boolean check = currISOCodeAndExchangeRateMap.containsKey(exc);
if(check){
   System.debug('The Map Contains the currency exchange of ' + exc ); 
} else {

    System.debug('Sorry The Map doesnt have it ');
}

Set<String> biggerOne = new Set<String>();
Set<String> smallerOne = new Set<String>();

for ( String eachKey : currISOCodeAndExchangeRateMap.keySet()){
    if ( currISOCodeAndExchangeRateMap.get(eachKey) > 1){
        biggerOne.add(eachKey);
    }else {
        smallerOne.add(eachKey);
    }

    
}   

System.debug(biggerOne);
System.debug(smallerOne);


