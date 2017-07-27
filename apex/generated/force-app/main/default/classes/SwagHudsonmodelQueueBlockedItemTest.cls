@isTest
private class SwagHudsonmodelQueueBlockedItemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem1 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem2 = hudsonmodelQueueBlockedItem1;
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem3 = new SwagHudsonmodelQueueBlockedItem();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem4 = hudsonmodelQueueBlockedItem3;

        System.assert(hudsonmodelQueueBlockedItem1.equals(hudsonmodelQueueBlockedItem2));
        System.assert(hudsonmodelQueueBlockedItem2.equals(hudsonmodelQueueBlockedItem1));
        System.assert(hudsonmodelQueueBlockedItem1.equals(hudsonmodelQueueBlockedItem1));
        System.assert(hudsonmodelQueueBlockedItem3.equals(hudsonmodelQueueBlockedItem4));
        System.assert(hudsonmodelQueueBlockedItem4.equals(hudsonmodelQueueBlockedItem3));
        System.assert(hudsonmodelQueueBlockedItem3.equals(hudsonmodelQueueBlockedItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem1 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem2 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem3 = new SwagHudsonmodelQueueBlockedItem();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem4 = new SwagHudsonmodelQueueBlockedItem();

        System.assert(hudsonmodelQueueBlockedItem1.equals(hudsonmodelQueueBlockedItem2));
        System.assert(hudsonmodelQueueBlockedItem2.equals(hudsonmodelQueueBlockedItem1));
        System.assert(hudsonmodelQueueBlockedItem3.equals(hudsonmodelQueueBlockedItem4));
        System.assert(hudsonmodelQueueBlockedItem4.equals(hudsonmodelQueueBlockedItem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem1 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem2 = new SwagHudsonmodelQueueBlockedItem();

        System.assertEquals(false, hudsonmodelQueueBlockedItem1.equals(hudsonmodelQueueBlockedItem2));
        System.assertEquals(false, hudsonmodelQueueBlockedItem2.equals(hudsonmodelQueueBlockedItem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem1 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem2 = new SwagHudsonmodelQueueBlockedItem();

        System.assertEquals(false, hudsonmodelQueueBlockedItem1.equals('foo'));
        System.assertEquals(false, hudsonmodelQueueBlockedItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem1 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem2 = new SwagHudsonmodelQueueBlockedItem();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem3;

        System.assertEquals(false, hudsonmodelQueueBlockedItem1.equals(hudsonmodelQueueBlockedItem3));
        System.assertEquals(false, hudsonmodelQueueBlockedItem2.equals(hudsonmodelQueueBlockedItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem1 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem2 = new SwagHudsonmodelQueueBlockedItem();

        System.assertEquals(hudsonmodelQueueBlockedItem1.hashCode(), hudsonmodelQueueBlockedItem1.hashCode());
        System.assertEquals(hudsonmodelQueueBlockedItem2.hashCode(), hudsonmodelQueueBlockedItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem1 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem2 = SwagHudsonmodelQueueBlockedItem.getExample();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem3 = new SwagHudsonmodelQueueBlockedItem();
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem4 = new SwagHudsonmodelQueueBlockedItem();

        System.assert(hudsonmodelQueueBlockedItem1.equals(hudsonmodelQueueBlockedItem2));
        System.assert(hudsonmodelQueueBlockedItem3.equals(hudsonmodelQueueBlockedItem4));
        System.assertEquals(hudsonmodelQueueBlockedItem1.hashCode(), hudsonmodelQueueBlockedItem2.hashCode());
        System.assertEquals(hudsonmodelQueueBlockedItem3.hashCode(), hudsonmodelQueueBlockedItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem = new SwagHudsonmodelQueueBlockedItem();
        Map<String, String> propertyMappings = hudsonmodelQueueBlockedItem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelQueueBlockedItem hudsonmodelQueueBlockedItem = new SwagHudsonmodelQueueBlockedItem();
        System.assertEquals(new List<SwagHudsonmodelCauseAction>(), hudsonmodelQueueBlockedItem.actions);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.propertyClass);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.blocked);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.buildable);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.id);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.inQueueSince);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.params);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.stuck);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.task);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.url);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.why);
        System.assertEquals(null, hudsonmodelQueueBlockedItem.buildableStartMilliseconds);
    }
}
