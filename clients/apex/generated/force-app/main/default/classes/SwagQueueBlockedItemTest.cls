@isTest
private class SwagQueueBlockedItemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagQueueBlockedItem queueBlockedItem1 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem2 = queueBlockedItem1;
        SwagQueueBlockedItem queueBlockedItem3 = new SwagQueueBlockedItem();
        SwagQueueBlockedItem queueBlockedItem4 = queueBlockedItem3;

        System.assert(queueBlockedItem1.equals(queueBlockedItem2));
        System.assert(queueBlockedItem2.equals(queueBlockedItem1));
        System.assert(queueBlockedItem1.equals(queueBlockedItem1));
        System.assert(queueBlockedItem3.equals(queueBlockedItem4));
        System.assert(queueBlockedItem4.equals(queueBlockedItem3));
        System.assert(queueBlockedItem3.equals(queueBlockedItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagQueueBlockedItem queueBlockedItem1 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem2 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem3 = new SwagQueueBlockedItem();
        SwagQueueBlockedItem queueBlockedItem4 = new SwagQueueBlockedItem();

        System.assert(queueBlockedItem1.equals(queueBlockedItem2));
        System.assert(queueBlockedItem2.equals(queueBlockedItem1));
        System.assert(queueBlockedItem3.equals(queueBlockedItem4));
        System.assert(queueBlockedItem4.equals(queueBlockedItem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagQueueBlockedItem queueBlockedItem1 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem2 = new SwagQueueBlockedItem();

        System.assertEquals(false, queueBlockedItem1.equals(queueBlockedItem2));
        System.assertEquals(false, queueBlockedItem2.equals(queueBlockedItem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagQueueBlockedItem queueBlockedItem1 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem2 = new SwagQueueBlockedItem();

        System.assertEquals(false, queueBlockedItem1.equals('foo'));
        System.assertEquals(false, queueBlockedItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagQueueBlockedItem queueBlockedItem1 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem2 = new SwagQueueBlockedItem();
        SwagQueueBlockedItem queueBlockedItem3;

        System.assertEquals(false, queueBlockedItem1.equals(queueBlockedItem3));
        System.assertEquals(false, queueBlockedItem2.equals(queueBlockedItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagQueueBlockedItem queueBlockedItem1 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem2 = new SwagQueueBlockedItem();

        System.assertEquals(queueBlockedItem1.hashCode(), queueBlockedItem1.hashCode());
        System.assertEquals(queueBlockedItem2.hashCode(), queueBlockedItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagQueueBlockedItem queueBlockedItem1 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem2 = SwagQueueBlockedItem.getExample();
        SwagQueueBlockedItem queueBlockedItem3 = new SwagQueueBlockedItem();
        SwagQueueBlockedItem queueBlockedItem4 = new SwagQueueBlockedItem();

        System.assert(queueBlockedItem1.equals(queueBlockedItem2));
        System.assert(queueBlockedItem3.equals(queueBlockedItem4));
        System.assertEquals(queueBlockedItem1.hashCode(), queueBlockedItem2.hashCode());
        System.assertEquals(queueBlockedItem3.hashCode(), queueBlockedItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagQueueBlockedItem queueBlockedItem = new SwagQueueBlockedItem();
        Map<String, String> propertyMappings = queueBlockedItem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagQueueBlockedItem queueBlockedItem = new SwagQueueBlockedItem();
        System.assertEquals(new List<SwagCauseAction>(), queueBlockedItem.actions);
        System.assertEquals(null, queueBlockedItem.propertyClass);
        System.assertEquals(null, queueBlockedItem.blocked);
        System.assertEquals(null, queueBlockedItem.buildable);
        System.assertEquals(null, queueBlockedItem.id);
        System.assertEquals(null, queueBlockedItem.inQueueSince);
        System.assertEquals(null, queueBlockedItem.params);
        System.assertEquals(null, queueBlockedItem.stuck);
        System.assertEquals(null, queueBlockedItem.task);
        System.assertEquals(null, queueBlockedItem.url);
        System.assertEquals(null, queueBlockedItem.why);
        System.assertEquals(null, queueBlockedItem.buildableStartMilliseconds);
    }
}
