@isTest
private class Oct13Test {

    @isTest
    static void testBuildGreeting_WithName_ReturnsPersonalized() {
        Assert.areEqual('Welcome, Kiran!', Oct13.buildGreeting('Kiran'), 'Should personalize with name');
    }

    @isTest
    static void testBuildGreeting_BlankName_ReturnsDefault() {
        Assert.areEqual('Welcome, Friend!', Oct13.buildGreeting(''), 'Blank name should fall back to default');
        Assert.areEqual('Welcome, Friend!', Oct13.buildGreeting(null), 'Null name should fall back to default');
    }

    @isTest
    static void testMultiply_TwoIntegers_ReturnsProduct() {
        Assert.areEqual(12, Oct13.multiply(3, 4), 'Should return correct product');
    }

    @isTest
    static void testMultiply_NullInputs_TreatedAsZero() {
        Assert.areEqual(0, Oct13.multiply(null, 5), 'Null first operand treated as 0');
        Assert.areEqual(0, Oct13.multiply(7, null), 'Null second operand treated as 0');
    }

    @isTest
    static void testIsPositive_Branches() {
        Assert.isTrue(Oct13.isPositive(10), '10 is positive');
        Assert.isFalse(Oct13.isPositive(0), '0 is not positive');
        Assert.isFalse(Oct13.isPositive(-3), 'Negative is not positive');
        Assert.isFalse(Oct13.isPositive(null), 'Null is not positive');
    }
}