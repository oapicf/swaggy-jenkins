@isTest
private class SwagHudsonmodelHudsonTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelHudson hudsonmodelHudson1 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson2 = hudsonmodelHudson1;
        SwagHudsonmodelHudson hudsonmodelHudson3 = new SwagHudsonmodelHudson();
        SwagHudsonmodelHudson hudsonmodelHudson4 = hudsonmodelHudson3;

        System.assert(hudsonmodelHudson1.equals(hudsonmodelHudson2));
        System.assert(hudsonmodelHudson2.equals(hudsonmodelHudson1));
        System.assert(hudsonmodelHudson1.equals(hudsonmodelHudson1));
        System.assert(hudsonmodelHudson3.equals(hudsonmodelHudson4));
        System.assert(hudsonmodelHudson4.equals(hudsonmodelHudson3));
        System.assert(hudsonmodelHudson3.equals(hudsonmodelHudson3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelHudson hudsonmodelHudson1 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson2 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson3 = new SwagHudsonmodelHudson();
        SwagHudsonmodelHudson hudsonmodelHudson4 = new SwagHudsonmodelHudson();

        System.assert(hudsonmodelHudson1.equals(hudsonmodelHudson2));
        System.assert(hudsonmodelHudson2.equals(hudsonmodelHudson1));
        System.assert(hudsonmodelHudson3.equals(hudsonmodelHudson4));
        System.assert(hudsonmodelHudson4.equals(hudsonmodelHudson3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelHudson hudsonmodelHudson1 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson2 = new SwagHudsonmodelHudson();

        System.assertEquals(false, hudsonmodelHudson1.equals(hudsonmodelHudson2));
        System.assertEquals(false, hudsonmodelHudson2.equals(hudsonmodelHudson1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelHudson hudsonmodelHudson1 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson2 = new SwagHudsonmodelHudson();

        System.assertEquals(false, hudsonmodelHudson1.equals('foo'));
        System.assertEquals(false, hudsonmodelHudson2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelHudson hudsonmodelHudson1 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson2 = new SwagHudsonmodelHudson();
        SwagHudsonmodelHudson hudsonmodelHudson3;

        System.assertEquals(false, hudsonmodelHudson1.equals(hudsonmodelHudson3));
        System.assertEquals(false, hudsonmodelHudson2.equals(hudsonmodelHudson3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelHudson hudsonmodelHudson1 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson2 = new SwagHudsonmodelHudson();

        System.assertEquals(hudsonmodelHudson1.hashCode(), hudsonmodelHudson1.hashCode());
        System.assertEquals(hudsonmodelHudson2.hashCode(), hudsonmodelHudson2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelHudson hudsonmodelHudson1 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson2 = SwagHudsonmodelHudson.getExample();
        SwagHudsonmodelHudson hudsonmodelHudson3 = new SwagHudsonmodelHudson();
        SwagHudsonmodelHudson hudsonmodelHudson4 = new SwagHudsonmodelHudson();

        System.assert(hudsonmodelHudson1.equals(hudsonmodelHudson2));
        System.assert(hudsonmodelHudson3.equals(hudsonmodelHudson4));
        System.assertEquals(hudsonmodelHudson1.hashCode(), hudsonmodelHudson2.hashCode());
        System.assertEquals(hudsonmodelHudson3.hashCode(), hudsonmodelHudson4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelHudson hudsonmodelHudson = new SwagHudsonmodelHudson();
        Map<String, String> propertyMappings = hudsonmodelHudson.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelHudson hudsonmodelHudson = new SwagHudsonmodelHudson();
        System.assertEquals(new List<SwagHudsonmodelHudsonassignedLabels>(), hudsonmodelHudson.assignedLabels);
        System.assertEquals(new List<SwagHudsonmodelFreeStyleProject>(), hudsonmodelHudson.jobs);
        System.assertEquals(new List<SwagHudsonmodelAllView>(), hudsonmodelHudson.views);
        System.assertEquals(null, hudsonmodelHudson.propertyClass);
        System.assertEquals(null, hudsonmodelHudson.mode);
        System.assertEquals(null, hudsonmodelHudson.nodeDescription);
        System.assertEquals(null, hudsonmodelHudson.nodeName);
        System.assertEquals(null, hudsonmodelHudson.numExecutors);
        System.assertEquals(null, hudsonmodelHudson.description);
        System.assertEquals(null, hudsonmodelHudson.primaryView);
        System.assertEquals(null, hudsonmodelHudson.quietingDown);
        System.assertEquals(null, hudsonmodelHudson.slaveAgentPort);
        System.assertEquals(null, hudsonmodelHudson.unlabeledLoad);
        System.assertEquals(null, hudsonmodelHudson.useCrumbs);
        System.assertEquals(null, hudsonmodelHudson.useSecurity);
    }
}
