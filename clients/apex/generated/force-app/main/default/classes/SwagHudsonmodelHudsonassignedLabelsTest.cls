@isTest
private class SwagHudsonmodelHudsonassignedLabelsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels1 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels2 = hudsonmodelHudsonassignedLabels1;
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels3 = new SwagHudsonmodelHudsonassignedLabels();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels4 = hudsonmodelHudsonassignedLabels3;

        System.assert(hudsonmodelHudsonassignedLabels1.equals(hudsonmodelHudsonassignedLabels2));
        System.assert(hudsonmodelHudsonassignedLabels2.equals(hudsonmodelHudsonassignedLabels1));
        System.assert(hudsonmodelHudsonassignedLabels1.equals(hudsonmodelHudsonassignedLabels1));
        System.assert(hudsonmodelHudsonassignedLabels3.equals(hudsonmodelHudsonassignedLabels4));
        System.assert(hudsonmodelHudsonassignedLabels4.equals(hudsonmodelHudsonassignedLabels3));
        System.assert(hudsonmodelHudsonassignedLabels3.equals(hudsonmodelHudsonassignedLabels3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels1 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels2 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels3 = new SwagHudsonmodelHudsonassignedLabels();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels4 = new SwagHudsonmodelHudsonassignedLabels();

        System.assert(hudsonmodelHudsonassignedLabels1.equals(hudsonmodelHudsonassignedLabels2));
        System.assert(hudsonmodelHudsonassignedLabels2.equals(hudsonmodelHudsonassignedLabels1));
        System.assert(hudsonmodelHudsonassignedLabels3.equals(hudsonmodelHudsonassignedLabels4));
        System.assert(hudsonmodelHudsonassignedLabels4.equals(hudsonmodelHudsonassignedLabels3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels1 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels2 = new SwagHudsonmodelHudsonassignedLabels();

        System.assertEquals(false, hudsonmodelHudsonassignedLabels1.equals(hudsonmodelHudsonassignedLabels2));
        System.assertEquals(false, hudsonmodelHudsonassignedLabels2.equals(hudsonmodelHudsonassignedLabels1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels1 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels2 = new SwagHudsonmodelHudsonassignedLabels();

        System.assertEquals(false, hudsonmodelHudsonassignedLabels1.equals('foo'));
        System.assertEquals(false, hudsonmodelHudsonassignedLabels2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels1 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels2 = new SwagHudsonmodelHudsonassignedLabels();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels3;

        System.assertEquals(false, hudsonmodelHudsonassignedLabels1.equals(hudsonmodelHudsonassignedLabels3));
        System.assertEquals(false, hudsonmodelHudsonassignedLabels2.equals(hudsonmodelHudsonassignedLabels3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels1 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels2 = new SwagHudsonmodelHudsonassignedLabels();

        System.assertEquals(hudsonmodelHudsonassignedLabels1.hashCode(), hudsonmodelHudsonassignedLabels1.hashCode());
        System.assertEquals(hudsonmodelHudsonassignedLabels2.hashCode(), hudsonmodelHudsonassignedLabels2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels1 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels2 = SwagHudsonmodelHudsonassignedLabels.getExample();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels3 = new SwagHudsonmodelHudsonassignedLabels();
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels4 = new SwagHudsonmodelHudsonassignedLabels();

        System.assert(hudsonmodelHudsonassignedLabels1.equals(hudsonmodelHudsonassignedLabels2));
        System.assert(hudsonmodelHudsonassignedLabels3.equals(hudsonmodelHudsonassignedLabels4));
        System.assertEquals(hudsonmodelHudsonassignedLabels1.hashCode(), hudsonmodelHudsonassignedLabels2.hashCode());
        System.assertEquals(hudsonmodelHudsonassignedLabels3.hashCode(), hudsonmodelHudsonassignedLabels4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelHudsonassignedLabels hudsonmodelHudsonassignedLabels = new SwagHudsonmodelHudsonassignedLabels();
        Map<String, String> propertyMappings = hudsonmodelHudsonassignedLabels.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
