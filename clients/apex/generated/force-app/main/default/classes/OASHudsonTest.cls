@isTest
private class OASHudsonTest {
    @isTest
    private static void equalsSameInstance() {
        OASHudson hudson1 = OASHudson.getExample();
        OASHudson hudson2 = hudson1;
        OASHudson hudson3 = new OASHudson();
        OASHudson hudson4 = hudson3;

        System.assert(hudson1.equals(hudson2));
        System.assert(hudson2.equals(hudson1));
        System.assert(hudson1.equals(hudson1));
        System.assert(hudson3.equals(hudson4));
        System.assert(hudson4.equals(hudson3));
        System.assert(hudson3.equals(hudson3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHudson hudson1 = OASHudson.getExample();
        OASHudson hudson2 = OASHudson.getExample();
        OASHudson hudson3 = new OASHudson();
        OASHudson hudson4 = new OASHudson();

        System.assert(hudson1.equals(hudson2));
        System.assert(hudson2.equals(hudson1));
        System.assert(hudson3.equals(hudson4));
        System.assert(hudson4.equals(hudson3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHudson hudson1 = OASHudson.getExample();
        OASHudson hudson2 = new OASHudson();

        System.assertEquals(false, hudson1.equals('foo'));
        System.assertEquals(false, hudson2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHudson hudson1 = OASHudson.getExample();
        OASHudson hudson2 = new OASHudson();
        OASHudson hudson3;

        System.assertEquals(false, hudson1.equals(hudson3));
        System.assertEquals(false, hudson2.equals(hudson3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHudson hudson1 = OASHudson.getExample();
        OASHudson hudson2 = new OASHudson();

        System.assertEquals(hudson1.hashCode(), hudson1.hashCode());
        System.assertEquals(hudson2.hashCode(), hudson2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHudson hudson1 = OASHudson.getExample();
        OASHudson hudson2 = OASHudson.getExample();
        OASHudson hudson3 = new OASHudson();
        OASHudson hudson4 = new OASHudson();

        System.assert(hudson1.equals(hudson2));
        System.assert(hudson3.equals(hudson4));
        System.assertEquals(hudson1.hashCode(), hudson2.hashCode());
        System.assertEquals(hudson3.hashCode(), hudson4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASHudson hudson = new OASHudson();
        Map<String, String> propertyMappings = hudson.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASHudson hudson = new OASHudson();
        System.assertEquals(new List<OASHudsonassignedLabels>(), hudson.assignedLabels);
        System.assertEquals(new List<OASFreeStyleProject>(), hudson.jobs);
        System.assertEquals(new List<OASAllView>(), hudson.views);
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
