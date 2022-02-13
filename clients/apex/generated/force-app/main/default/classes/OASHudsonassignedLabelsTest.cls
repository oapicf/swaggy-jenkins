@isTest
private class OASHudsonassignedLabelsTest {
    @isTest
    private static void equalsSameInstance() {
        OASHudsonassignedLabels hudsonassignedLabels1 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels2 = hudsonassignedLabels1;
        OASHudsonassignedLabels hudsonassignedLabels3 = new OASHudsonassignedLabels();
        OASHudsonassignedLabels hudsonassignedLabels4 = hudsonassignedLabels3;

        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels2));
        System.assert(hudsonassignedLabels2.equals(hudsonassignedLabels1));
        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels1));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels4));
        System.assert(hudsonassignedLabels4.equals(hudsonassignedLabels3));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHudsonassignedLabels hudsonassignedLabels1 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels2 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels3 = new OASHudsonassignedLabels();
        OASHudsonassignedLabels hudsonassignedLabels4 = new OASHudsonassignedLabels();

        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels2));
        System.assert(hudsonassignedLabels2.equals(hudsonassignedLabels1));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels4));
        System.assert(hudsonassignedLabels4.equals(hudsonassignedLabels3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHudsonassignedLabels hudsonassignedLabels1 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels2 = new OASHudsonassignedLabels();

        System.assertEquals(false, hudsonassignedLabels1.equals('foo'));
        System.assertEquals(false, hudsonassignedLabels2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHudsonassignedLabels hudsonassignedLabels1 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels2 = new OASHudsonassignedLabels();
        OASHudsonassignedLabels hudsonassignedLabels3;

        System.assertEquals(false, hudsonassignedLabels1.equals(hudsonassignedLabels3));
        System.assertEquals(false, hudsonassignedLabels2.equals(hudsonassignedLabels3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHudsonassignedLabels hudsonassignedLabels1 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels2 = new OASHudsonassignedLabels();

        System.assertEquals(hudsonassignedLabels1.hashCode(), hudsonassignedLabels1.hashCode());
        System.assertEquals(hudsonassignedLabels2.hashCode(), hudsonassignedLabels2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHudsonassignedLabels hudsonassignedLabels1 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels2 = OASHudsonassignedLabels.getExample();
        OASHudsonassignedLabels hudsonassignedLabels3 = new OASHudsonassignedLabels();
        OASHudsonassignedLabels hudsonassignedLabels4 = new OASHudsonassignedLabels();

        System.assert(hudsonassignedLabels1.equals(hudsonassignedLabels2));
        System.assert(hudsonassignedLabels3.equals(hudsonassignedLabels4));
        System.assertEquals(hudsonassignedLabels1.hashCode(), hudsonassignedLabels2.hashCode());
        System.assertEquals(hudsonassignedLabels3.hashCode(), hudsonassignedLabels4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASHudsonassignedLabels hudsonassignedLabels = new OASHudsonassignedLabels();
        Map<String, String> x-property-mappings = hudsonassignedLabels.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
