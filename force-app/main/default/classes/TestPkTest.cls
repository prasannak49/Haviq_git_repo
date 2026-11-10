@isTest
private class TestPkTest {

    @isTest
    static void testGetGreeting_WithName_ReturnsPersonalizedGreeting() {
        String result = TestPk.getGreeting('Kiran');
        Assert.areEqual('Hello, Kiran!', result, 'Should return personalized greeting');
    }

    @isTest
    static void testGetGreeting_BlankName_ReturnsGuestGreeting() {
        String result = TestPk.getGreeting('');
        Assert.areEqual('Hello, Guest!', result, 'Should return guest greeting for blank name');
    }

    @isTest
    static void testAddNumbers_TwoIntegers_ReturnsSum() {
        Integer result = TestPk.addNumbers(2, 3);
        Assert.areEqual(5, result, 'Should return correct sum');
    }
}