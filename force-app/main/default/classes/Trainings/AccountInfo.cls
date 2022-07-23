public class AccountInfo {
    public static void showAccounts() {
        List<Account> futureCloseDate = [select id, name, ( select name, CloseDate from Opportunities where closeDate > TODAY) from Account];
        System.debug(futureCloseDate);

        for (Account eachAccount : futureCloseDate) {
            System.debug('Opportunities with Future Closing Dates are: ' +eachAccount);
            for (Account newOpp : futureCloseDate) {
                System.debug(newOpp.Name);
                System.debug(newOpp.Id);
            }
        }
        
    }
}