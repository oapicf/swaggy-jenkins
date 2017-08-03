@isTest
private class SwagInputStepImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagInputStepImpl inputStepImpl1 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl2 = inputStepImpl1;
        SwagInputStepImpl inputStepImpl3 = new SwagInputStepImpl();
        SwagInputStepImpl inputStepImpl4 = inputStepImpl3;

        System.assert(inputStepImpl1.equals(inputStepImpl2));
        System.assert(inputStepImpl2.equals(inputStepImpl1));
        System.assert(inputStepImpl1.equals(inputStepImpl1));
        System.assert(inputStepImpl3.equals(inputStepImpl4));
        System.assert(inputStepImpl4.equals(inputStepImpl3));
        System.assert(inputStepImpl3.equals(inputStepImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagInputStepImpl inputStepImpl1 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl2 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl3 = new SwagInputStepImpl();
        SwagInputStepImpl inputStepImpl4 = new SwagInputStepImpl();

        System.assert(inputStepImpl1.equals(inputStepImpl2));
        System.assert(inputStepImpl2.equals(inputStepImpl1));
        System.assert(inputStepImpl3.equals(inputStepImpl4));
        System.assert(inputStepImpl4.equals(inputStepImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagInputStepImpl inputStepImpl1 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl2 = new SwagInputStepImpl();

        System.assertEquals(false, inputStepImpl1.equals(inputStepImpl2));
        System.assertEquals(false, inputStepImpl2.equals(inputStepImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagInputStepImpl inputStepImpl1 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl2 = new SwagInputStepImpl();

        System.assertEquals(false, inputStepImpl1.equals('foo'));
        System.assertEquals(false, inputStepImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagInputStepImpl inputStepImpl1 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl2 = new SwagInputStepImpl();
        SwagInputStepImpl inputStepImpl3;

        System.assertEquals(false, inputStepImpl1.equals(inputStepImpl3));
        System.assertEquals(false, inputStepImpl2.equals(inputStepImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagInputStepImpl inputStepImpl1 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl2 = new SwagInputStepImpl();

        System.assertEquals(inputStepImpl1.hashCode(), inputStepImpl1.hashCode());
        System.assertEquals(inputStepImpl2.hashCode(), inputStepImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagInputStepImpl inputStepImpl1 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl2 = SwagInputStepImpl.getExample();
        SwagInputStepImpl inputStepImpl3 = new SwagInputStepImpl();
        SwagInputStepImpl inputStepImpl4 = new SwagInputStepImpl();

        System.assert(inputStepImpl1.equals(inputStepImpl2));
        System.assert(inputStepImpl3.equals(inputStepImpl4));
        System.assertEquals(inputStepImpl1.hashCode(), inputStepImpl2.hashCode());
        System.assertEquals(inputStepImpl3.hashCode(), inputStepImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagInputStepImpl inputStepImpl = new SwagInputStepImpl();
        Map<String, String> propertyMappings = inputStepImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagInputStepImpl inputStepImpl = new SwagInputStepImpl();
        System.assertEquals(new List<SwagStringParameterDefinition>(), inputStepImpl.parameters);
        System.assertEquals(null, inputStepImpl.propertyClass);
        System.assertEquals(null, inputStepImpl.links);
        System.assertEquals(null, inputStepImpl.id);
        System.assertEquals(null, inputStepImpl.message);
        System.assertEquals(null, inputStepImpl.ok);
        System.assertEquals(null, inputStepImpl.submitter);
    }
}
