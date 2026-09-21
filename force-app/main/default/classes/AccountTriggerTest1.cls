@isTest
private class AccountTriggerTest1 {

    @isTest
    static void testDefaultTypeSetWhenBlank() {
        Account acc = new Account(Name = 'Test Account');

        Test.startTest();
        insert acc;
        Test.stopTest();

        Account inserted = [SELECT Type FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Prospect', inserted.Type, 'Type should default to Prospect when left blank');
    }
    @isTest
    static void testDefaultTypeSetWhenBlank1() {
        Account acc1 = new Account(Name = 'Test Account1', type='Qualified');

        Test.startTest();
        insert acc1;
        Test.stopTest();

        Account inserted1 = [SELECT Type FROM Account WHERE Id = :acc1.Id];
        System.assertEquals('Qualified', inserted1.Type, 'Type should default to Prospect when left blank');
    }

    @isTest
    static void testTypeNotOverwrittenWhenProvided() {
        Account acc = new Account(Name = 'Test Account 2', Type = 'Customer - Direct');

        Test.startTest();
        insert acc;
        Test.stopTest();

        Account inserted = [SELECT Type FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Customer - Direct', inserted.Type, 'Existing Type should not be overwritten');
    }
}