map<string, string> mapCntCurrency = new map<string, string>();
//USA --> Dollar
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country currency = ' + mapCntCurrency);


string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Turkey';
system.debug('Country is ' + country);
string TurkeyCurrency = mapCntCurrency.get(country);//valid? YES/ use of parameter for key

system.debug('India Currency = ' + IndiaCurrency);
system.debug('Turkey Currency = ' + TurkeyCurrency);

list<string> currencyList = mapCntCurrency.values();
system.debug('currencies in map: ' + currencyList);

Set<String> countrySet =mapCntCurrency.keySet();
system.debug(countrySet);

//{El Salvador, France, India, Japan, Turkey, USA} --> countries

for (string eachKey : countrySet) {
    string printAll ='The Country Name is: ' + eachKey;
    string eachCurrency = mapCntCurrency.get(eachKey);
    printAll += ' Its currency is: '+eachCurrency;
    system.debug(printAll);
}
