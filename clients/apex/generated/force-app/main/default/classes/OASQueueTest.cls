@isTest
private class OASQueueTest {
    @isTest
    private static void equalsSameInstance() {
        OASQueue queue1 = OASQueue.getExample();
        OASQueue queue2 = queue1;
        OASQueue queue3 = new OASQueue();
        OASQueue queue4 = queue3;

        System.assert(queue1.equals(queue2));
        System.assert(queue2.equals(queue1));
        System.assert(queue1.equals(queue1));
        System.assert(queue3.equals(queue4));
        System.assert(queue4.equals(queue3));
        System.assert(queue3.equals(queue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQueue queue1 = OASQueue.getExample();
        OASQueue queue2 = OASQueue.getExample();
        OASQueue queue3 = new OASQueue();
        OASQueue queue4 = new OASQueue();

        System.assert(queue1.equals(queue2));
        System.assert(queue2.equals(queue1));
        System.assert(queue3.equals(queue4));
        System.assert(queue4.equals(queue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQueue queue1 = OASQueue.getExample();
        OASQueue queue2 = new OASQueue();

        System.assertEquals(false, queue1.equals('foo'));
        System.assertEquals(false, queue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQueue queue1 = OASQueue.getExample();
        OASQueue queue2 = new OASQueue();
        OASQueue queue3;

        System.assertEquals(false, queue1.equals(queue3));
        System.assertEquals(false, queue2.equals(queue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQueue queue1 = OASQueue.getExample();
        OASQueue queue2 = new OASQueue();

        System.assertEquals(queue1.hashCode(), queue1.hashCode());
        System.assertEquals(queue2.hashCode(), queue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQueue queue1 = OASQueue.getExample();
        OASQueue queue2 = OASQueue.getExample();
        OASQueue queue3 = new OASQueue();
        OASQueue queue4 = new OASQueue();

        System.assert(queue1.equals(queue2));
        System.assert(queue3.equals(queue4));
        System.assertEquals(queue1.hashCode(), queue2.hashCode());
        System.assertEquals(queue3.hashCode(), queue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQueue queue = new OASQueue();
        Map<String, String> x-property-mappings = queue.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQueue queue = new OASQueue();
        System.assertEquals(new List<OASQueueBlockedItem>(), queue.items);
        System.assertEquals(null, queue.propertyClass);
    }
}
