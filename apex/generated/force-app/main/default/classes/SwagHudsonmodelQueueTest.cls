@isTest
private class SwagHudsonmodelQueueTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelQueue hudsonmodelQueue1 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue2 = hudsonmodelQueue1;
        SwagHudsonmodelQueue hudsonmodelQueue3 = new SwagHudsonmodelQueue();
        SwagHudsonmodelQueue hudsonmodelQueue4 = hudsonmodelQueue3;

        System.assert(hudsonmodelQueue1.equals(hudsonmodelQueue2));
        System.assert(hudsonmodelQueue2.equals(hudsonmodelQueue1));
        System.assert(hudsonmodelQueue1.equals(hudsonmodelQueue1));
        System.assert(hudsonmodelQueue3.equals(hudsonmodelQueue4));
        System.assert(hudsonmodelQueue4.equals(hudsonmodelQueue3));
        System.assert(hudsonmodelQueue3.equals(hudsonmodelQueue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelQueue hudsonmodelQueue1 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue2 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue3 = new SwagHudsonmodelQueue();
        SwagHudsonmodelQueue hudsonmodelQueue4 = new SwagHudsonmodelQueue();

        System.assert(hudsonmodelQueue1.equals(hudsonmodelQueue2));
        System.assert(hudsonmodelQueue2.equals(hudsonmodelQueue1));
        System.assert(hudsonmodelQueue3.equals(hudsonmodelQueue4));
        System.assert(hudsonmodelQueue4.equals(hudsonmodelQueue3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelQueue hudsonmodelQueue1 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue2 = new SwagHudsonmodelQueue();

        System.assertEquals(false, hudsonmodelQueue1.equals(hudsonmodelQueue2));
        System.assertEquals(false, hudsonmodelQueue2.equals(hudsonmodelQueue1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelQueue hudsonmodelQueue1 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue2 = new SwagHudsonmodelQueue();

        System.assertEquals(false, hudsonmodelQueue1.equals('foo'));
        System.assertEquals(false, hudsonmodelQueue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelQueue hudsonmodelQueue1 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue2 = new SwagHudsonmodelQueue();
        SwagHudsonmodelQueue hudsonmodelQueue3;

        System.assertEquals(false, hudsonmodelQueue1.equals(hudsonmodelQueue3));
        System.assertEquals(false, hudsonmodelQueue2.equals(hudsonmodelQueue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelQueue hudsonmodelQueue1 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue2 = new SwagHudsonmodelQueue();

        System.assertEquals(hudsonmodelQueue1.hashCode(), hudsonmodelQueue1.hashCode());
        System.assertEquals(hudsonmodelQueue2.hashCode(), hudsonmodelQueue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelQueue hudsonmodelQueue1 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue2 = SwagHudsonmodelQueue.getExample();
        SwagHudsonmodelQueue hudsonmodelQueue3 = new SwagHudsonmodelQueue();
        SwagHudsonmodelQueue hudsonmodelQueue4 = new SwagHudsonmodelQueue();

        System.assert(hudsonmodelQueue1.equals(hudsonmodelQueue2));
        System.assert(hudsonmodelQueue3.equals(hudsonmodelQueue4));
        System.assertEquals(hudsonmodelQueue1.hashCode(), hudsonmodelQueue2.hashCode());
        System.assertEquals(hudsonmodelQueue3.hashCode(), hudsonmodelQueue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelQueue hudsonmodelQueue = new SwagHudsonmodelQueue();
        Map<String, String> propertyMappings = hudsonmodelQueue.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelQueue hudsonmodelQueue = new SwagHudsonmodelQueue();
        System.assertEquals(new List<SwagHudsonmodelQueueBlockedItem>(), hudsonmodelQueue.items);
        System.assertEquals(null, hudsonmodelQueue.propertyClass);
    }
}
