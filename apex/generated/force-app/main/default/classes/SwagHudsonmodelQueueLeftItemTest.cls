@isTest
private class SwagHudsonmodelQueueLeftItemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem1 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem2 = hudsonmodelQueueLeftItem1;
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem3 = new SwagHudsonmodelQueueLeftItem();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem4 = hudsonmodelQueueLeftItem3;

        System.assert(hudsonmodelQueueLeftItem1.equals(hudsonmodelQueueLeftItem2));
        System.assert(hudsonmodelQueueLeftItem2.equals(hudsonmodelQueueLeftItem1));
        System.assert(hudsonmodelQueueLeftItem1.equals(hudsonmodelQueueLeftItem1));
        System.assert(hudsonmodelQueueLeftItem3.equals(hudsonmodelQueueLeftItem4));
        System.assert(hudsonmodelQueueLeftItem4.equals(hudsonmodelQueueLeftItem3));
        System.assert(hudsonmodelQueueLeftItem3.equals(hudsonmodelQueueLeftItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem1 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem2 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem3 = new SwagHudsonmodelQueueLeftItem();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem4 = new SwagHudsonmodelQueueLeftItem();

        System.assert(hudsonmodelQueueLeftItem1.equals(hudsonmodelQueueLeftItem2));
        System.assert(hudsonmodelQueueLeftItem2.equals(hudsonmodelQueueLeftItem1));
        System.assert(hudsonmodelQueueLeftItem3.equals(hudsonmodelQueueLeftItem4));
        System.assert(hudsonmodelQueueLeftItem4.equals(hudsonmodelQueueLeftItem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem1 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem2 = new SwagHudsonmodelQueueLeftItem();

        System.assertEquals(false, hudsonmodelQueueLeftItem1.equals(hudsonmodelQueueLeftItem2));
        System.assertEquals(false, hudsonmodelQueueLeftItem2.equals(hudsonmodelQueueLeftItem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem1 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem2 = new SwagHudsonmodelQueueLeftItem();

        System.assertEquals(false, hudsonmodelQueueLeftItem1.equals('foo'));
        System.assertEquals(false, hudsonmodelQueueLeftItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem1 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem2 = new SwagHudsonmodelQueueLeftItem();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem3;

        System.assertEquals(false, hudsonmodelQueueLeftItem1.equals(hudsonmodelQueueLeftItem3));
        System.assertEquals(false, hudsonmodelQueueLeftItem2.equals(hudsonmodelQueueLeftItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem1 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem2 = new SwagHudsonmodelQueueLeftItem();

        System.assertEquals(hudsonmodelQueueLeftItem1.hashCode(), hudsonmodelQueueLeftItem1.hashCode());
        System.assertEquals(hudsonmodelQueueLeftItem2.hashCode(), hudsonmodelQueueLeftItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem1 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem2 = SwagHudsonmodelQueueLeftItem.getExample();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem3 = new SwagHudsonmodelQueueLeftItem();
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem4 = new SwagHudsonmodelQueueLeftItem();

        System.assert(hudsonmodelQueueLeftItem1.equals(hudsonmodelQueueLeftItem2));
        System.assert(hudsonmodelQueueLeftItem3.equals(hudsonmodelQueueLeftItem4));
        System.assertEquals(hudsonmodelQueueLeftItem1.hashCode(), hudsonmodelQueueLeftItem2.hashCode());
        System.assertEquals(hudsonmodelQueueLeftItem3.hashCode(), hudsonmodelQueueLeftItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem = new SwagHudsonmodelQueueLeftItem();
        Map<String, String> propertyMappings = hudsonmodelQueueLeftItem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelQueueLeftItem hudsonmodelQueueLeftItem = new SwagHudsonmodelQueueLeftItem();
        System.assertEquals(new List<SwagHudsonmodelCauseAction>(), hudsonmodelQueueLeftItem.actions);
        System.assertEquals(null, hudsonmodelQueueLeftItem.propertyClass);
        System.assertEquals(null, hudsonmodelQueueLeftItem.blocked);
        System.assertEquals(null, hudsonmodelQueueLeftItem.buildable);
        System.assertEquals(null, hudsonmodelQueueLeftItem.id);
        System.assertEquals(null, hudsonmodelQueueLeftItem.inQueueSince);
        System.assertEquals(null, hudsonmodelQueueLeftItem.params);
        System.assertEquals(null, hudsonmodelQueueLeftItem.stuck);
        System.assertEquals(null, hudsonmodelQueueLeftItem.task);
        System.assertEquals(null, hudsonmodelQueueLeftItem.url);
        System.assertEquals(null, hudsonmodelQueueLeftItem.why);
        System.assertEquals(null, hudsonmodelQueueLeftItem.cancelled);
        System.assertEquals(null, hudsonmodelQueueLeftItem.executable);
    }
}
