@isTest
private class SwagHudsonTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudson hudson1 = SwagHudson.getExample();
        SwagHudson hudson2 = hudson1;
        SwagHudson hudson3 = new SwagHudson();
        SwagHudson hudson4 = hudson3;

        System.assert(hudson1.equals(hudson2));
        System.assert(hudson2.equals(hudson1));
        System.assert(hudson1.equals(hudson1));
        System.assert(hudson3.equals(hudson4));
        System.assert(hudson4.equals(hudson3));
        System.assert(hudson3.equals(hudson3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudson hudson1 = SwagHudson.getExample();
        SwagHudson hudson2 = SwagHudson.getExample();
        SwagHudson hudson3 = new SwagHudson();
        SwagHudson hudson4 = new SwagHudson();

        System.assert(hudson1.equals(hudson2));
        System.assert(hudson2.equals(hudson1));
        System.assert(hudson3.equals(hudson4));
        System.assert(hudson4.equals(hudson3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudson hudson1 = SwagHudson.getExample();
        SwagHudson hudson2 = new SwagHudson();

        System.assertEquals(false, hudson1.equals(hudson2));
        System.assertEquals(false, hudson2.equals(hudson1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudson hudson1 = SwagHudson.getExample();
        SwagHudson hudson2 = new SwagHudson();

        System.assertEquals(false, hudson1.equals('foo'));
        System.assertEquals(false, hudson2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudson hudson1 = SwagHudson.getExample();
        SwagHudson hudson2 = new SwagHudson();
        SwagHudson hudson3;

        System.assertEquals(false, hudson1.equals(hudson3));
        System.assertEquals(false, hudson2.equals(hudson3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudson hudson1 = SwagHudson.getExample();
        SwagHudson hudson2 = new SwagHudson();

        System.assertEquals(hudson1.hashCode(), hudson1.hashCode());
        System.assertEquals(hudson2.hashCode(), hudson2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudson hudson1 = SwagHudson.getExample();
        SwagHudson hudson2 = SwagHudson.getExample();
        SwagHudson hudson3 = new SwagHudson();
        SwagHudson hudson4 = new SwagHudson();

        System.assert(hudson1.equals(hudson2));
        System.assert(hudson3.equals(hudson4));
        System.assertEquals(hudson1.hashCode(), hudson2.hashCode());
        System.assertEquals(hudson3.hashCode(), hudson4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudson hudson = new SwagHudson();
        Map<String, String> propertyMappings = hudson.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudson hudson = new SwagHudson();
        System.assertEquals(new List<SwagHudsonassignedLabels>(), hudson.assignedLabels);
        System.assertEquals(new List<SwagFreeStyleProject>(), hudson.jobs);
        System.assertEquals(new List<SwagAllView>(), hudson.views);
        System.assertEquals(null, hudson.propertyClass);
        System.assertEquals(null, hudson.mode);
        System.assertEquals(null, hudson.nodeDescription);
        System.assertEquals(null, hudson.nodeName);
        System.assertEquals(null, hudson.numExecutors);
        System.assertEquals(null, hudson.description);
        System.assertEquals(null, hudson.primaryView);
        System.assertEquals(null, hudson.quietingDown);
        System.assertEquals(null, hudson.slaveAgentPort);
        System.assertEquals(null, hudson.unlabeledLoad);
        System.assertEquals(null, hudson.useCrumbs);
        System.assertEquals(null, hudson.useSecurity);
    }
}
