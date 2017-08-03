@isTest
private class SwagFreeStyleBuildTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFreeStyleBuild freeStyleBuild1 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild2 = freeStyleBuild1;
        SwagFreeStyleBuild freeStyleBuild3 = new SwagFreeStyleBuild();
        SwagFreeStyleBuild freeStyleBuild4 = freeStyleBuild3;

        System.assert(freeStyleBuild1.equals(freeStyleBuild2));
        System.assert(freeStyleBuild2.equals(freeStyleBuild1));
        System.assert(freeStyleBuild1.equals(freeStyleBuild1));
        System.assert(freeStyleBuild3.equals(freeStyleBuild4));
        System.assert(freeStyleBuild4.equals(freeStyleBuild3));
        System.assert(freeStyleBuild3.equals(freeStyleBuild3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFreeStyleBuild freeStyleBuild1 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild2 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild3 = new SwagFreeStyleBuild();
        SwagFreeStyleBuild freeStyleBuild4 = new SwagFreeStyleBuild();

        System.assert(freeStyleBuild1.equals(freeStyleBuild2));
        System.assert(freeStyleBuild2.equals(freeStyleBuild1));
        System.assert(freeStyleBuild3.equals(freeStyleBuild4));
        System.assert(freeStyleBuild4.equals(freeStyleBuild3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFreeStyleBuild freeStyleBuild1 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild2 = new SwagFreeStyleBuild();

        System.assertEquals(false, freeStyleBuild1.equals(freeStyleBuild2));
        System.assertEquals(false, freeStyleBuild2.equals(freeStyleBuild1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFreeStyleBuild freeStyleBuild1 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild2 = new SwagFreeStyleBuild();

        System.assertEquals(false, freeStyleBuild1.equals('foo'));
        System.assertEquals(false, freeStyleBuild2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFreeStyleBuild freeStyleBuild1 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild2 = new SwagFreeStyleBuild();
        SwagFreeStyleBuild freeStyleBuild3;

        System.assertEquals(false, freeStyleBuild1.equals(freeStyleBuild3));
        System.assertEquals(false, freeStyleBuild2.equals(freeStyleBuild3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFreeStyleBuild freeStyleBuild1 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild2 = new SwagFreeStyleBuild();

        System.assertEquals(freeStyleBuild1.hashCode(), freeStyleBuild1.hashCode());
        System.assertEquals(freeStyleBuild2.hashCode(), freeStyleBuild2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFreeStyleBuild freeStyleBuild1 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild2 = SwagFreeStyleBuild.getExample();
        SwagFreeStyleBuild freeStyleBuild3 = new SwagFreeStyleBuild();
        SwagFreeStyleBuild freeStyleBuild4 = new SwagFreeStyleBuild();

        System.assert(freeStyleBuild1.equals(freeStyleBuild2));
        System.assert(freeStyleBuild3.equals(freeStyleBuild4));
        System.assertEquals(freeStyleBuild1.hashCode(), freeStyleBuild2.hashCode());
        System.assertEquals(freeStyleBuild3.hashCode(), freeStyleBuild4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFreeStyleBuild freeStyleBuild = new SwagFreeStyleBuild();
        Map<String, String> propertyMappings = freeStyleBuild.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('r_number', propertyMappings.get('number'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFreeStyleBuild freeStyleBuild = new SwagFreeStyleBuild();
        System.assertEquals(new List<SwagCauseAction>(), freeStyleBuild.actions);
        System.assertEquals(null, freeStyleBuild.propertyClass);
        System.assertEquals(null, freeStyleBuild.r_number);
        System.assertEquals(null, freeStyleBuild.url);
        System.assertEquals(null, freeStyleBuild.building);
        System.assertEquals(null, freeStyleBuild.description);
        System.assertEquals(null, freeStyleBuild.displayName);
        System.assertEquals(null, freeStyleBuild.duration);
        System.assertEquals(null, freeStyleBuild.estimatedDuration);
        System.assertEquals(null, freeStyleBuild.executor);
        System.assertEquals(null, freeStyleBuild.fullDisplayName);
        System.assertEquals(null, freeStyleBuild.id);
        System.assertEquals(null, freeStyleBuild.keepLog);
        System.assertEquals(null, freeStyleBuild.queueId);
        System.assertEquals(null, freeStyleBuild.result);
        System.assertEquals(null, freeStyleBuild.timestamp);
        System.assertEquals(null, freeStyleBuild.builtOn);
        System.assertEquals(null, freeStyleBuild.changeSet);
    }
}
