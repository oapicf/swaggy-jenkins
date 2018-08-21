@isTest
private class OASInputStepImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASInputStepImpllinks inputStepImpllinks1 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks2 = inputStepImpllinks1;
        OASInputStepImpllinks inputStepImpllinks3 = new OASInputStepImpllinks();
        OASInputStepImpllinks inputStepImpllinks4 = inputStepImpllinks3;

        System.assert(inputStepImpllinks1.equals(inputStepImpllinks2));
        System.assert(inputStepImpllinks2.equals(inputStepImpllinks1));
        System.assert(inputStepImpllinks1.equals(inputStepImpllinks1));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks4));
        System.assert(inputStepImpllinks4.equals(inputStepImpllinks3));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInputStepImpllinks inputStepImpllinks1 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks2 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks3 = new OASInputStepImpllinks();
        OASInputStepImpllinks inputStepImpllinks4 = new OASInputStepImpllinks();

        System.assert(inputStepImpllinks1.equals(inputStepImpllinks2));
        System.assert(inputStepImpllinks2.equals(inputStepImpllinks1));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks4));
        System.assert(inputStepImpllinks4.equals(inputStepImpllinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInputStepImpllinks inputStepImpllinks1 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks2 = new OASInputStepImpllinks();

        System.assertEquals(false, inputStepImpllinks1.equals('foo'));
        System.assertEquals(false, inputStepImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInputStepImpllinks inputStepImpllinks1 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks2 = new OASInputStepImpllinks();
        OASInputStepImpllinks inputStepImpllinks3;

        System.assertEquals(false, inputStepImpllinks1.equals(inputStepImpllinks3));
        System.assertEquals(false, inputStepImpllinks2.equals(inputStepImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInputStepImpllinks inputStepImpllinks1 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks2 = new OASInputStepImpllinks();

        System.assertEquals(inputStepImpllinks1.hashCode(), inputStepImpllinks1.hashCode());
        System.assertEquals(inputStepImpllinks2.hashCode(), inputStepImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInputStepImpllinks inputStepImpllinks1 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks2 = OASInputStepImpllinks.getExample();
        OASInputStepImpllinks inputStepImpllinks3 = new OASInputStepImpllinks();
        OASInputStepImpllinks inputStepImpllinks4 = new OASInputStepImpllinks();

        System.assert(inputStepImpllinks1.equals(inputStepImpllinks2));
        System.assert(inputStepImpllinks3.equals(inputStepImpllinks4));
        System.assertEquals(inputStepImpllinks1.hashCode(), inputStepImpllinks2.hashCode());
        System.assertEquals(inputStepImpllinks3.hashCode(), inputStepImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInputStepImpllinks inputStepImpllinks = new OASInputStepImpllinks();
        Map<String, String> propertyMappings = inputStepImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
