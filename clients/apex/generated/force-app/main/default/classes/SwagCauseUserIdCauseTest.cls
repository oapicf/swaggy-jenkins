@isTest
private class SwagCauseUserIdCauseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagCauseUserIdCause causeUserIdCause1 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause2 = causeUserIdCause1;
        SwagCauseUserIdCause causeUserIdCause3 = new SwagCauseUserIdCause();
        SwagCauseUserIdCause causeUserIdCause4 = causeUserIdCause3;

        System.assert(causeUserIdCause1.equals(causeUserIdCause2));
        System.assert(causeUserIdCause2.equals(causeUserIdCause1));
        System.assert(causeUserIdCause1.equals(causeUserIdCause1));
        System.assert(causeUserIdCause3.equals(causeUserIdCause4));
        System.assert(causeUserIdCause4.equals(causeUserIdCause3));
        System.assert(causeUserIdCause3.equals(causeUserIdCause3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagCauseUserIdCause causeUserIdCause1 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause2 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause3 = new SwagCauseUserIdCause();
        SwagCauseUserIdCause causeUserIdCause4 = new SwagCauseUserIdCause();

        System.assert(causeUserIdCause1.equals(causeUserIdCause2));
        System.assert(causeUserIdCause2.equals(causeUserIdCause1));
        System.assert(causeUserIdCause3.equals(causeUserIdCause4));
        System.assert(causeUserIdCause4.equals(causeUserIdCause3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagCauseUserIdCause causeUserIdCause1 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause2 = new SwagCauseUserIdCause();

        System.assertEquals(false, causeUserIdCause1.equals(causeUserIdCause2));
        System.assertEquals(false, causeUserIdCause2.equals(causeUserIdCause1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagCauseUserIdCause causeUserIdCause1 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause2 = new SwagCauseUserIdCause();

        System.assertEquals(false, causeUserIdCause1.equals('foo'));
        System.assertEquals(false, causeUserIdCause2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagCauseUserIdCause causeUserIdCause1 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause2 = new SwagCauseUserIdCause();
        SwagCauseUserIdCause causeUserIdCause3;

        System.assertEquals(false, causeUserIdCause1.equals(causeUserIdCause3));
        System.assertEquals(false, causeUserIdCause2.equals(causeUserIdCause3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagCauseUserIdCause causeUserIdCause1 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause2 = new SwagCauseUserIdCause();

        System.assertEquals(causeUserIdCause1.hashCode(), causeUserIdCause1.hashCode());
        System.assertEquals(causeUserIdCause2.hashCode(), causeUserIdCause2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagCauseUserIdCause causeUserIdCause1 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause2 = SwagCauseUserIdCause.getExample();
        SwagCauseUserIdCause causeUserIdCause3 = new SwagCauseUserIdCause();
        SwagCauseUserIdCause causeUserIdCause4 = new SwagCauseUserIdCause();

        System.assert(causeUserIdCause1.equals(causeUserIdCause2));
        System.assert(causeUserIdCause3.equals(causeUserIdCause4));
        System.assertEquals(causeUserIdCause1.hashCode(), causeUserIdCause2.hashCode());
        System.assertEquals(causeUserIdCause3.hashCode(), causeUserIdCause4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagCauseUserIdCause causeUserIdCause = new SwagCauseUserIdCause();
        Map<String, String> propertyMappings = causeUserIdCause.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
