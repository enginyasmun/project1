public with sharing class CalculatorClass {
    // public integer mul(integer x, integer y) {
    //     integer xy = x*y;
    //     return xy;
    // }

    public Decimal dynamicCalulationMethod(decimal t, decimal w, String a){
        Decimal result;
        decimal b;

      switch on a {
          when 'Addition' {
            result = t+w;
            b=result;
            System.debug('The Result of Addition is = ' + b);
        
          }
          when 'Substraction' {
            System.debug('The Result of Substraction is shown below');
            result = t-w;
            
          }
          when 'Division'{
            System.debug('The Result of Division is shown below');
            result = t/w;
        
        }
        when 'Multiplication' {
            System.debug('The Result of Multiplication is shown below');
            result = t*w;
    
        }when else {
            System.debug('We dont have this operation');
            result =0;
        }
      }return result;
    } 
    
}