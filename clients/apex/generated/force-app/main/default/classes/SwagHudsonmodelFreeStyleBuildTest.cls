@isTest
private class SwagHudsonmodelFreeStyleBuildTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild1 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild2 = hudsonmodelFreeStyleBuild1;
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild3 = new SwagHudsonmodelFreeStyleBuild();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild4 = hudsonmodelFreeStyleBuild3;

        System.assert(hudsonmodelFreeStyleBuild1.equals(hudsonmodelFreeStyleBuild2));
        System.assert(hudsonmodelFreeStyleBuild2.equals(hudsonmodelFreeStyleBuild1));
        System.assert(hudsonmodelFreeStyleBuild1.equals(hudsonmodelFreeStyleBuild1));
        System.assert(hudsonmodelFreeStyleBuild3.equals(hudsonmodelFreeStyleBuild4));
        System.assert(hudsonmodelFreeStyleBuild4.equals(hudsonmodelFreeStyleBuild3));
        System.assert(hudsonmodelFreeStyleBuild3.equals(hudsonmodelFreeStyleBuild3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild1 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild2 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild3 = new SwagHudsonmodelFreeStyleBuild();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild4 = new SwagHudsonmodelFreeStyleBuild();

        System.assert(hudsonmodelFreeStyleBuild1.equals(hudsonmodelFreeStyleBuild2));
        System.assert(hudsonmodelFreeStyleBuild2.equals(hudsonmodelFreeStyleBuild1));
        System.assert(hudsonmodelFreeStyleBuild3.equals(hudsonmodelFreeStyleBuild4));
        System.assert(hudsonmodelFreeStyleBuild4.equals(hudsonmodelFreeStyleBuild3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild1 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild2 = new SwagHudsonmodelFreeStyleBuild();

        System.assertEquals(false, hudsonmodelFreeStyleBuild1.equals(hudsonmodelFreeStyleBuild2));
        System.assertEquals(false, hudsonmodelFreeStyleBuild2.equals(hudsonmodelFreeStyleBuild1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild1 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild2 = new SwagHudsonmodelFreeStyleBuild();

        System.assertEquals(false, hudsonmodelFreeStyleBuild1.equals('foo'));
        System.assertEquals(false, hudsonmodelFreeStyleBuild2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild1 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild2 = new SwagHudsonmodelFreeStyleBuild();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild3;

        System.assertEquals(false, hudsonmodelFreeStyleBuild1.equals(hudsonmodelFreeStyleBuild3));
        System.assertEquals(false, hudsonmodelFreeStyleBuild2.equals(hudsonmodelFreeStyleBuild3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild1 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild2 = new SwagHudsonmodelFreeStyleBuild();

        System.assertEquals(hudsonmodelFreeStyleBuild1.hashCode(), hudsonmodelFreeStyleBuild1.hashCode());
        System.assertEquals(hudsonmodelFreeStyleBuild2.hashCode(), hudsonmodelFreeStyleBuild2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild1 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild2 = SwagHudsonmodelFreeStyleBuild.getExample();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild3 = new SwagHudsonmodelFreeStyleBuild();
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild4 = new SwagHudsonmodelFreeStyleBuild();

        System.assert(hudsonmodelFreeStyleBuild1.equals(hudsonmodelFreeStyleBuild2));
        System.assert(hudsonmodelFreeStyleBuild3.equals(hudsonmodelFreeStyleBuild4));
        System.assertEquals(hudsonmodelFreeStyleBuild1.hashCode(), hudsonmodelFreeStyleBuild2.hashCode());
        System.assertEquals(hudsonmodelFreeStyleBuild3.hashCode(), hudsonmodelFreeStyleBuild4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild = new SwagHudsonmodelFreeStyleBuild();
        Map<String, String> propertyMappings = hudsonmodelFreeStyleBuild.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('r_number', propertyMappings.get('number'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelFreeStyleBuild hudsonmodelFreeStyleBuild = new SwagHudsonmodelFreeStyleBuild();
        System.assertEquals(new List<SwagHudsonmodelCauseAction>(), hudsonmodelFreeStyleBuild.actions);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.propertyClass);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.r_number);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.url);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.building);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.description);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.displayName);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.duration);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.estimatedDuration);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.executor);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.fullDisplayName);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.id);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.keepLog);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.queueId);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.result);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.timestamp);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.builtOn);
        System.assertEquals(null, hudsonmodelFreeStyleBuild.changeSet);
    }
}
