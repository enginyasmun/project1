List<String> colorsList =new List<String>();
colorsList.add('red');
colorsList.add('blue');
colorsList.add('black');
colorsList.add('yellow');
colorsList.add('red');
System.debug(colorsList);
 Boolean isContain= colorsList.contains('red');
 System.debug(isContain);
 integer thisSize=colorsList.size();
 System.debug(thisSize);
//   string lastElement=colorsList[4];
//   System.debug(lastElement);
  System.debug(colorsList.get(thisSize-1)); // last element
  System.debug(colorsList[4]);
  System.debug(colorsList.get(thisSize-1));
 string upperCase1= colorsList.get(thisSize-1);
 String upperCase2=upperCase1.toUpperCase();//last element to upperCase
 System.debug(upperCase2);

List<String> colourCodesList =new List<String>();
colourCodesList.add('#FF0000');
colourCodesList.add('#bc2e7d');
colourCodesList.add('#0000a8');

System.debug(colourCodesList);
Boolean isEqual = colorsList.equals(colourCodesList);
if (isEqual==true) {
    System.debug('Yes These two lists are Equal');
}
else {
    System.debug('No These two lists are not Equal');
}

List<String> newMergedList =new List<String>();
newMergedList.addAll(colourCodesList);
newMergedList.addAll(colorsList);
System.debug(newMergedList);










