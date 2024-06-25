public class AccountSelector {

    public static List<Account> getAccounts(List<Id> accountIds) {
        try {
            return [SELECT Id, Name, Industry FROM Account WHERE Id IN :accountIds];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}