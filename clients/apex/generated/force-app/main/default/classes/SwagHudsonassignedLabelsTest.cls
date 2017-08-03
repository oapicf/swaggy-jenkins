@isTest
private class SwagHudsonassignedLabelsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonassignedLabels hudsonassignedLabels1 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels2 = hudsonassignedLabels1;
        SwagHudsonassignedLabels hudsonassignedLabels3 = new SwagHudsonassignedLabels();
        SwagHudsonassignedLabels hudsonassignedLabels4 = hudsonassignedLabels3;

        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels2));
        System.assert(hudsonassignedLabels2.equals(hudsonassignedLabels1));
        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels1));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels4));
        System.assert(hudsonassignedLabels4.equals(hudsonassignedLabels3));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonassignedLabels hudsonassignedLabels1 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels2 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels3 = new SwagHudsonassignedLabels();
        SwagHudsonassignedLabels hudsonassignedLabels4 = new SwagHudsonassignedLabels();

        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels2));
        System.assert(hudsonassignedLabels2.equals(hudsonassignedLabels1));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels4));
        System.assert(hudsonassignedLabels4.equals(hudsonassignedLabels3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonassignedLabels hudsonassignedLabels1 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels2 = new SwagHudsonassignedLabels();

        System.assertEquals(false, hudsonassignedLabels1.equals(hudsonassignedLabels2));
        System.assertEquals(false, hudsonassignedLabels2.equals(hudsonassignedLabels1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonassignedLabels hudsonassignedLabels1 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels2 = new SwagHudsonassignedLabels();

        System.assertEquals(false, hudsonassignedLabels1.equals('foo'));
        System.assertEquals(false, hudsonassignedLabels2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonassignedLabels hudsonassignedLabels1 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels2 = new SwagHudsonassignedLabels();
        SwagHudsonassignedLabels hudsonassignedLabels3;

        System.assertEquals(false, hudsonassignedLabels1.equals(hudsonassignedLabels3));
        System.assertEquals(false, hudsonassignedLabels2.equals(hudsonassignedLabels3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonassignedLabels hudsonassignedLabels1 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels2 = new SwagHudsonassignedLabels();

        System.assertEquals(hudsonassignedLabels1.hashCode(), hudsonassignedLabels1.hashCode());
        System.assertEquals(hudsonassignedLabels2.hashCode(), hudsonassignedLabels2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonassignedLabels hudsonassignedLabels1 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels2 = SwagHudsonassignedLabels.getExample();
        SwagHudsonassignedLabels hudsonassignedLabels3 = new SwagHudsonassignedLabels();
        SwagHudsonassignedLabels hudsonassignedLabels4 = new SwagHudsonassignedLabels();

        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels2));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels4));
        System.assertEquals(hudsonassignedLabels1.hashCode(), hudsonassignedLabels2.hashCode());
        System.assertEquals(hudsonassignedLabels3.hashCode(), hudsonassignedLabels4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonassignedLabels hudsonassignedLabels = new SwagHudsonassignedLabels();
        Map<String, String> propertyMappings = hudsonassignedLabels.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
