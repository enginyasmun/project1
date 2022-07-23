public class Myiterations {
    public void myMethod(integer x, integer y) {
      System.debug('Input : x = '+ x);
      System.debug('Input : y = ' + y);
      integer sum = 0;
      integer count = 0;
      integer average;

      for (Integer i = x; i <= y; i++) {
        sum += i;
        count ++;
      }
      average = sum/count;
      System.debug('Output: ' + average);
      System.debug('Total is : ' + sum);
      System.debug('Total of numbers : '+count);
      System.debug('Calculation:');
      string st = '';
      for (Integer i = x; i <y; i++) {
          st += string.valueOf(i) + '+';
      }
      System.debug(st+y+' = ' + sum);
      System.debug('Total '+count + ' numbers between '+x+' to ' + y);
      System.debug(sum + ' / ' + count+' = ' + average);
    
    }
}