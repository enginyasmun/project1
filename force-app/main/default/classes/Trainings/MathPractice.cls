public  class MathPractice {
    // public decimal practiceOne(Decimal x, Decimal y) {
    //     decimal circ = 2*(x+y);
    //     return circ; 
    // }

    // public Decimal practiceTwo (Decimal height, Decimal weight){
    //     Decimal bmi = weight /(height*height);
    //     return bmi;
    // }

    // public Decimal praticeThree (decimal t, decimal z){
    //     Decimal average = (t+z)/2;
    //     return average;
    // }

    public static integer practiceEight(integer x, integer y){
        integer sum = 0;
        if (x==y) {
            sum=x+y;
        }else if (x>y) {
            for (Integer i = y; i <=x; i++){
                sum += i;
            }
            
        }else {
            for (Integer i = x; i <= y; i++) {
                sum += i;
            }
        }
        
        system.debug(sum);
        return sum;

    }
    
}