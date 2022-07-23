@isTest
public  class CyrptoInfoTest {

@isTest    

    public static void showPriceTest() {
        CryptoInfo ctp = new CryptoInfo();
        ctp.cryptoMap.put('Bit', 10);
        ctp.cryptoMap.put('Mana', 2);
        Integer val = ctp.showPrice('Mana');
        System.assertEquals(2, val);

    }
}