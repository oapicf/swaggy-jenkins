@isTest
private class OASInputStepImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASInputStepImpl inputStepImpl1 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl2 = inputStepImpl1;
        OASInputStepImpl inputStepImpl3 = new OASInputStepImpl();
        OASInputStepImpl inputStepImpl4 = inputStepImpl3;

        System.assert(inputStepImpl1.equals(inputStepImpl2));
        System.assert(inputStepImpl2.equals(inputStepImpl1));
        System.assert(inputStepImpl1.equals(inputStepImpl1));
        System.assert(inputStepImpl3.equals(inputStepImpl4));
        System.assert(inputStepImpl4.equals(inputStepImpl3));
        System.assert(inputStepImpl3.equals(inputStepImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInputStepImpl inputStepImpl1 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl2 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl3 = new OASInputStepImpl();
        OASInputStepImpl inputStepImpl4 = new OASInputStepImpl();

        System.assert(inputStepImpl1.equals(inputStepImpl2));
        System.assert(inputStepImpl2.equals(inputStepImpl1));
        System.assert(inputStepImpl3.equals(inputStepImpl4));
        System.assert(inputStepImpl4.equals(inputStepImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInputStepImpl inputStepImpl1 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl2 = new OASInputStepImpl();

        System.assertEquals(false, inputStepImpl1.equals('foo'));
        System.assertEquals(false, inputStepImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInputStepImpl inputStepImpl1 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl2 = new OASInputStepImpl();
        OASInputStepImpl inputStepImpl3;

        System.assertEquals(false, inputStepImpl1.equals(inputStepImpl3));
        System.assertEquals(false, inputStepImpl2.equals(inputStepImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInputStepImpl inputStepImpl1 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl2 = new OASInputStepImpl();

        System.assertEquals(inputStepImpl1.hashCode(), inputStepImpl1.hashCode());
        System.assertEquals(inputStepImpl2.hashCode(), inputStepImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInputStepImpl inputStepImpl1 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl2 = OASInputStepImpl.getExample();
        OASInputStepImpl inputStepImpl3 = new OASInputStepImpl();
        OASInputStepImpl inputStepImpl4 = new OASInputStepImpl();

        System.assert(inputStepImpl1.equals(inputStepImpl2));
        System.assert(inputStepImpl3.equals(inputStepImpl4));
        System.assertEquals(inputStepImpl1.hashCode(), inputStepImpl2.hashCode());
        System.assertEquals(inputStepImpl3.hashCode(), inputStepImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInputStepImpl inputStepImpl = new OASInputStepImpl();
        Map<String, String> x-property-mappings = inputStepImpl.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInputStepImpl inputStepImpl = new OASInputStepImpl();
        System.assertEquals(new List<OASStringParameterDefinition>(), inputStepImpl.parameters);
        System.assertEquals(null, inputStepImpl.propertyClass);
        System.assertEquals(null, inputStepImpl.links);
        System.assertEquals(null, inputStepImpl.id);
        System.assertEquals(null, inputStepImpl.message);
        System.assertEquals(null, inputStepImpl.ok);
        System.assertEquals(null, inputStepImpl.submitter);
    }
}
