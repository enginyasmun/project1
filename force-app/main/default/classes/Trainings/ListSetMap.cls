public with sharing class ListSetMap {
    public static List<String> practiceOne() {
        List<string> cityList = new List<string>{'Ankara', 'İstanbul', 'London', 'Paris', 'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};
        
        return cityList;
    
    }

    public static void practiceTwo(List<Integer> list1) {
        Set<Integer> oddSet = new  Set<Integer>();
        Set<Integer> evenSet= new  Set<Integer>();

        for (Integer eachNum : list1) {
            integer oddEvenCheck = Math.mod(eachNum, 2);
            if (oddEvenCheck == 1) {
                oddSet.add(eachNum);
            }else {
                evenSet.add(eachNum);
            }
        }
        System.debug('Odd Numbers Set = '+oddSet);
        System.debug('Even Numbers Set = '+evenSet);


    }
}