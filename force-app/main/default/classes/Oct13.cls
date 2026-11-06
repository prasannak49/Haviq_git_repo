/**
 * @description Utility class with greeting and arithmetic helpers.
 */
public with sharing class Oct13 {

    private static final String DEFAULT_NAME = 'Friend';

    /**
     * @description Returns a personalized greeting.
     * @param name Person's name (blank/null falls back to DEFAULT_NAME)
     * @return Greeting string
     */
    public static String buildGreeting(String name) {
        String who = String.isBlank(name) ? DEFAULT_NAME : name.trim();
        return 'Welcome, ' + who + '!';
    }

    /**
     * @description Multiplies two integers safely.
     * @param a First integer (null treated as 0)
     * @param b Second integer (null treated as 0)
     * @return Product of a and b
     */
    public static Integer multiply(Integer a, Integer b) {
        Integer x = (a == null) ? 0 : a;
        Integer y = (b == null) ? 0 : b;
        return x * y;
    }

    /**
     * @description Returns true when the supplied value is a positive integer.
     * @param value Integer to check
     * @return true if value != null and > 0
     */
    public static Boolean isPositive(Integer value) {
        return value != null && value > 0;
    }
}