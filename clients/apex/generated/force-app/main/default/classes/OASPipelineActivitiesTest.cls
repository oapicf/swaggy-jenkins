@isTest
private class OASPipelineActivitiesTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineActivities pipelineActivities1 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities2 = pipelineActivities1;
        OASPipelineActivities pipelineActivities3 = new OASPipelineActivities();
        OASPipelineActivities pipelineActivities4 = pipelineActivities3;

        System.assert(pipelineActivities1.equals(pipelineActivities2));
        System.assert(pipelineActivities2.equals(pipelineActivities1));
        System.assert(pipelineActivities1.equals(pipelineActivities1));
        System.assert(pipelineActivities3.equals(pipelineActivities4));
        System.assert(pipelineActivities4.equals(pipelineActivities3));
        System.assert(pipelineActivities3.equals(pipelineActivities3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineActivities pipelineActivities1 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities2 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities3 = new OASPipelineActivities();
        OASPipelineActivities pipelineActivities4 = new OASPipelineActivities();

        System.assert(pipelineActivities1.equals(pipelineActivities2));
        System.assert(pipelineActivities2.equals(pipelineActivities1));
        System.assert(pipelineActivities3.equals(pipelineActivities4));
        System.assert(pipelineActivities4.equals(pipelineActivities3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineActivities pipelineActivities1 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities2 = new OASPipelineActivities();

        System.assertEquals(false, pipelineActivities1.equals('foo'));
        System.assertEquals(false, pipelineActivities2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineActivities pipelineActivities1 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities2 = new OASPipelineActivities();
        OASPipelineActivities pipelineActivities3;

        System.assertEquals(false, pipelineActivities1.equals(pipelineActivities3));
        System.assertEquals(false, pipelineActivities2.equals(pipelineActivities3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineActivities pipelineActivities1 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities2 = new OASPipelineActivities();

        System.assertEquals(pipelineActivities1.hashCode(), pipelineActivities1.hashCode());
        System.assertEquals(pipelineActivities2.hashCode(), pipelineActivities2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineActivities pipelineActivities1 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities2 = OASPipelineActivities.getExample();
        OASPipelineActivities pipelineActivities3 = new OASPipelineActivities();
        OASPipelineActivities pipelineActivities4 = new OASPipelineActivities();

        System.assert(pipelineActivities1.equals(pipelineActivities2));
        System.assert(pipelineActivities3.equals(pipelineActivities4));
        System.assertEquals(pipelineActivities1.hashCode(), pipelineActivities2.hashCode());
        System.assertEquals(pipelineActivities3.hashCode(), pipelineActivities4.hashCode());
    }
}
