public class iterationExercise2 {
    public void getPerfectAverage(integer num1, integer num2) {
        System.debug('    Input: num1 = ' + num1);
        System.debug('    Input: num2 = ' + num2);
        integer sum = 0;
        integer count = 0;
        integer average;

            for (Integer i = num1; i <=num2; i++) {
                sum = sum+i;
                count++;
            
         }
        average = sum/count;

        System.debug('Output : ' + average);
        System.debug('Calculation :');
        
        string s = '';
            for (Integer i = num1; i < num2; i++) {
               s += string.valueOf(i) + '+';
             }
        System.debug(s+num2+' = '+sum);
        System.debug(' Total '+count+' numbers between ' +num1+ ' to ' +num2);
        System.debug(sum+ ' / ' + count + ' = '+ average);
    }
}