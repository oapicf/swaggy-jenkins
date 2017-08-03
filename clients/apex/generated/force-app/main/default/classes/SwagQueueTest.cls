@isTest
private class SwagQueueTest {
    @isTest
    private static void equalsSameInstance() {
        SwagQueue queue1 = SwagQueue.getExample();
        SwagQueue queue2 = queue1;
        SwagQueue queue3 = new SwagQueue();
        SwagQueue queue4 = queue3;

        System.assert(queue1.equals(queue2));
        System.assert(queue2.equals(queue1));
        System.assert(queue1.equals(queue1));
        System.assert(queue3.equals(queue4));
        System.assert(queue4.equals(queue3));
        System.assert(queue3.equals(queue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagQueue queue1 = SwagQueue.getExample();
        SwagQueue queue2 = SwagQueue.getExample();
        SwagQueue queue3 = new SwagQueue();
        SwagQueue queue4 = new SwagQueue();

        System.assert(queue1.equals(queue2));
        System.assert(queue2.equals(queue1));
        System.assert(queue3.equals(queue4));
        System.assert(queue4.equals(queue3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagQueue queue1 = SwagQueue.getExample();
        SwagQueue queue2 = new SwagQueue();

        System.assertEquals(false, queue1.equals(queue2));
        System.assertEquals(false, queue2.equals(queue1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagQueue queue1 = SwagQueue.getExample();
        SwagQueue queue2 = new SwagQueue();

        System.assertEquals(false, queue1.equals('foo'));
        System.assertEquals(false, queue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagQueue queue1 = SwagQueue.getExample();
        SwagQueue queue2 = new SwagQueue();
        SwagQueue queue3;

        System.assertEquals(false, queue1.equals(queue3));
        System.assertEquals(false, queue2.equals(queue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagQueue queue1 = SwagQueue.getExample();
        SwagQueue queue2 = new SwagQueue();

        System.assertEquals(queue1.hashCode(), queue1.hashCode());
        System.assertEquals(queue2.hashCode(), queue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagQueue queue1 = SwagQueue.getExample();
        SwagQueue queue2 = SwagQueue.getExample();
        SwagQueue queue3 = new SwagQueue();
        SwagQueue queue4 = new SwagQueue();

        System.assert(queue1.equals(queue2));
        System.assert(queue3.equals(queue4));
        System.assertEquals(queue1.hashCode(), queue2.hashCode());
        System.assertEquals(queue3.hashCode(), queue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagQueue queue = new SwagQueue();
        Map<String, String> propertyMappings = queue.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagQueue queue = new SwagQueue();
        System.assertEquals(new List<SwagQueueBlockedItem>(), queue.items);
        System.assertEquals(null, queue.propertyClass);
    }
}
