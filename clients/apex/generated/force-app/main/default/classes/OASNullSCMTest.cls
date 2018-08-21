@isTest
private class OASNullSCMTest {
    @isTest
    private static void equalsSameInstance() {
        OASNullSCM nullSCM1 = OASNullSCM.getExample();
        OASNullSCM nullSCM2 = nullSCM1;
        OASNullSCM nullSCM3 = new OASNullSCM();
        OASNullSCM nullSCM4 = nullSCM3;

        System.assert(nullSCM1.equals(nullSCM2));
        System.assert(nullSCM2.equals(nullSCM1));
        System.assert(nullSCM1.equals(nullSCM1));
        System.assert(nullSCM3.equals(nullSCM4));
        System.assert(nullSCM4.equals(nullSCM3));
        System.assert(nullSCM3.equals(nullSCM3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASNullSCM nullSCM1 = OASNullSCM.getExample();
        OASNullSCM nullSCM2 = OASNullSCM.getExample();
        OASNullSCM nullSCM3 = new OASNullSCM();
        OASNullSCM nullSCM4 = new OASNullSCM();

        System.assert(nullSCM1.equals(nullSCM2));
        System.assert(nullSCM2.equals(nullSCM1));
        System.assert(nullSCM3.equals(nullSCM4));
        System.assert(nullSCM4.equals(nullSCM3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASNullSCM nullSCM1 = OASNullSCM.getExample();
        OASNullSCM nullSCM2 = new OASNullSCM();

        System.assertEquals(false, nullSCM1.equals('foo'));
        System.assertEquals(false, nullSCM2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASNullSCM nullSCM1 = OASNullSCM.getExample();
        OASNullSCM nullSCM2 = new OASNullSCM();
        OASNullSCM nullSCM3;

        System.assertEquals(false, nullSCM1.equals(nullSCM3));
        System.assertEquals(false, nullSCM2.equals(nullSCM3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASNullSCM nullSCM1 = OASNullSCM.getExample();
        OASNullSCM nullSCM2 = new OASNullSCM();

        System.assertEquals(nullSCM1.hashCode(), nullSCM1.hashCode());
        System.assertEquals(nullSCM2.hashCode(), nullSCM2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASNullSCM nullSCM1 = OASNullSCM.getExample();
        OASNullSCM nullSCM2 = OASNullSCM.getExample();
        OASNullSCM nullSCM3 = new OASNullSCM();
        OASNullSCM nullSCM4 = new OASNullSCM();

        System.assert(nullSCM1.equals(nullSCM2));
        System.assert(nullSCM3.equals(nullSCM4));
        System.assertEquals(nullSCM1.hashCode(), nullSCM2.hashCode());
        System.assertEquals(nullSCM3.hashCode(), nullSCM4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASNullSCM nullSCM = new OASNullSCM();
        Map<String, String> propertyMappings = nullSCM.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
