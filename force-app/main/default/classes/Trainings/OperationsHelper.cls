// public class OperationsHelper {
    // public decimal  largestOutOfTwoNumbers(decimal x, decimal y) {
    //     if(x>y){
    //         return x;
    //     }else {
    //         return y;
    //     }
    // }

    // public Decimal smallestOutOfThreeNumbers(decimal t, decimal z, decimal w){
    //     if(t<z && z<w){
    //         return t;
    //     }else if (z<w && w<t) {
    //         return z;
    //     }else{
    //         return w;
    //     }
    // }

//     public static Decimal Addition (list<decimal> Alist){
//         decimal sum =0;

//         for (Integer i = 0; i < Alist.size(); i++) {
//             decimal x = Alist.get(i);
//             sum += x;
// }
// if (Alist.size()>0) {
//     System.debug('The addition of list elements is: '+sum);
// } else {
//     System.debug('Please provide values to do the operation');
// }
// return sum;
// } 

    // public Static Decimal Addition (list<decimal> Alist){
    //     Decimal sum = 0;

    //     if (Alist.size()>0) {
    //        for (decimal eachEl : Alist) {
    //         sum += eachEl;
    //     } 
    //     System.debug('The addition of list elements is: '+sum);
    //     }else {
    //         System.debug('Please provide values to do the operation');
    //     }return sum;
        
    // }

    // public Static Decimal Average (list<decimal> Alist){
    //     Decimal average;
    //     integer count = Alist.size();
    //     Decimal sum =0;
        

    //     if (Alist.size()>0) {
    //        for (decimal eachEl : Alist) {
    //        sum += eachEl;
                 
    //     } 
    //     average = sum/count;
    //     System.debug('The average of list elements is: '+average);
    //     }else {
    //         System.debug('Please provide values to do the operation');
    //     }
    //     return average;
        
    // }
//     public Static Decimal Highest (list<decimal> Alist){

//         Decimal maxvalue = Alist[0];
//                 For (integer i =0;i<Alist.size();i++)
//                 {
                    
//                     if( Alist[i] > maxvalue)
//                         maxvalue = Alist[i];             
//                 } 
//                 system.debug('the max value is'+maxvalue);    
//                 return maxvalue;
        

// }

// public Static Decimal Lowest (list<decimal> Alist){

//     Decimal minvalue = Alist[0];
//             For (integer i =0;i<Alist.size();i++)
//             {
                
//                 if( Alist[i] < minvalue)
//                     minvalue = Alist[i];             
//             } 
//             system.debug('the max value is'+minvalue);    
//             return minvalue;
    

// }

//     public Static list<decimal> reverseListMethod(List<decimal> Alist){
//         list<Decimal> reverseList = new list<Decimal>();
//         for (Integer i = Alist.size()-1; i >=0; i--){
//             reverseList.add(Alist[i]);

//         }
//         System.debug(reverseList);
// return reverseList;
//     }
// }


public with sharing class OperationsHelper {
    //Assignment 2 Question 4.1 
    public decimal largestOutOfTwoNumbers(decimal a, decimal b){
        if(a > b){
            return a;
        }
        return b;
    }
    //Assignment 2 Question 4.2
    public decimal smallestOutOfThreeNumbers(decimal a, decimal b, decimal c){
        if(a < b && a < c){
            return a;
        }
        else if(b < a && b< c){
            return b;
        }
        return c;
    }
    //Assignment 2 Question 4.3
    public Integer sumofPositiveIntegers(Integer n){
        Integer sum;
        if(n<0){
            sum = null;
            system.debug('We are not calculating the sum for negative numbers');
        } else {
            sum = 0;
            for(Integer i = 1; i <= n; i++){
                sum = sum + i;
            }
        }
        return sum;
    }

    public Integer sumofPositiveIntegers(Integer n1, Integer n2){
        Integer sum=n1;
        for(Integer i = n1+1; i <= n2; i++){
            sum = sum + i;
        }
        return sum;
    }
    //Assignment Week 3 Solution part 2.1.a
    public decimal sumofListValues(List<Decimal> values){
        Decimal sum;
        if(values.size() > 0 ){
            sum = 0;
            for(Decimal val : values){
                sum = sum + val;
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return sum;        
    }
    //Assignment Week 3 Solution part 2.1.b
    public decimal averageOfListValues(List<Decimal> values){
        decimal average;
        if(values.size()>0){
            decimal sum = this.sumofListValues(values);
            average = sum/values.size();
            system.debug('values.size() '+values.size());
        } else {
            system.debug('Please provide values to do the operation');
        }
        return average;
    }
    //Assignment Week 3 Solution part 2.1.c
    public decimal highestOfListValues(List<Decimal> values){
        decimal highestElement;
        if(values.size()>0){
            highestElement = values[0];
            for(Decimal val : values){
                if(val > highestElement){
                    highestElement = val;
                }
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return highestElement;
    }
    //Assignment Week 3 Solution part 2.1.d
    public decimal lowestOfListValues(List<Decimal> values){
        decimal lowestElement;
        if(values.size()>0){
            lowestElement = values[0];
            for(Decimal val : values){
                if(val < lowestElement){
                    lowestElement = val;
                }
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return lowestElement;
    }
    //Assignment Week 3 Solution part 2.2
    public void reverseOrderPrint(List<Object> values){
        if(values.size() > 0){
            for(integer i=values.size()-1; i>=0; i--){
                System.debug(values[i]);
            }
        }
        else {
            system.debug('Please provide values to do the operation');
        }
    }
}