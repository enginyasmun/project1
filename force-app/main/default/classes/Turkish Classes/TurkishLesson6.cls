public  class TurkishLesson6 {
    public static void mapMethod() {
        // // hocanin yaptiklari
        // //Farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal bir liste olan bir map yazalım..
            // Map<string, List<Decimal>> cityOfHot = new Map<string, List<Decimal>>();
            // List<Decimal> istanbulOfHot = new List<Decimal>{10.5, 21.3, 12.6, 25.3, 13.6, 8.7, 22.2};
            // cityOfHot.put('istanbul', istanbulOfHot);

            // List<Decimal> denverOfHot = new List<Decimal>{-3.5, 1.3, 2.6, 5.3, 3.6, 8.7, 2.2};
            // cityOfHot.put('denver', denverOfHot);

            // List<Decimal> austinOfHot = new List<Decimal>{7.8, 12.3, 4.5, 23.3, 8.7, 11.3, 12.3};
            // cityOfHot.put('austin', austinOfHot);

            // List<Decimal> torontoOfHot = new List<Decimal>{-32,-30,-23,-20,-15,-38,-36};
            // cityOfHot.put('toronto', torontoOfHot);

            // List<Decimal> newyorkOfHot = new List<Decimal>{12,10.5,23.4,20,15,18,16};
            // cityOfHot.put('newyork', newyorkOfHot);
            // System.debug(cityOfHot);

            // // her şehri 1 haftalık sıcaklık değerleri ile beraber yazdırma..
            // for(string key : cityOfHot.keySet()){ 
            //    System.debug(key + ' şehrine ait 1 haftalık sıcaklık değerleri => ' + cityOfHot.get(key));   
            // }

            // // her şehrin 1 haftalık sıcaklık ortalaması..
            // Map<string, decimal> ortMap = new Map<string, decimal>();
            // for(string key : cityOfHot.keySet()){ 
            //     decimal sum = 0;
            //     for (decimal eachHot : cityOfHot.get(key)) {
            //         sum += eachHot;
            //     }
            //     decimal ort = sum/(cityOfHot.get(key).size());
            //     ortMap.put(key, ort.setScale(2));
            // }
            // System.debug('iller ve sıcaklık ort => '+ ortMap);

            Map<String,List<Decimal>> tempOfCities = new Map<String,List<Decimal>>();
            List<Decimal> tempOfIstanbul = new List<Decimal>{10.5,21.3,12.6,18,31,22,31.4};
            tempOfCities.put('Istanbul', tempOfIstanbul);
            System.debug(tempOfCities);

            List<Decimal> tempOfKahramanmaras = new List<Decimal>{-3.5,1.3,2.6,8,1,2.8,1.4};
            tempOfCities.put('Kahramanmaras', tempOfKahramanmaras);
            List<Decimal> tempOfAustin = new List<Decimal>{-23.15,31.3,22.6,38,31,32.8,12.4};
            tempOfCities.put('Austin', tempOfAustin);


            List<Decimal> tempOfToronto = new List<Decimal>{-32,-30,-23,-20,-15,-38,-36};
            tempOfCities.put('Toronto', tempOfToronto);
            System.debug(tempOfCities);

            Set<String> tempSet = tempOfCities.keySet();

            For(string eachKey : tempSet){
                list<Decimal> tempList = tempOfCities.get(eachKey);
                System.debug(eachKey + ' Sehrinin bir haftaliuk sicaklik degeri'+ tempList);
            }

            Map<String,Decimal> avMap = new Map<String,Decimal>();
            for( string eachKey1 : tempSet){
                decimal sum = 0;
                for(decimal eachTemp :tempOfCities.get(eachKey1) ){
                    sum += eachTemp;
                    }
                    Decimal average = sum/(tempOfCities.get(eachKey1).size());
                    avMap.put(eachKey1, average.setScale(2));
                
                
            }
            System.debug('Average of Temp of Cities ' + avMap);

            Set<String> lowerThanTen = new Set<String>();
            Set<String> higherThanTen = new Set<String>();

            for(string city : avMap.keySet()){
                if(avMap.get(city)>10){
                    higherThanTen.add(city);
                }else {
                    lowerThanTen.add(city);
                }
            }

            System.debug('These Cities have weekly Average Temp is higher than 10 C ' + higherThanTen);
            System.debug('These Cities have weekly Average Temp is lower than 10 C ' +lowerThanTen);
                }
                
            }