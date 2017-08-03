@isTest
private class SwagStringParameterValueTest {
    @isTest
    private static void equalsSameInstance() {
        SwagStringParameterValue stringParameterValue1 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue2 = stringParameterValue1;
        SwagStringParameterValue stringParameterValue3 = new SwagStringParameterValue();
        SwagStringParameterValue stringParameterValue4 = stringParameterValue3;

        System.assert(stringParameterValue1.equals(stringParameterValue2));
        System.assert(stringParameterValue2.equals(stringParameterValue1));
        System.assert(stringParameterValue1.equals(stringParameterValue1));
        System.assert(stringParameterValue3.equals(stringParameterValue4));
        System.assert(stringParameterValue4.equals(stringParameterValue3));
        System.assert(stringParameterValue3.equals(stringParameterValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagStringParameterValue stringParameterValue1 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue2 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue3 = new SwagStringParameterValue();
        SwagStringParameterValue stringParameterValue4 = new SwagStringParameterValue();

        System.assert(stringParameterValue1.equals(stringParameterValue2));
        System.assert(stringParameterValue2.equals(stringParameterValue1));
        System.assert(stringParameterValue3.equals(stringParameterValue4));
        System.assert(stringParameterValue4.equals(stringParameterValue3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagStringParameterValue stringParameterValue1 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue2 = new SwagStringParameterValue();

        System.assertEquals(false, stringParameterValue1.equals(stringParameterValue2));
        System.assertEquals(false, stringParameterValue2.equals(stringParameterValue1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagStringParameterValue stringParameterValue1 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue2 = new SwagStringParameterValue();

        System.assertEquals(false, stringParameterValue1.equals('foo'));
        System.assertEquals(false, stringParameterValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagStringParameterValue stringParameterValue1 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue2 = new SwagStringParameterValue();
        SwagStringParameterValue stringParameterValue3;

        System.assertEquals(false, stringParameterValue1.equals(stringParameterValue3));
        System.assertEquals(false, stringParameterValue2.equals(stringParameterValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagStringParameterValue stringParameterValue1 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue2 = new SwagStringParameterValue();

        System.assertEquals(stringParameterValue1.hashCode(), stringParameterValue1.hashCode());
        System.assertEquals(stringParameterValue2.hashCode(), stringParameterValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagStringParameterValue stringParameterValue1 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue2 = SwagStringParameterValue.getExample();
        SwagStringParameterValue stringParameterValue3 = new SwagStringParameterValue();
        SwagStringParameterValue stringParameterValue4 = new SwagStringParameterValue();

        System.assert(stringParameterValue1.equals(stringParameterValue2));
        System.assert(stringParameterValue3.equals(stringParameterValue4));
        System.assertEquals(stringParameterValue1.hashCode(), stringParameterValue2.hashCode());
        System.assertEquals(stringParameterValue3.hashCode(), stringParameterValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagStringParameterValue stringParameterValue = new SwagStringParameterValue();
        Map<String, String> propertyMappings = stringParameterValue.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
