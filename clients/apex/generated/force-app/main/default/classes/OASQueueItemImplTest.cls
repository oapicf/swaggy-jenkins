@isTest
private class OASQueueItemImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASQueueItemImpl queueItemImpl1 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl2 = queueItemImpl1;
        OASQueueItemImpl queueItemImpl3 = new OASQueueItemImpl();
        OASQueueItemImpl queueItemImpl4 = queueItemImpl3;

        System.assert(queueItemImpl1.equals(queueItemImpl2));
        System.assert(queueItemImpl2.equals(queueItemImpl1));
        System.assert(queueItemImpl1.equals(queueItemImpl1));
        System.assert(queueItemImpl3.equals(queueItemImpl4));
        System.assert(queueItemImpl4.equals(queueItemImpl3));
        System.assert(queueItemImpl3.equals(queueItemImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQueueItemImpl queueItemImpl1 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl2 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl3 = new OASQueueItemImpl();
        OASQueueItemImpl queueItemImpl4 = new OASQueueItemImpl();

        System.assert(queueItemImpl1.equals(queueItemImpl2));
        System.assert(queueItemImpl2.equals(queueItemImpl1));
        System.assert(queueItemImpl3.equals(queueItemImpl4));
        System.assert(queueItemImpl4.equals(queueItemImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQueueItemImpl queueItemImpl1 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl2 = new OASQueueItemImpl();

        System.assertEquals(false, queueItemImpl1.equals('foo'));
        System.assertEquals(false, queueItemImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQueueItemImpl queueItemImpl1 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl2 = new OASQueueItemImpl();
        OASQueueItemImpl queueItemImpl3;

        System.assertEquals(false, queueItemImpl1.equals(queueItemImpl3));
        System.assertEquals(false, queueItemImpl2.equals(queueItemImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQueueItemImpl queueItemImpl1 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl2 = new OASQueueItemImpl();

        System.assertEquals(queueItemImpl1.hashCode(), queueItemImpl1.hashCode());
        System.assertEquals(queueItemImpl2.hashCode(), queueItemImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQueueItemImpl queueItemImpl1 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl2 = OASQueueItemImpl.getExample();
        OASQueueItemImpl queueItemImpl3 = new OASQueueItemImpl();
        OASQueueItemImpl queueItemImpl4 = new OASQueueItemImpl();

        System.assert(queueItemImpl1.equals(queueItemImpl2));
        System.assert(queueItemImpl3.equals(queueItemImpl4));
        System.assertEquals(queueItemImpl1.hashCode(), queueItemImpl2.hashCode());
        System.assertEquals(queueItemImpl3.hashCode(), queueItemImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQueueItemImpl queueItemImpl = new OASQueueItemImpl();
        Map<String, String> x-property-mappings = queueItemImpl.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
