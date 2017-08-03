@isTest
private class SwagExtensionClassImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagExtensionClassImpl extensionClassImpl1 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl2 = extensionClassImpl1;
        SwagExtensionClassImpl extensionClassImpl3 = new SwagExtensionClassImpl();
        SwagExtensionClassImpl extensionClassImpl4 = extensionClassImpl3;

        System.assert(extensionClassImpl1.equals(extensionClassImpl2));
        System.assert(extensionClassImpl2.equals(extensionClassImpl1));
        System.assert(extensionClassImpl1.equals(extensionClassImpl1));
        System.assert(extensionClassImpl3.equals(extensionClassImpl4));
        System.assert(extensionClassImpl4.equals(extensionClassImpl3));
        System.assert(extensionClassImpl3.equals(extensionClassImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagExtensionClassImpl extensionClassImpl1 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl2 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl3 = new SwagExtensionClassImpl();
        SwagExtensionClassImpl extensionClassImpl4 = new SwagExtensionClassImpl();

        System.assert(extensionClassImpl1.equals(extensionClassImpl2));
        System.assert(extensionClassImpl2.equals(extensionClassImpl1));
        System.assert(extensionClassImpl3.equals(extensionClassImpl4));
        System.assert(extensionClassImpl4.equals(extensionClassImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagExtensionClassImpl extensionClassImpl1 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl2 = new SwagExtensionClassImpl();

        System.assertEquals(false, extensionClassImpl1.equals(extensionClassImpl2));
        System.assertEquals(false, extensionClassImpl2.equals(extensionClassImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagExtensionClassImpl extensionClassImpl1 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl2 = new SwagExtensionClassImpl();

        System.assertEquals(false, extensionClassImpl1.equals('foo'));
        System.assertEquals(false, extensionClassImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagExtensionClassImpl extensionClassImpl1 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl2 = new SwagExtensionClassImpl();
        SwagExtensionClassImpl extensionClassImpl3;

        System.assertEquals(false, extensionClassImpl1.equals(extensionClassImpl3));
        System.assertEquals(false, extensionClassImpl2.equals(extensionClassImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagExtensionClassImpl extensionClassImpl1 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl2 = new SwagExtensionClassImpl();

        System.assertEquals(extensionClassImpl1.hashCode(), extensionClassImpl1.hashCode());
        System.assertEquals(extensionClassImpl2.hashCode(), extensionClassImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagExtensionClassImpl extensionClassImpl1 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl2 = SwagExtensionClassImpl.getExample();
        SwagExtensionClassImpl extensionClassImpl3 = new SwagExtensionClassImpl();
        SwagExtensionClassImpl extensionClassImpl4 = new SwagExtensionClassImpl();

        System.assert(extensionClassImpl1.equals(extensionClassImpl2));
        System.assert(extensionClassImpl3.equals(extensionClassImpl4));
        System.assertEquals(extensionClassImpl1.hashCode(), extensionClassImpl2.hashCode());
        System.assertEquals(extensionClassImpl3.hashCode(), extensionClassImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagExtensionClassImpl extensionClassImpl = new SwagExtensionClassImpl();
        Map<String, String> propertyMappings = extensionClassImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagExtensionClassImpl extensionClassImpl = new SwagExtensionClassImpl();
        System.assertEquals(new List<String>(), extensionClassImpl.classes);
        System.assertEquals(null, extensionClassImpl.propertyClass);
        System.assertEquals(null, extensionClassImpl.links);
    }
}
