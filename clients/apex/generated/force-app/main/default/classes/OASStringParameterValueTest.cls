@isTest
private class OASStringParameterValueTest {
    @isTest
    private static void equalsSameInstance() {
        OASStringParameterValue stringParameterValue1 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue2 = stringParameterValue1;
        OASStringParameterValue stringParameterValue3 = new OASStringParameterValue();
        OASStringParameterValue stringParameterValue4 = stringParameterValue3;

        System.assert(stringParameterValue1.equals(stringParameterValue2));
        System.assert(stringParameterValue2.equals(stringParameterValue1));
        System.assert(stringParameterValue1.equals(stringParameterValue1));
        System.assert(stringParameterValue3.equals(stringParameterValue4));
        System.assert(stringParameterValue4.equals(stringParameterValue3));
        System.assert(stringParameterValue3.equals(stringParameterValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStringParameterValue stringParameterValue1 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue2 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue3 = new OASStringParameterValue();
        OASStringParameterValue stringParameterValue4 = new OASStringParameterValue();

        System.assert(stringParameterValue1.equals(stringParameterValue2));
        System.assert(stringParameterValue2.equals(stringParameterValue1));
        System.assert(stringParameterValue3.equals(stringParameterValue4));
        System.assert(stringParameterValue4.equals(stringParameterValue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStringParameterValue stringParameterValue1 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue2 = new OASStringParameterValue();

        System.assertEquals(false, stringParameterValue1.equals('foo'));
        System.assertEquals(false, stringParameterValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStringParameterValue stringParameterValue1 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue2 = new OASStringParameterValue();
        OASStringParameterValue stringParameterValue3;

        System.assertEquals(false, stringParameterValue1.equals(stringParameterValue3));
        System.assertEquals(false, stringParameterValue2.equals(stringParameterValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStringParameterValue stringParameterValue1 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue2 = new OASStringParameterValue();

        System.assertEquals(stringParameterValue1.hashCode(), stringParameterValue1.hashCode());
        System.assertEquals(stringParameterValue2.hashCode(), stringParameterValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStringParameterValue stringParameterValue1 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue2 = OASStringParameterValue.getExample();
        OASStringParameterValue stringParameterValue3 = new OASStringParameterValue();
        OASStringParameterValue stringParameterValue4 = new OASStringParameterValue();

        System.assert(stringParameterValue1.equals(stringParameterValue2));
        System.assert(stringParameterValue3.equals(stringParameterValue4));
        System.assertEquals(stringParameterValue1.hashCode(), stringParameterValue2.hashCode());
        System.assertEquals(stringParameterValue3.hashCode(), stringParameterValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASStringParameterValue stringParameterValue = new OASStringParameterValue();
        Map<String, String> propertyMappings = stringParameterValue.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
