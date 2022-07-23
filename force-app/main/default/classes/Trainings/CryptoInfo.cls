// public with sharing class CryptoInfo {
//     public static Map<String,String> CryptoMap;
//     public static String showPrice(String coinName) {
//         string currency1 = CryptoMap.get(coinName);
//         System.debug('Input : ' + coinName);
//         System.debug('Output : ' + currency1);
//         return currency1;
//     }
// }

public class CryptoInfo {
    public Map<string , integer> cryptoMap = new Map<string , integer>();
    public integer showPrice(string coinName) {
        integer a;
        a = cryptoMap.get(coinName);
        return a;
    }
}