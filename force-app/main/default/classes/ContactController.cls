public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        return [
            SELECT FirstName, LastName, Email
            FROM Contact
            WITH SECURITY_ENFORCED
            ORDER BY FirstName
        ];  

        /*Comment the above return statement and Uncomment the following to throw an 
        AuraHandledException to see an error on the contactList component */
        //throw new AuraHandledException('Forced error');
    }
}