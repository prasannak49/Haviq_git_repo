@isTest
private class apex24Test {
    @isTest
    static void testGetGreeting_WithName_ReturnsPersonalizedGreeting() {
        Assert.areEqual('Hello, Kiran!', apex24.getGreeting('Kiran'), 'Should return personalized greeting');
    }
    @isTest
    static void testGetGreeting_BlankName_ReturnsGuestGreeting() {
        Assert.areEqual('Hello, Guest!', apex24.getGreeting(''), 'Should return guest greeting for blank name');
    }
    @isTest
    static void testAddNumbers_TwoIntegers_ReturnsSum() {
        Assert.areEqual(5, apex24.addNumbers(2, 3), 'Should return correct sum');
    }
}