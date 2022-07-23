// Map<String,String> currMap = new Map<String,String>();

// currMap.put('BitCoin', '$ 35,000');
// currMap.put('Shiba Inu', '$ 0.008');
// CryptoInfo.CryptoMap = currMap;
// CryptoInfo.showPrice('BitCoin');
// CryptoInfo.showPrice('Shiba Inu');


CryptoInfo c1 = new CryptoInfo();
c1.cryptoMap.put('ABC', 50000);
c1.cryptoMap.put('DEF', 78000);
System.debug(c1.showPrice('ABC'));