@isTest
private class SwagHudsonmodelFreeStyleProjectactioTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions1 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions2 = hudsonmodelFreeStyleProjectactions1;
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions3 = new SwagHudsonmodelFreeStyleProjectactio();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions4 = hudsonmodelFreeStyleProjectactions3;

        System.assert(hudsonmodelFreeStyleProjectactions1.equals(hudsonmodelFreeStyleProjectactions2));
        System.assert(hudsonmodelFreeStyleProjectactions2.equals(hudsonmodelFreeStyleProjectactions1));
        System.assert(hudsonmodelFreeStyleProjectactions1.equals(hudsonmodelFreeStyleProjectactions1));
        System.assert(hudsonmodelFreeStyleProjectactions3.equals(hudsonmodelFreeStyleProjectactions4));
        System.assert(hudsonmodelFreeStyleProjectactions4.equals(hudsonmodelFreeStyleProjectactions3));
        System.assert(hudsonmodelFreeStyleProjectactions3.equals(hudsonmodelFreeStyleProjectactions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions1 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions2 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions3 = new SwagHudsonmodelFreeStyleProjectactio();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions4 = new SwagHudsonmodelFreeStyleProjectactio();

        System.assert(hudsonmodelFreeStyleProjectactions1.equals(hudsonmodelFreeStyleProjectactions2));
        System.assert(hudsonmodelFreeStyleProjectactions2.equals(hudsonmodelFreeStyleProjectactions1));
        System.assert(hudsonmodelFreeStyleProjectactions3.equals(hudsonmodelFreeStyleProjectactions4));
        System.assert(hudsonmodelFreeStyleProjectactions4.equals(hudsonmodelFreeStyleProjectactions3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions1 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions2 = new SwagHudsonmodelFreeStyleProjectactio();

        System.assertEquals(false, hudsonmodelFreeStyleProjectactions1.equals(hudsonmodelFreeStyleProjectactions2));
        System.assertEquals(false, hudsonmodelFreeStyleProjectactions2.equals(hudsonmodelFreeStyleProjectactions1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions1 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions2 = new SwagHudsonmodelFreeStyleProjectactio();

        System.assertEquals(false, hudsonmodelFreeStyleProjectactions1.equals('foo'));
        System.assertEquals(false, hudsonmodelFreeStyleProjectactions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions1 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions2 = new SwagHudsonmodelFreeStyleProjectactio();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions3;

        System.assertEquals(false, hudsonmodelFreeStyleProjectactions1.equals(hudsonmodelFreeStyleProjectactions3));
        System.assertEquals(false, hudsonmodelFreeStyleProjectactions2.equals(hudsonmodelFreeStyleProjectactions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions1 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions2 = new SwagHudsonmodelFreeStyleProjectactio();

        System.assertEquals(hudsonmodelFreeStyleProjectactions1.hashCode(), hudsonmodelFreeStyleProjectactions1.hashCode());
        System.assertEquals(hudsonmodelFreeStyleProjectactions2.hashCode(), hudsonmodelFreeStyleProjectactions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions1 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions2 = SwagHudsonmodelFreeStyleProjectactio.getExample();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions3 = new SwagHudsonmodelFreeStyleProjectactio();
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions4 = new SwagHudsonmodelFreeStyleProjectactio();

        System.assert(hudsonmodelFreeStyleProjectactions1.equals(hudsonmodelFreeStyleProjectactions2));
        System.assert(hudsonmodelFreeStyleProjectactions3.equals(hudsonmodelFreeStyleProjectactions4));
        System.assertEquals(hudsonmodelFreeStyleProjectactions1.hashCode(), hudsonmodelFreeStyleProjectactions2.hashCode());
        System.assertEquals(hudsonmodelFreeStyleProjectactions3.hashCode(), hudsonmodelFreeStyleProjectactions4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelFreeStyleProjectactio hudsonmodelFreeStyleProjectactions = new SwagHudsonmodelFreeStyleProjectactio();
        Map<String, String> propertyMappings = hudsonmodelFreeStyleProjectactions.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
