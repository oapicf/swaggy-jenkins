@isTest
private class OASExtensionClassContainerImpl1linksTest {
    @isTest
    private static void equalsSameInstance() {
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links1 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links2 = extensionClassContainerImpl1links1;
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links3 = new OASExtensionClassContainerImpl1links();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links4 = extensionClassContainerImpl1links3;

        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links2));
        System.assert(extensionClassContainerImpl1links2.equals(extensionClassContainerImpl1links1));
        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links1));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links4));
        System.assert(extensionClassContainerImpl1links4.equals(extensionClassContainerImpl1links3));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links1 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links2 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links3 = new OASExtensionClassContainerImpl1links();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links4 = new OASExtensionClassContainerImpl1links();

        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links2));
        System.assert(extensionClassContainerImpl1links2.equals(extensionClassContainerImpl1links1));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links4));
        System.assert(extensionClassContainerImpl1links4.equals(extensionClassContainerImpl1links3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links1 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links2 = new OASExtensionClassContainerImpl1links();

        System.assertEquals(false, extensionClassContainerImpl1links1.equals('foo'));
        System.assertEquals(false, extensionClassContainerImpl1links2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links1 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links2 = new OASExtensionClassContainerImpl1links();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links3;

        System.assertEquals(false, extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links3));
        System.assertEquals(false, extensionClassContainerImpl1links2.equals(extensionClassContainerImpl1links3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links1 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links2 = new OASExtensionClassContainerImpl1links();

        System.assertEquals(extensionClassContainerImpl1links1.hashCode(), extensionClassContainerImpl1links1.hashCode());
        System.assertEquals(extensionClassContainerImpl1links2.hashCode(), extensionClassContainerImpl1links2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links1 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links2 = OASExtensionClassContainerImpl1links.getExample();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links3 = new OASExtensionClassContainerImpl1links();
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links4 = new OASExtensionClassContainerImpl1links();

        System.assert(extensionClassContainerImpl1links1.equals(extensionClassContainerImpl1links2));
        System.assert(extensionClassContainerImpl1links3.equals(extensionClassContainerImpl1links4));
        System.assertEquals(extensionClassContainerImpl1links1.hashCode(), extensionClassContainerImpl1links2.hashCode());
        System.assertEquals(extensionClassContainerImpl1links3.hashCode(), extensionClassContainerImpl1links4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExtensionClassContainerImpl1links extensionClassContainerImpl1links = new OASExtensionClassContainerImpl1links();
        Map<String, String> propertyMappings = extensionClassContainerImpl1links.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
