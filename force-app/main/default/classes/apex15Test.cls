@isTest
private class apex15Test {
    @isTest
    static void testGetGreeting_WithName_ReturnsPersonalizedGreeting() {
        Assert.areEqual('Hello, Kiran!', apex15.getGreeting('Kiran'), 'Should return personalized greeting');
    }
    @isTest
    static void testGetGreeting_BlankName_ReturnsGuestGreeting() {
        Assert.areEqual('Hello, Guest!', apex15.getGreeting(''), 'Should return guest greeting for blank name');
    }
    @isTest
    static void testAddNumbers_TwoIntegers_ReturnsSum() {
        Assert.areEqual(5, apex15.addNumbers(2, 3), 'Should return correct sum');
    }
}