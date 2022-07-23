public  class MapDemo {
    public static String retrieveMonth(integer m) {
        string monthName='';
        Map<Integer,String> monthMap = new Map<Integer,String>();
        monthMap.put(1,'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7,'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');
        
            monthName =monthMap.get(m);
            Set<Integer> keySet = monthMap.keySet();
            if (keySet.contains(m)) {
                monthName =monthMap.get(m);
            }else {
                monthName = 'This is not a valid Entry!!!';
            }
        
        
            return monthName;
    }
}