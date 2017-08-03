@isTest
private class SwagNullSCMTest {
    @isTest
    private static void equalsSameInstance() {
        SwagNullSCM nullSCM1 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM2 = nullSCM1;
        SwagNullSCM nullSCM3 = new SwagNullSCM();
        SwagNullSCM nullSCM4 = nullSCM3;

        System.assert(nullSCM1.equals(nullSCM2));
        System.assert(nullSCM2.equals(nullSCM1));
        System.assert(nullSCM1.equals(nullSCM1));
        System.assert(nullSCM3.equals(nullSCM4));
        System.assert(nullSCM4.equals(nullSCM3));
        System.assert(nullSCM3.equals(nullSCM3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagNullSCM nullSCM1 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM2 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM3 = new SwagNullSCM();
        SwagNullSCM nullSCM4 = new SwagNullSCM();

        System.assert(nullSCM1.equals(nullSCM2));
        System.assert(nullSCM2.equals(nullSCM1));
        System.assert(nullSCM3.equals(nullSCM4));
        System.assert(nullSCM4.equals(nullSCM3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagNullSCM nullSCM1 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM2 = new SwagNullSCM();

        System.assertEquals(false, nullSCM1.equals(nullSCM2));
        System.assertEquals(false, nullSCM2.equals(nullSCM1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagNullSCM nullSCM1 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM2 = new SwagNullSCM();

        System.assertEquals(false, nullSCM1.equals('foo'));
        System.assertEquals(false, nullSCM2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagNullSCM nullSCM1 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM2 = new SwagNullSCM();
        SwagNullSCM nullSCM3;

        System.assertEquals(false, nullSCM1.equals(nullSCM3));
        System.assertEquals(false, nullSCM2.equals(nullSCM3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagNullSCM nullSCM1 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM2 = new SwagNullSCM();

        System.assertEquals(nullSCM1.hashCode(), nullSCM1.hashCode());
        System.assertEquals(nullSCM2.hashCode(), nullSCM2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagNullSCM nullSCM1 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM2 = SwagNullSCM.getExample();
        SwagNullSCM nullSCM3 = new SwagNullSCM();
        SwagNullSCM nullSCM4 = new SwagNullSCM();

        System.assert(nullSCM1.equals(nullSCM2));
        System.assert(nullSCM3.equals(nullSCM4));
        System.assertEquals(nullSCM1.hashCode(), nullSCM2.hashCode());
        System.assertEquals(nullSCM3.hashCode(), nullSCM4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagNullSCM nullSCM = new SwagNullSCM();
        Map<String, String> propertyMappings = nullSCM.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
