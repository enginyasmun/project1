Map<String,Map<string, Decimal>> tempOfCities = new Map<String,Map<string, Decimal>>();
Map<string, Decimal> istanbulTemps = new Map<string, Decimal>();

istanbulTemps.put('Monday', 33);
istanbulTemps.put('Tuesday', 23);
istanbulTemps.put('Wednesday', 24);
istanbulTemps.put('Thurday', 25);

System.debug(istanbulTemps);

tempOfCities.put('Istanbul', istanbulTemps);
system.debug(tempOfcities);

Map<string, Decimal> ankaraTemps = new Map<string, Decimal>();
ankaraTemps.put('Monday', 33);
ankaraTemps.put('Tuesday', 13);
ankaraTemps.put('Wednesday', 32);
ankaraTemps.put('Thursday', 14);

tempOfCities.put('Ankara', ankaraTemps);
system.debug(tempOfcities);

