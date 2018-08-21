@isTest
private class OASQueueBlockedItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASQueueBlockedItem queueBlockedItem1 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem2 = queueBlockedItem1;
        OASQueueBlockedItem queueBlockedItem3 = new OASQueueBlockedItem();
        OASQueueBlockedItem queueBlockedItem4 = queueBlockedItem3;

        System.assert(queueBlockedItem1.equals(queueBlockedItem2));
        System.assert(queueBlockedItem2.equals(queueBlockedItem1));
        System.assert(queueBlockedItem1.equals(queueBlockedItem1));
        System.assert(queueBlockedItem3.equals(queueBlockedItem4));
        System.assert(queueBlockedItem4.equals(queueBlockedItem3));
        System.assert(queueBlockedItem3.equals(queueBlockedItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQueueBlockedItem queueBlockedItem1 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem2 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem3 = new OASQueueBlockedItem();
        OASQueueBlockedItem queueBlockedItem4 = new OASQueueBlockedItem();

        System.assert(queueBlockedItem1.equals(queueBlockedItem2));
        System.assert(queueBlockedItem2.equals(queueBlockedItem1));
        System.assert(queueBlockedItem3.equals(queueBlockedItem4));
        System.assert(queueBlockedItem4.equals(queueBlockedItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQueueBlockedItem queueBlockedItem1 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem2 = new OASQueueBlockedItem();

        System.assertEquals(false, queueBlockedItem1.equals('foo'));
        System.assertEquals(false, queueBlockedItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQueueBlockedItem queueBlockedItem1 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem2 = new OASQueueBlockedItem();
        OASQueueBlockedItem queueBlockedItem3;

        System.assertEquals(false, queueBlockedItem1.equals(queueBlockedItem3));
        System.assertEquals(false, queueBlockedItem2.equals(queueBlockedItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQueueBlockedItem queueBlockedItem1 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem2 = new OASQueueBlockedItem();

        System.assertEquals(queueBlockedItem1.hashCode(), queueBlockedItem1.hashCode());
        System.assertEquals(queueBlockedItem2.hashCode(), queueBlockedItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQueueBlockedItem queueBlockedItem1 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem2 = OASQueueBlockedItem.getExample();
        OASQueueBlockedItem queueBlockedItem3 = new OASQueueBlockedItem();
        OASQueueBlockedItem queueBlockedItem4 = new OASQueueBlockedItem();

        System.assert(queueBlockedItem1.equals(queueBlockedItem2));
        System.assert(queueBlockedItem3.equals(queueBlockedItem4));
        System.assertEquals(queueBlockedItem1.hashCode(), queueBlockedItem2.hashCode());
        System.assertEquals(queueBlockedItem3.hashCode(), queueBlockedItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQueueBlockedItem queueBlockedItem = new OASQueueBlockedItem();
        Map<String, String> propertyMappings = queueBlockedItem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQueueBlockedItem queueBlockedItem = new OASQueueBlockedItem();
        System.assertEquals(new List<OASCauseAction>(), queueBlockedItem.actions);
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
