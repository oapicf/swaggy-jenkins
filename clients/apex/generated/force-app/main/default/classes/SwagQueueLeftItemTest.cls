@isTest
private class SwagQueueLeftItemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagQueueLeftItem queueLeftItem1 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem2 = queueLeftItem1;
        SwagQueueLeftItem queueLeftItem3 = new SwagQueueLeftItem();
        SwagQueueLeftItem queueLeftItem4 = queueLeftItem3;

        System.assert(queueLeftItem1.equals(queueLeftItem2));
        System.assert(queueLeftItem2.equals(queueLeftItem1));
        System.assert(queueLeftItem1.equals(queueLeftItem1));
        System.assert(queueLeftItem3.equals(queueLeftItem4));
        System.assert(queueLeftItem4.equals(queueLeftItem3));
        System.assert(queueLeftItem3.equals(queueLeftItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagQueueLeftItem queueLeftItem1 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem2 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem3 = new SwagQueueLeftItem();
        SwagQueueLeftItem queueLeftItem4 = new SwagQueueLeftItem();

        System.assert(queueLeftItem1.equals(queueLeftItem2));
        System.assert(queueLeftItem2.equals(queueLeftItem1));
        System.assert(queueLeftItem3.equals(queueLeftItem4));
        System.assert(queueLeftItem4.equals(queueLeftItem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagQueueLeftItem queueLeftItem1 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem2 = new SwagQueueLeftItem();

        System.assertEquals(false, queueLeftItem1.equals(queueLeftItem2));
        System.assertEquals(false, queueLeftItem2.equals(queueLeftItem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagQueueLeftItem queueLeftItem1 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem2 = new SwagQueueLeftItem();

        System.assertEquals(false, queueLeftItem1.equals('foo'));
        System.assertEquals(false, queueLeftItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagQueueLeftItem queueLeftItem1 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem2 = new SwagQueueLeftItem();
        SwagQueueLeftItem queueLeftItem3;

        System.assertEquals(false, queueLeftItem1.equals(queueLeftItem3));
        System.assertEquals(false, queueLeftItem2.equals(queueLeftItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagQueueLeftItem queueLeftItem1 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem2 = new SwagQueueLeftItem();

        System.assertEquals(queueLeftItem1.hashCode(), queueLeftItem1.hashCode());
        System.assertEquals(queueLeftItem2.hashCode(), queueLeftItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagQueueLeftItem queueLeftItem1 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem2 = SwagQueueLeftItem.getExample();
        SwagQueueLeftItem queueLeftItem3 = new SwagQueueLeftItem();
        SwagQueueLeftItem queueLeftItem4 = new SwagQueueLeftItem();

        System.assert(queueLeftItem1.equals(queueLeftItem2));
        System.assert(queueLeftItem3.equals(queueLeftItem4));
        System.assertEquals(queueLeftItem1.hashCode(), queueLeftItem2.hashCode());
        System.assertEquals(queueLeftItem3.hashCode(), queueLeftItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagQueueLeftItem queueLeftItem = new SwagQueueLeftItem();
        Map<String, String> propertyMappings = queueLeftItem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagQueueLeftItem queueLeftItem = new SwagQueueLeftItem();
        System.assertEquals(new List<SwagCauseAction>(), queueLeftItem.actions);
        System.assertEquals(null, queueLeftItem.propertyClass);
        System.assertEquals(null, queueLeftItem.blocked);
        System.assertEquals(null, queueLeftItem.buildable);
        System.assertEquals(null, queueLeftItem.id);
        System.assertEquals(null, queueLeftItem.inQueueSince);
        System.assertEquals(null, queueLeftItem.params);
        System.assertEquals(null, queueLeftItem.stuck);
        System.assertEquals(null, queueLeftItem.task);
        System.assertEquals(null, queueLeftItem.url);
        System.assertEquals(null, queueLeftItem.why);
        System.assertEquals(null, queueLeftItem.cancelled);
        System.assertEquals(null, queueLeftItem.executable);
    }
}
