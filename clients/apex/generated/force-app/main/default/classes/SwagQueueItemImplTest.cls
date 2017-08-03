@isTest
private class SwagQueueItemImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagQueueItemImpl queueItemImpl1 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl2 = queueItemImpl1;
        SwagQueueItemImpl queueItemImpl3 = new SwagQueueItemImpl();
        SwagQueueItemImpl queueItemImpl4 = queueItemImpl3;

        System.assert(queueItemImpl1.equals(queueItemImpl2));
        System.assert(queueItemImpl2.equals(queueItemImpl1));
        System.assert(queueItemImpl1.equals(queueItemImpl1));
        System.assert(queueItemImpl3.equals(queueItemImpl4));
        System.assert(queueItemImpl4.equals(queueItemImpl3));
        System.assert(queueItemImpl3.equals(queueItemImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagQueueItemImpl queueItemImpl1 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl2 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl3 = new SwagQueueItemImpl();
        SwagQueueItemImpl queueItemImpl4 = new SwagQueueItemImpl();

        System.assert(queueItemImpl1.equals(queueItemImpl2));
        System.assert(queueItemImpl2.equals(queueItemImpl1));
        System.assert(queueItemImpl3.equals(queueItemImpl4));
        System.assert(queueItemImpl4.equals(queueItemImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagQueueItemImpl queueItemImpl1 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl2 = new SwagQueueItemImpl();

        System.assertEquals(false, queueItemImpl1.equals(queueItemImpl2));
        System.assertEquals(false, queueItemImpl2.equals(queueItemImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagQueueItemImpl queueItemImpl1 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl2 = new SwagQueueItemImpl();

        System.assertEquals(false, queueItemImpl1.equals('foo'));
        System.assertEquals(false, queueItemImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagQueueItemImpl queueItemImpl1 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl2 = new SwagQueueItemImpl();
        SwagQueueItemImpl queueItemImpl3;

        System.assertEquals(false, queueItemImpl1.equals(queueItemImpl3));
        System.assertEquals(false, queueItemImpl2.equals(queueItemImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagQueueItemImpl queueItemImpl1 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl2 = new SwagQueueItemImpl();

        System.assertEquals(queueItemImpl1.hashCode(), queueItemImpl1.hashCode());
        System.assertEquals(queueItemImpl2.hashCode(), queueItemImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagQueueItemImpl queueItemImpl1 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl2 = SwagQueueItemImpl.getExample();
        SwagQueueItemImpl queueItemImpl3 = new SwagQueueItemImpl();
        SwagQueueItemImpl queueItemImpl4 = new SwagQueueItemImpl();

        System.assert(queueItemImpl1.equals(queueItemImpl2));
        System.assert(queueItemImpl3.equals(queueItemImpl4));
        System.assertEquals(queueItemImpl1.hashCode(), queueItemImpl2.hashCode());
        System.assertEquals(queueItemImpl3.hashCode(), queueItemImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagQueueItemImpl queueItemImpl = new SwagQueueItemImpl();
        Map<String, String> propertyMappings = queueItemImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
