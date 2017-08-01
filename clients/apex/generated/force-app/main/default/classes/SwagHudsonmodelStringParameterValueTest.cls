@isTest
private class SwagHudsonmodelStringParameterValueTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue1 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue2 = hudsonmodelStringParameterValue1;
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue3 = new SwagHudsonmodelStringParameterValue();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue4 = hudsonmodelStringParameterValue3;

        System.assert(hudsonmodelStringParameterValue1.equals(hudsonmodelStringParameterValue2));
        System.assert(hudsonmodelStringParameterValue2.equals(hudsonmodelStringParameterValue1));
        System.assert(hudsonmodelStringParameterValue1.equals(hudsonmodelStringParameterValue1));
        System.assert(hudsonmodelStringParameterValue3.equals(hudsonmodelStringParameterValue4));
        System.assert(hudsonmodelStringParameterValue4.equals(hudsonmodelStringParameterValue3));
        System.assert(hudsonmodelStringParameterValue3.equals(hudsonmodelStringParameterValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue1 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue2 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue3 = new SwagHudsonmodelStringParameterValue();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue4 = new SwagHudsonmodelStringParameterValue();

        System.assert(hudsonmodelStringParameterValue1.equals(hudsonmodelStringParameterValue2));
        System.assert(hudsonmodelStringParameterValue2.equals(hudsonmodelStringParameterValue1));
        System.assert(hudsonmodelStringParameterValue3.equals(hudsonmodelStringParameterValue4));
        System.assert(hudsonmodelStringParameterValue4.equals(hudsonmodelStringParameterValue3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue1 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue2 = new SwagHudsonmodelStringParameterValue();

        System.assertEquals(false, hudsonmodelStringParameterValue1.equals(hudsonmodelStringParameterValue2));
        System.assertEquals(false, hudsonmodelStringParameterValue2.equals(hudsonmodelStringParameterValue1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue1 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue2 = new SwagHudsonmodelStringParameterValue();

        System.assertEquals(false, hudsonmodelStringParameterValue1.equals('foo'));
        System.assertEquals(false, hudsonmodelStringParameterValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue1 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue2 = new SwagHudsonmodelStringParameterValue();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue3;

        System.assertEquals(false, hudsonmodelStringParameterValue1.equals(hudsonmodelStringParameterValue3));
        System.assertEquals(false, hudsonmodelStringParameterValue2.equals(hudsonmodelStringParameterValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue1 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue2 = new SwagHudsonmodelStringParameterValue();

        System.assertEquals(hudsonmodelStringParameterValue1.hashCode(), hudsonmodelStringParameterValue1.hashCode());
        System.assertEquals(hudsonmodelStringParameterValue2.hashCode(), hudsonmodelStringParameterValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue1 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue2 = SwagHudsonmodelStringParameterValue.getExample();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue3 = new SwagHudsonmodelStringParameterValue();
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue4 = new SwagHudsonmodelStringParameterValue();

        System.assert(hudsonmodelStringParameterValue1.equals(hudsonmodelStringParameterValue2));
        System.assert(hudsonmodelStringParameterValue3.equals(hudsonmodelStringParameterValue4));
        System.assertEquals(hudsonmodelStringParameterValue1.hashCode(), hudsonmodelStringParameterValue2.hashCode());
        System.assertEquals(hudsonmodelStringParameterValue3.hashCode(), hudsonmodelStringParameterValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelStringParameterValue hudsonmodelStringParameterValue = new SwagHudsonmodelStringParameterValue();
        Map<String, String> propertyMappings = hudsonmodelStringParameterValue.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
