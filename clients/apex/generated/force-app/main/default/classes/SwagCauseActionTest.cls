@isTest
private class SwagCauseActionTest {
    @isTest
    private static void equalsSameInstance() {
        SwagCauseAction causeAction1 = SwagCauseAction.getExample();
        SwagCauseAction causeAction2 = causeAction1;
        SwagCauseAction causeAction3 = new SwagCauseAction();
        SwagCauseAction causeAction4 = causeAction3;

        System.assert(causeAction1.equals(causeAction2));
        System.assert(causeAction2.equals(causeAction1));
        System.assert(causeAction1.equals(causeAction1));
        System.assert(causeAction3.equals(causeAction4));
        System.assert(causeAction4.equals(causeAction3));
        System.assert(causeAction3.equals(causeAction3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagCauseAction causeAction1 = SwagCauseAction.getExample();
        SwagCauseAction causeAction2 = SwagCauseAction.getExample();
        SwagCauseAction causeAction3 = new SwagCauseAction();
        SwagCauseAction causeAction4 = new SwagCauseAction();

        System.assert(causeAction1.equals(causeAction2));
        System.assert(causeAction2.equals(causeAction1));
        System.assert(causeAction3.equals(causeAction4));
        System.assert(causeAction4.equals(causeAction3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagCauseAction causeAction1 = SwagCauseAction.getExample();
        SwagCauseAction causeAction2 = new SwagCauseAction();

        System.assertEquals(false, causeAction1.equals(causeAction2));
        System.assertEquals(false, causeAction2.equals(causeAction1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagCauseAction causeAction1 = SwagCauseAction.getExample();
        SwagCauseAction causeAction2 = new SwagCauseAction();

        System.assertEquals(false, causeAction1.equals('foo'));
        System.assertEquals(false, causeAction2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagCauseAction causeAction1 = SwagCauseAction.getExample();
        SwagCauseAction causeAction2 = new SwagCauseAction();
        SwagCauseAction causeAction3;

        System.assertEquals(false, causeAction1.equals(causeAction3));
        System.assertEquals(false, causeAction2.equals(causeAction3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagCauseAction causeAction1 = SwagCauseAction.getExample();
        SwagCauseAction causeAction2 = new SwagCauseAction();

        System.assertEquals(causeAction1.hashCode(), causeAction1.hashCode());
        System.assertEquals(causeAction2.hashCode(), causeAction2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagCauseAction causeAction1 = SwagCauseAction.getExample();
        SwagCauseAction causeAction2 = SwagCauseAction.getExample();
        SwagCauseAction causeAction3 = new SwagCauseAction();
        SwagCauseAction causeAction4 = new SwagCauseAction();

        System.assert(causeAction1.equals(causeAction2));
        System.assert(causeAction3.equals(causeAction4));
        System.assertEquals(causeAction1.hashCode(), causeAction2.hashCode());
        System.assertEquals(causeAction3.hashCode(), causeAction4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagCauseAction causeAction = new SwagCauseAction();
        Map<String, String> propertyMappings = causeAction.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagCauseAction causeAction = new SwagCauseAction();
        System.assertEquals(new List<SwagCauseUserIdCause>(), causeAction.causes);
        System.assertEquals(null, causeAction.propertyClass);
    }
}
