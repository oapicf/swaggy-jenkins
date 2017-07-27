@isTest
private class SwagHudsonscmNullSCMTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonscmNullSCM hudsonscmNullSCM1 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM2 = hudsonscmNullSCM1;
        SwagHudsonscmNullSCM hudsonscmNullSCM3 = new SwagHudsonscmNullSCM();
        SwagHudsonscmNullSCM hudsonscmNullSCM4 = hudsonscmNullSCM3;

        System.assert(hudsonscmNullSCM1.equals(hudsonscmNullSCM2));
        System.assert(hudsonscmNullSCM2.equals(hudsonscmNullSCM1));
        System.assert(hudsonscmNullSCM1.equals(hudsonscmNullSCM1));
        System.assert(hudsonscmNullSCM3.equals(hudsonscmNullSCM4));
        System.assert(hudsonscmNullSCM4.equals(hudsonscmNullSCM3));
        System.assert(hudsonscmNullSCM3.equals(hudsonscmNullSCM3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonscmNullSCM hudsonscmNullSCM1 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM2 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM3 = new SwagHudsonscmNullSCM();
        SwagHudsonscmNullSCM hudsonscmNullSCM4 = new SwagHudsonscmNullSCM();

        System.assert(hudsonscmNullSCM1.equals(hudsonscmNullSCM2));
        System.assert(hudsonscmNullSCM2.equals(hudsonscmNullSCM1));
        System.assert(hudsonscmNullSCM3.equals(hudsonscmNullSCM4));
        System.assert(hudsonscmNullSCM4.equals(hudsonscmNullSCM3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonscmNullSCM hudsonscmNullSCM1 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM2 = new SwagHudsonscmNullSCM();

        System.assertEquals(false, hudsonscmNullSCM1.equals(hudsonscmNullSCM2));
        System.assertEquals(false, hudsonscmNullSCM2.equals(hudsonscmNullSCM1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonscmNullSCM hudsonscmNullSCM1 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM2 = new SwagHudsonscmNullSCM();

        System.assertEquals(false, hudsonscmNullSCM1.equals('foo'));
        System.assertEquals(false, hudsonscmNullSCM2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonscmNullSCM hudsonscmNullSCM1 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM2 = new SwagHudsonscmNullSCM();
        SwagHudsonscmNullSCM hudsonscmNullSCM3;

        System.assertEquals(false, hudsonscmNullSCM1.equals(hudsonscmNullSCM3));
        System.assertEquals(false, hudsonscmNullSCM2.equals(hudsonscmNullSCM3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonscmNullSCM hudsonscmNullSCM1 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM2 = new SwagHudsonscmNullSCM();

        System.assertEquals(hudsonscmNullSCM1.hashCode(), hudsonscmNullSCM1.hashCode());
        System.assertEquals(hudsonscmNullSCM2.hashCode(), hudsonscmNullSCM2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonscmNullSCM hudsonscmNullSCM1 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM2 = SwagHudsonscmNullSCM.getExample();
        SwagHudsonscmNullSCM hudsonscmNullSCM3 = new SwagHudsonscmNullSCM();
        SwagHudsonscmNullSCM hudsonscmNullSCM4 = new SwagHudsonscmNullSCM();

        System.assert(hudsonscmNullSCM1.equals(hudsonscmNullSCM2));
        System.assert(hudsonscmNullSCM3.equals(hudsonscmNullSCM4));
        System.assertEquals(hudsonscmNullSCM1.hashCode(), hudsonscmNullSCM2.hashCode());
        System.assertEquals(hudsonscmNullSCM3.hashCode(), hudsonscmNullSCM4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonscmNullSCM hudsonscmNullSCM = new SwagHudsonscmNullSCM();
        Map<String, String> propertyMappings = hudsonscmNullSCM.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
