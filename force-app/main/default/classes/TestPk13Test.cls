@isTest
private class TestPk13Test {
    @isTest
    static void testGetGreeting_WithName_ReturnsPersonalizedGreeting() {
        Assert.areEqual('Hello, Kiran!', TestPk13.getGreeting('Kiran'), 'Should return personalized greeting');
    }
    @isTest
    static void testGetGreeting_BlankName_ReturnsGuestGreeting() {
        Assert.areEqual('Hello, Guest!', TestPk13.getGreeting(''), 'Should return guest greeting for blank name');
    }
    @isTest
    static void testAddNumbers_TwoIntegers_ReturnsSum() {
        Assert.areEqual(5, TestPk13.addNumbers(2, 3), 'Should return correct sum');
    }
}