/**
 * @description Sample Apex class #2 with basic demo logic
 */
public with sharing class TestPk2 {

    /**
     * @description Returns a greeting message for the given name
     * @param name the name to greet
     * @return a greeting string
     */
    public static String getGreeting(String name) {
        if (String.isBlank(name)) {
            return 'Hello, Guest!';
        }
        return 'Hello, ' + name + '!';
    }

    /**
     * @description Adds two integers together
     * @param a first number
     * @param b second number
     * @return the sum of a and b
     */
    public static Integer addNumbers(Integer a, Integer b) {
        return a + b;
    }
}