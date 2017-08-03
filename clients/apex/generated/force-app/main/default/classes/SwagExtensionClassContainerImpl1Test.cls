@isTest
private class SwagExtensionClassContainerImpl1Test {
    @isTest
    private static void equalsSameInstance() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl11 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl12 = extensionClassContainerImpl11;
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl13 = new SwagExtensionClassContainerImpl1();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl14 = extensionClassContainerImpl13;

        System.assert(extensionClassContainerImpl11.equals(extensionClassContainerImpl12));
        System.assert(extensionClassContainerImpl12.equals(extensionClassContainerImpl11));
        System.assert(extensionClassContainerImpl11.equals(extensionClassContainerImpl11));
        System.assert(extensionClassContainerImpl13.equals(extensionClassContainerImpl14));
        System.assert(extensionClassContainerImpl14.equals(extensionClassContainerImpl13));
        System.assert(extensionClassContainerImpl13.equals(extensionClassContainerImpl13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl11 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl12 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl13 = new SwagExtensionClassContainerImpl1();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl14 = new SwagExtensionClassContainerImpl1();

        System.assert(extensionClassContainerImpl11.equals(extensionClassContainerImpl12));
        System.assert(extensionClassContainerImpl12.equals(extensionClassContainerImpl11));
        System.assert(extensionClassContainerImpl13.equals(extensionClassContainerImpl14));
        System.assert(extensionClassContainerImpl14.equals(extensionClassContainerImpl13));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl11 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl12 = new SwagExtensionClassContainerImpl1();

        System.assertEquals(false, extensionClassContainerImpl11.equals(extensionClassContainerImpl12));
        System.assertEquals(false, extensionClassContainerImpl12.equals(extensionClassContainerImpl11));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl11 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl12 = new SwagExtensionClassContainerImpl1();

        System.assertEquals(false, extensionClassContainerImpl11.equals('foo'));
        System.assertEquals(false, extensionClassContainerImpl12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl11 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl12 = new SwagExtensionClassContainerImpl1();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl13;

        System.assertEquals(false, extensionClassContainerImpl11.equals(extensionClassContainerImpl13));
        System.assertEquals(false, extensionClassContainerImpl12.equals(extensionClassContainerImpl13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl11 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl12 = new SwagExtensionClassContainerImpl1();

        System.assertEquals(extensionClassContainerImpl11.hashCode(), extensionClassContainerImpl11.hashCode());
        System.assertEquals(extensionClassContainerImpl12.hashCode(), extensionClassContainerImpl12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl11 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl12 = SwagExtensionClassContainerImpl1.getExample();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl13 = new SwagExtensionClassContainerImpl1();
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl14 = new SwagExtensionClassContainerImpl1();

        System.assert(extensionClassContainerImpl11.equals(extensionClassContainerImpl12));
        System.assert(extensionClassContainerImpl13.equals(extensionClassContainerImpl14));
        System.assertEquals(extensionClassContainerImpl11.hashCode(), extensionClassContainerImpl12.hashCode());
        System.assertEquals(extensionClassContainerImpl13.hashCode(), extensionClassContainerImpl14.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagExtensionClassContainerImpl1 extensionClassContainerImpl1 = new SwagExtensionClassContainerImpl1();
        Map<String, String> propertyMappings = extensionClassContainerImpl1.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
        System.assertEquals('r_map', propertyMappings.get('map'));
    }
}
