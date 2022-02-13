@isTest
private class OASCauseActionTest {
    @isTest
    private static void equalsSameInstance() {
        OASCauseAction causeAction1 = OASCauseAction.getExample();
        OASCauseAction causeAction2 = causeAction1;
        OASCauseAction causeAction3 = new OASCauseAction();
        OASCauseAction causeAction4 = causeAction3;

        System.assert(causeAction1.equals(causeAction2));
        System.assert(causeAction2.equals(causeAction1));
        System.assert(causeAction1.equals(causeAction1));
        System.assert(causeAction3.equals(causeAction4));
        System.assert(causeAction4.equals(causeAction3));
        System.assert(causeAction3.equals(causeAction3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCauseAction causeAction1 = OASCauseAction.getExample();
        OASCauseAction causeAction2 = OASCauseAction.getExample();
        OASCauseAction causeAction3 = new OASCauseAction();
        OASCauseAction causeAction4 = new OASCauseAction();

        System.assert(causeAction1.equals(causeAction2));
        System.assert(causeAction2.equals(causeAction1));
        System.assert(causeAction3.equals(causeAction4));
        System.assert(causeAction4.equals(causeAction3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCauseAction causeAction1 = OASCauseAction.getExample();
        OASCauseAction causeAction2 = new OASCauseAction();

        System.assertEquals(false, causeAction1.equals('foo'));
        System.assertEquals(false, causeAction2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCauseAction causeAction1 = OASCauseAction.getExample();
        OASCauseAction causeAction2 = new OASCauseAction();
        OASCauseAction causeAction3;

        System.assertEquals(false, causeAction1.equals(causeAction3));
        System.assertEquals(false, causeAction2.equals(causeAction3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCauseAction causeAction1 = OASCauseAction.getExample();
        OASCauseAction causeAction2 = new OASCauseAction();

        System.assertEquals(causeAction1.hashCode(), causeAction1.hashCode());
        System.assertEquals(causeAction2.hashCode(), causeAction2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCauseAction causeAction1 = OASCauseAction.getExample();
        OASCauseAction causeAction2 = OASCauseAction.getExample();
        OASCauseAction causeAction3 = new OASCauseAction();
        OASCauseAction causeAction4 = new OASCauseAction();

        System.assert(causeAction1.equals(causeAction2));
        System.assert(causeAction3.equals(causeAction4));
        System.assertEquals(causeAction1.hashCode(), causeAction2.hashCode());
        System.assertEquals(causeAction3.hashCode(), causeAction4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCauseAction causeAction = new OASCauseAction();
        Map<String, String> x-property-mappings = causeAction.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCauseAction causeAction = new OASCauseAction();
        System.assertEquals(new List<OASCauseUserIdCause>(), causeAction.causes);
        System.assertEquals(null, causeAction.propertyClass);
    }
}
