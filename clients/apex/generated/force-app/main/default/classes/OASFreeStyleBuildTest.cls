@isTest
private class OASFreeStyleBuildTest {
    @isTest
    private static void equalsSameInstance() {
        OASFreeStyleBuild freeStyleBuild1 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild2 = freeStyleBuild1;
        OASFreeStyleBuild freeStyleBuild3 = new OASFreeStyleBuild();
        OASFreeStyleBuild freeStyleBuild4 = freeStyleBuild3;

        System.assert(freeStyleBuild1.equals(freeStyleBuild2));
        System.assert(freeStyleBuild2.equals(freeStyleBuild1));
        System.assert(freeStyleBuild1.equals(freeStyleBuild1));
        System.assert(freeStyleBuild3.equals(freeStyleBuild4));
        System.assert(freeStyleBuild4.equals(freeStyleBuild3));
        System.assert(freeStyleBuild3.equals(freeStyleBuild3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFreeStyleBuild freeStyleBuild1 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild2 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild3 = new OASFreeStyleBuild();
        OASFreeStyleBuild freeStyleBuild4 = new OASFreeStyleBuild();

        System.assert(freeStyleBuild1.equals(freeStyleBuild2));
        System.assert(freeStyleBuild2.equals(freeStyleBuild1));
        System.assert(freeStyleBuild3.equals(freeStyleBuild4));
        System.assert(freeStyleBuild4.equals(freeStyleBuild3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFreeStyleBuild freeStyleBuild1 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild2 = new OASFreeStyleBuild();

        System.assertEquals(false, freeStyleBuild1.equals('foo'));
        System.assertEquals(false, freeStyleBuild2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFreeStyleBuild freeStyleBuild1 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild2 = new OASFreeStyleBuild();
        OASFreeStyleBuild freeStyleBuild3;

        System.assertEquals(false, freeStyleBuild1.equals(freeStyleBuild3));
        System.assertEquals(false, freeStyleBuild2.equals(freeStyleBuild3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFreeStyleBuild freeStyleBuild1 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild2 = new OASFreeStyleBuild();

        System.assertEquals(freeStyleBuild1.hashCode(), freeStyleBuild1.hashCode());
        System.assertEquals(freeStyleBuild2.hashCode(), freeStyleBuild2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFreeStyleBuild freeStyleBuild1 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild2 = OASFreeStyleBuild.getExample();
        OASFreeStyleBuild freeStyleBuild3 = new OASFreeStyleBuild();
        OASFreeStyleBuild freeStyleBuild4 = new OASFreeStyleBuild();

        System.assert(freeStyleBuild1.equals(freeStyleBuild2));
        System.assert(freeStyleBuild3.equals(freeStyleBuild4));
        System.assertEquals(freeStyleBuild1.hashCode(), freeStyleBuild2.hashCode());
        System.assertEquals(freeStyleBuild3.hashCode(), freeStyleBuild4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFreeStyleBuild freeStyleBuild = new OASFreeStyleBuild();
        Map<String, String> x-property-mappings = freeStyleBuild.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
        System.assertEquals('r_number', x-property-mappings.get('number'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFreeStyleBuild freeStyleBuild = new OASFreeStyleBuild();
        System.assertEquals(new List<OASCauseAction>(), freeStyleBuild.actions);
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
