@isTest
private class OASCauseUserIdCauseTest {
    @isTest
    private static void equalsSameInstance() {
        OASCauseUserIdCause causeUserIdCause1 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause2 = causeUserIdCause1;
        OASCauseUserIdCause causeUserIdCause3 = new OASCauseUserIdCause();
        OASCauseUserIdCause causeUserIdCause4 = causeUserIdCause3;

        System.assert(causeUserIdCause1.equals(causeUserIdCause2));
        System.assert(causeUserIdCause2.equals(causeUserIdCause1));
        System.assert(causeUserIdCause1.equals(causeUserIdCause1));
        System.assert(causeUserIdCause3.equals(causeUserIdCause4));
        System.assert(causeUserIdCause4.equals(causeUserIdCause3));
        System.assert(causeUserIdCause3.equals(causeUserIdCause3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCauseUserIdCause causeUserIdCause1 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause2 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause3 = new OASCauseUserIdCause();
        OASCauseUserIdCause causeUserIdCause4 = new OASCauseUserIdCause();

        System.assert(causeUserIdCause1.equals(causeUserIdCause2));
        System.assert(causeUserIdCause2.equals(causeUserIdCause1));
        System.assert(causeUserIdCause3.equals(causeUserIdCause4));
        System.assert(causeUserIdCause4.equals(causeUserIdCause3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCauseUserIdCause causeUserIdCause1 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause2 = new OASCauseUserIdCause();

        System.assertEquals(false, causeUserIdCause1.equals('foo'));
        System.assertEquals(false, causeUserIdCause2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCauseUserIdCause causeUserIdCause1 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause2 = new OASCauseUserIdCause();
        OASCauseUserIdCause causeUserIdCause3;

        System.assertEquals(false, causeUserIdCause1.equals(causeUserIdCause3));
        System.assertEquals(false, causeUserIdCause2.equals(causeUserIdCause3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCauseUserIdCause causeUserIdCause1 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause2 = new OASCauseUserIdCause();

        System.assertEquals(causeUserIdCause1.hashCode(), causeUserIdCause1.hashCode());
        System.assertEquals(causeUserIdCause2.hashCode(), causeUserIdCause2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCauseUserIdCause causeUserIdCause1 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause2 = OASCauseUserIdCause.getExample();
        OASCauseUserIdCause causeUserIdCause3 = new OASCauseUserIdCause();
        OASCauseUserIdCause causeUserIdCause4 = new OASCauseUserIdCause();

        System.assert(causeUserIdCause1.equals(causeUserIdCause2));
        System.assert(causeUserIdCause3.equals(causeUserIdCause4));
        System.assertEquals(causeUserIdCause1.hashCode(), causeUserIdCause2.hashCode());
        System.assertEquals(causeUserIdCause3.hashCode(), causeUserIdCause4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCauseUserIdCause causeUserIdCause = new OASCauseUserIdCause();
        Map<String, String> propertyMappings = causeUserIdCause.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
