Map<Integer,String> zipCodeToCityMAp = new Map<Integer,String>();
zipCodeToCityMAp.put(11104, 'Sunnyside');
zipCodeToCityMAp.put(11377, 'Maspeth');
zipCodeToCityMAp.put(11725, 'Commack');

System.debug(zipCodeToCityMap);

Boolean checkMapping = zipCodeToCityMAp.containsKey(204101);
System.debug(checkMapping);

Set<Integer> allZipCodes = zipCodeToCityMAp.keySet();
System.debug(allZipCodes);

List<String> allCityNames = zipCodeToCityMAp.values();
System.debug(allCityNames);

Integer numOfMap = allZipCodes.size();
System.debug(numOfMap);

Set<Integer> uniqueZipCodeSet = new Set<Integer>();
uniqueZipCodeSet.addAll(allZipCodes);
System.debug(uniqueZipCodeSet);

List<String> cityNameList = new List<String>();
cityNameList.addAll(allCityNames);
System.debug(cityNameList);

Boolean checkMap = zipCodeToCityMAp.isEmpty();
System.debug(checkMap);