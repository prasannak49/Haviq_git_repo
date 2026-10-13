/**
 * @description Tests for apex31.
 */
@isTest
private class apex31Test {

    @isTest
    static void testGetGreeting_BlankName_ReturnsGuest() {
        Assert.areEqual('Hello, Guest!', apex31.getGreeting(null), 'Null name should greet Guest');
        Assert.areEqual('Hello, Guest!', apex31.getGreeting(''),   'Empty name should greet Guest');
        Assert.areEqual('Hello, Guest!', apex31.getGreeting('   '),'Whitespace name should greet Guest');
    }

    @isTest
    static void testGetGreeting_NamedUser_ReturnsPersonalGreeting() {
        Assert.areEqual('Hello, Prasanna!', apex31.getGreeting('Prasanna'), 'Should personalize greeting');
    }

    @isTest
    static void testAddNumbers_PositiveAndNegative() {
        Assert.areEqual(5,  apex31.addNumbers(2, 3),  'Positive add');
        Assert.areEqual(-1, apex31.addNumbers(2, -3), 'Mixed sign add');
        Assert.areEqual(0,  apex31.addNumbers(0, 0),  'Zero add');
    }
}