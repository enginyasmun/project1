public class ListOfOdds {
    public static void oddNumbers(integer Mira){
    integer Mo;
    System.debug('My Number is ' + Mira);
    list<integer> myList = new list<integer>();

    for (Integer i = 0; i <= Mira; i++) {
        Mo = math.mod(i, 2);
        if (mo == 0) {
            myList.add(i);
        }

    }
        System.debug('The Even numbers from 0 till ' + Mira + ' is ' +myList);
    }
}