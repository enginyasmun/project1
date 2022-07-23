Set<String> uniqueNameSet = new Set<String>{'Tom', 'Jerry'};
System.debug(uniqueNameSet);

Integer setSize = uniqueNameSet.size();
System.debug(setSize);

uniqueNameSet.add('Sylvester');
uniqueNameSet.add('Tweety');
uniqueNameSet.add('Bob');

System.debug(uniqueNameSet);
string nameToCheck = 'Engin';
Boolean myNameCheck = uniqueNameSet.contains(nameToCheck);
if(myNameCheck==true){
    system.debug('Yes The Set contains ' + nameToCheck);
}else {
    system.debug('No. The Set doesnt contain '+ nameToCheck);
}

Boolean isEmpty = uniqueNameSet.isEmpty();
if(isEmpty == true){
    system.debug('The Set is Empty');
}else {
    system.debug(uniqueNameSet);
}

uniqueNameSet.clear();
system.debug(uniqueNameSet);

Boolean isEmpty1 = uniqueNameSet.isEmpty();
if(isEmpty1 == true){
    system.debug('The Set is Empty');
}else {
    system.debug(uniqueNameSet);
}