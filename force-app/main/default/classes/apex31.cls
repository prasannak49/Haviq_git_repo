/**
 * @description Sample utility class with greeting and addition helpers.
 */
public with sharing class apex31 {

    /**
     * @description Returns a friendly greeting for the given name.
     * @param name The name to greet (blank -> Guest).
     * @return A greeting string. update on apex 31 whihc should be showing as updated code
     */
    public static String getGreeting(String name) {
        if (String.isBlank(name)) {
            return 'Hello, Guest!';
        }
        return 'Hello, ' + name + '!';
    }

    /**
     * @description Adds two integers.
     * @param a First integer.
     * @param b Second integer.
     * @return a + b.
     */
    public static Integer addNumbers(Integer a, Integer b) {
        return a + b;
    }
}