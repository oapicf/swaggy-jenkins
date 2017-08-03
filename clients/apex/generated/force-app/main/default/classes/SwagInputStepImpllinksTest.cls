@isTest
private class SwagInputStepImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagInputStepImpllinks inputStepImpllinks1 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks2 = inputStepImpllinks1;
        SwagInputStepImpllinks inputStepImpllinks3 = new SwagInputStepImpllinks();
        SwagInputStepImpllinks inputStepImpllinks4 = inputStepImpllinks3;

        System.assert(inputStepImpllinks1.equals(inputStepImpllinks2));
        System.assert(inputStepImpllinks2.equals(inputStepImpllinks1));
        System.assert(inputStepImpllinks1.equals(inputStepImpllinks1));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks4));
        System.assert(inputStepImpllinks4.equals(inputStepImpllinks3));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagInputStepImpllinks inputStepImpllinks1 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks2 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks3 = new SwagInputStepImpllinks();
        SwagInputStepImpllinks inputStepImpllinks4 = new SwagInputStepImpllinks();

        System.assert(inputStepImpllinks1.equals(inputStepImpllinks2));
        System.assert(inputStepImpllinks2.equals(inputStepImpllinks1));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks4));
        System.assert(inputStepImpllinks4.equals(inputStepImpllinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagInputStepImpllinks inputStepImpllinks1 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks2 = new SwagInputStepImpllinks();

        System.assertEquals(false, inputStepImpllinks1.equals(inputStepImpllinks2));
        System.assertEquals(false, inputStepImpllinks2.equals(inputStepImpllinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagInputStepImpllinks inputStepImpllinks1 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks2 = new SwagInputStepImpllinks();

        System.assertEquals(false, inputStepImpllinks1.equals('foo'));
        System.assertEquals(false, inputStepImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagInputStepImpllinks inputStepImpllinks1 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks2 = new SwagInputStepImpllinks();
        SwagInputStepImpllinks inputStepImpllinks3;

        System.assertEquals(false, inputStepImpllinks1.equals(inputStepImpllinks3));
        System.assertEquals(false, inputStepImpllinks2.equals(inputStepImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagInputStepImpllinks inputStepImpllinks1 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks2 = new SwagInputStepImpllinks();

        System.assertEquals(inputStepImpllinks1.hashCode(), inputStepImpllinks1.hashCode());
        System.assertEquals(inputStepImpllinks2.hashCode(), inputStepImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagInputStepImpllinks inputStepImpllinks1 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks2 = SwagInputStepImpllinks.getExample();
        SwagInputStepImpllinks inputStepImpllinks3 = new SwagInputStepImpllinks();
        SwagInputStepImpllinks inputStepImpllinks4 = new SwagInputStepImpllinks();

        System.assert(inputStepImpllinks1.equals(inputStepImpllinks2));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks4));
        System.assertEquals(inputStepImpllinks1.hashCode(), inputStepImpllinks2.hashCode());
        System.assertEquals(inputStepImpllinks3.hashCode(), inputStepImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagInputStepImpllinks inputStepImpllinks = new SwagInputStepImpllinks();
        Map<String, String> propertyMappings = inputStepImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
