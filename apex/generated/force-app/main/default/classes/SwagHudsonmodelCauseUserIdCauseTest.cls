@isTest
private class SwagHudsonmodelCauseUserIdCauseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause1 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause2 = hudsonmodelCauseUserIdCause1;
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause3 = new SwagHudsonmodelCauseUserIdCause();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause4 = hudsonmodelCauseUserIdCause3;

        System.assert(hudsonmodelCauseUserIdCause1.equals(hudsonmodelCauseUserIdCause2));
        System.assert(hudsonmodelCauseUserIdCause2.equals(hudsonmodelCauseUserIdCause1));
        System.assert(hudsonmodelCauseUserIdCause1.equals(hudsonmodelCauseUserIdCause1));
        System.assert(hudsonmodelCauseUserIdCause3.equals(hudsonmodelCauseUserIdCause4));
        System.assert(hudsonmodelCauseUserIdCause4.equals(hudsonmodelCauseUserIdCause3));
        System.assert(hudsonmodelCauseUserIdCause3.equals(hudsonmodelCauseUserIdCause3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause1 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause2 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause3 = new SwagHudsonmodelCauseUserIdCause();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause4 = new SwagHudsonmodelCauseUserIdCause();

        System.assert(hudsonmodelCauseUserIdCause1.equals(hudsonmodelCauseUserIdCause2));
        System.assert(hudsonmodelCauseUserIdCause2.equals(hudsonmodelCauseUserIdCause1));
        System.assert(hudsonmodelCauseUserIdCause3.equals(hudsonmodelCauseUserIdCause4));
        System.assert(hudsonmodelCauseUserIdCause4.equals(hudsonmodelCauseUserIdCause3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause1 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause2 = new SwagHudsonmodelCauseUserIdCause();

        System.assertEquals(false, hudsonmodelCauseUserIdCause1.equals(hudsonmodelCauseUserIdCause2));
        System.assertEquals(false, hudsonmodelCauseUserIdCause2.equals(hudsonmodelCauseUserIdCause1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause1 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause2 = new SwagHudsonmodelCauseUserIdCause();

        System.assertEquals(false, hudsonmodelCauseUserIdCause1.equals('foo'));
        System.assertEquals(false, hudsonmodelCauseUserIdCause2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause1 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause2 = new SwagHudsonmodelCauseUserIdCause();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause3;

        System.assertEquals(false, hudsonmodelCauseUserIdCause1.equals(hudsonmodelCauseUserIdCause3));
        System.assertEquals(false, hudsonmodelCauseUserIdCause2.equals(hudsonmodelCauseUserIdCause3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause1 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause2 = new SwagHudsonmodelCauseUserIdCause();

        System.assertEquals(hudsonmodelCauseUserIdCause1.hashCode(), hudsonmodelCauseUserIdCause1.hashCode());
        System.assertEquals(hudsonmodelCauseUserIdCause2.hashCode(), hudsonmodelCauseUserIdCause2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause1 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause2 = SwagHudsonmodelCauseUserIdCause.getExample();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause3 = new SwagHudsonmodelCauseUserIdCause();
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause4 = new SwagHudsonmodelCauseUserIdCause();

        System.assert(hudsonmodelCauseUserIdCause1.equals(hudsonmodelCauseUserIdCause2));
        System.assert(hudsonmodelCauseUserIdCause3.equals(hudsonmodelCauseUserIdCause4));
        System.assertEquals(hudsonmodelCauseUserIdCause1.hashCode(), hudsonmodelCauseUserIdCause2.hashCode());
        System.assertEquals(hudsonmodelCauseUserIdCause3.hashCode(), hudsonmodelCauseUserIdCause4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause = new SwagHudsonmodelCauseUserIdCause();
        Map<String, String> propertyMappings = hudsonmodelCauseUserIdCause.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
