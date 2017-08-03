@isTest
private class SwagExtensionClassContainerImpl1linkTest {
    @isTest
    private static void equalsSameInstance() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links1 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links2 = extensionClassContainerImpl1links1;
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links3 = new SwagExtensionClassContainerImpl1link();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links4 = extensionClassContainerImpl1links3;

        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links2));
        System.assert(extensionClassContainerImpl1links2.equals(extensionClassContainerImpl1links1));
        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links1));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links4));
        System.assert(extensionClassContainerImpl1links4.equals(extensionClassContainerImpl1links3));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links1 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links2 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links3 = new SwagExtensionClassContainerImpl1link();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links4 = new SwagExtensionClassContainerImpl1link();

        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links2));
        System.assert(extensionClassContainerImpl1links2.equals(extensionClassContainerImpl1links1));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links4));
        System.assert(extensionClassContainerImpl1links4.equals(extensionClassContainerImpl1links3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links1 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links2 = new SwagExtensionClassContainerImpl1link();

        System.assertEquals(false, extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links2));
        System.assertEquals(false, extensionClassContainerImpl1links2.equals(extensionClassContainerImpl1links1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links1 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links2 = new SwagExtensionClassContainerImpl1link();

        System.assertEquals(false, extensionClassContainerImpl1links1.equals('foo'));
        System.assertEquals(false, extensionClassContainerImpl1links2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links1 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links2 = new SwagExtensionClassContainerImpl1link();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links3;

        System.assertEquals(false, extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links3));
        System.assertEquals(false, extensionClassContainerImpl1links2.equals(extensionClassContainerImpl1links3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links1 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links2 = new SwagExtensionClassContainerImpl1link();

        System.assertEquals(extensionClassContainerImpl1links1.hashCode(), extensionClassContainerImpl1links1.hashCode());
        System.assertEquals(extensionClassContainerImpl1links2.hashCode(), extensionClassContainerImpl1links2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links1 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links2 = SwagExtensionClassContainerImpl1link.getExample();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links3 = new SwagExtensionClassContainerImpl1link();
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links4 = new SwagExtensionClassContainerImpl1link();

        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links2));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links4));
        System.assertEquals(extensionClassContainerImpl1links1.hashCode(), extensionClassContainerImpl1links2.hashCode());
        System.assertEquals(extensionClassContainerImpl1links3.hashCode(), extensionClassContainerImpl1links4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagExtensionClassContainerImpl1link extensionClassContainerImpl1links = new SwagExtensionClassContainerImpl1link();
        Map<String, String> propertyMappings = extensionClassContainerImpl1links.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
