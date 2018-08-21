@isTest
private class OASQueueLeftItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASQueueLeftItem queueLeftItem1 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem2 = queueLeftItem1;
        OASQueueLeftItem queueLeftItem3 = new OASQueueLeftItem();
        OASQueueLeftItem queueLeftItem4 = queueLeftItem3;

        System.assert(queueLeftItem1.equals(queueLeftItem2));
        System.assert(queueLeftItem2.equals(queueLeftItem1));
        System.assert(queueLeftItem1.equals(queueLeftItem1));
        System.assert(queueLeftItem3.equals(queueLeftItem4));
        System.assert(queueLeftItem4.equals(queueLeftItem3));
        System.assert(queueLeftItem3.equals(queueLeftItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQueueLeftItem queueLeftItem1 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem2 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem3 = new OASQueueLeftItem();
        OASQueueLeftItem queueLeftItem4 = new OASQueueLeftItem();

        System.assert(queueLeftItem1.equals(queueLeftItem2));
        System.assert(queueLeftItem2.equals(queueLeftItem1));
        System.assert(queueLeftItem3.equals(queueLeftItem4));
        System.assert(queueLeftItem4.equals(queueLeftItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQueueLeftItem queueLeftItem1 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem2 = new OASQueueLeftItem();

        System.assertEquals(false, queueLeftItem1.equals('foo'));
        System.assertEquals(false, queueLeftItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQueueLeftItem queueLeftItem1 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem2 = new OASQueueLeftItem();
        OASQueueLeftItem queueLeftItem3;

        System.assertEquals(false, queueLeftItem1.equals(queueLeftItem3));
        System.assertEquals(false, queueLeftItem2.equals(queueLeftItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQueueLeftItem queueLeftItem1 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem2 = new OASQueueLeftItem();

        System.assertEquals(queueLeftItem1.hashCode(), queueLeftItem1.hashCode());
        System.assertEquals(queueLeftItem2.hashCode(), queueLeftItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQueueLeftItem queueLeftItem1 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem2 = OASQueueLeftItem.getExample();
        OASQueueLeftItem queueLeftItem3 = new OASQueueLeftItem();
        OASQueueLeftItem queueLeftItem4 = new OASQueueLeftItem();

        System.assert(queueLeftItem1.equals(queueLeftItem2));
        System.assert(queueLeftItem3.equals(queueLeftItem4));
        System.assertEquals(queueLeftItem1.hashCode(), queueLeftItem2.hashCode());
        System.assertEquals(queueLeftItem3.hashCode(), queueLeftItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQueueLeftItem queueLeftItem = new OASQueueLeftItem();
        Map<String, String> propertyMappings = queueLeftItem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQueueLeftItem queueLeftItem = new OASQueueLeftItem();
        System.assertEquals(new List<OASCauseAction>(), queueLeftItem.actions);
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
