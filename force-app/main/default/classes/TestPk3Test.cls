@isTest
private class TestPk3Test {

    @isTest
    static void testGetGreeting_WithName_ReturnsPersonalizedGreeting() {
        String result = TestPk3.getGreeting('Kiran');
        Assert.areEqual('Hello, Kiran!', result, 'Should return personalized greeting');
    }

    @isTest
    static void testGetGreeting_BlankName_ReturnsGuestGreeting() {
        String result = TestPk3.getGreeting('');
        Assert.areEqual('Hello, Guest!', result, 'Should return guest greeting for blank name');
    }

    @isTest
    static void testAddNumbers_TwoIntegers_ReturnsSum() {
        Integer result = TestPk3.addNumbers(2, 3);
        Assert.areEqual(5, result, 'Should return correct sum');
    }
}