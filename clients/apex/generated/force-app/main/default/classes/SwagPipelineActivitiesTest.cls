@isTest
private class SwagPipelineActivitiesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineActivities pipelineActivities1 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities2 = pipelineActivities1;
        SwagPipelineActivities pipelineActivities3 = new SwagPipelineActivities();
        SwagPipelineActivities pipelineActivities4 = pipelineActivities3;

        System.assert(pipelineActivities1.equals(pipelineActivities2));
        System.assert(pipelineActivities2.equals(pipelineActivities1));
        System.assert(pipelineActivities1.equals(pipelineActivities1));
        System.assert(pipelineActivities3.equals(pipelineActivities4));
        System.assert(pipelineActivities4.equals(pipelineActivities3));
        System.assert(pipelineActivities3.equals(pipelineActivities3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineActivities pipelineActivities1 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities2 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities3 = new SwagPipelineActivities();
        SwagPipelineActivities pipelineActivities4 = new SwagPipelineActivities();

        System.assert(pipelineActivities1.equals(pipelineActivities2));
        System.assert(pipelineActivities2.equals(pipelineActivities1));
        System.assert(pipelineActivities3.equals(pipelineActivities4));
        System.assert(pipelineActivities4.equals(pipelineActivities3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineActivities pipelineActivities1 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities2 = new SwagPipelineActivities();

        System.assertEquals(false, pipelineActivities1.equals(pipelineActivities2));
        System.assertEquals(false, pipelineActivities2.equals(pipelineActivities1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineActivities pipelineActivities1 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities2 = new SwagPipelineActivities();

        System.assertEquals(false, pipelineActivities1.equals('foo'));
        System.assertEquals(false, pipelineActivities2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineActivities pipelineActivities1 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities2 = new SwagPipelineActivities();
        SwagPipelineActivities pipelineActivities3;

        System.assertEquals(false, pipelineActivities1.equals(pipelineActivities3));
        System.assertEquals(false, pipelineActivities2.equals(pipelineActivities3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineActivities pipelineActivities1 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities2 = new SwagPipelineActivities();

        System.assertEquals(pipelineActivities1.hashCode(), pipelineActivities1.hashCode());
        System.assertEquals(pipelineActivities2.hashCode(), pipelineActivities2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineActivities pipelineActivities1 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities2 = SwagPipelineActivities.getExample();
        SwagPipelineActivities pipelineActivities3 = new SwagPipelineActivities();
        SwagPipelineActivities pipelineActivities4 = new SwagPipelineActivities();

        System.assert(pipelineActivities1.equals(pipelineActivities2));
        System.assert(pipelineActivities3.equals(pipelineActivities4));
        System.assertEquals(pipelineActivities1.hashCode(), pipelineActivities2.hashCode());
        System.assertEquals(pipelineActivities3.hashCode(), pipelineActivities4.hashCode());
    }
}
