@isTest
private class OASExtensionClassImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASExtensionClassImpl extensionClassImpl1 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl2 = extensionClassImpl1;
        OASExtensionClassImpl extensionClassImpl3 = new OASExtensionClassImpl();
        OASExtensionClassImpl extensionClassImpl4 = extensionClassImpl3;

        System.assert(extensionClassImpl1.equals(extensionClassImpl2));
        System.assert(extensionClassImpl2.equals(extensionClassImpl1));
        System.assert(extensionClassImpl1.equals(extensionClassImpl1));
        System.assert(extensionClassImpl3.equals(extensionClassImpl4));
        System.assert(extensionClassImpl4.equals(extensionClassImpl3));
        System.assert(extensionClassImpl3.equals(extensionClassImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExtensionClassImpl extensionClassImpl1 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl2 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl3 = new OASExtensionClassImpl();
        OASExtensionClassImpl extensionClassImpl4 = new OASExtensionClassImpl();

        System.assert(extensionClassImpl1.equals(extensionClassImpl2));
        System.assert(extensionClassImpl2.equals(extensionClassImpl1));
        System.assert(extensionClassImpl3.equals(extensionClassImpl4));
        System.assert(extensionClassImpl4.equals(extensionClassImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExtensionClassImpl extensionClassImpl1 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl2 = new OASExtensionClassImpl();

        System.assertEquals(false, extensionClassImpl1.equals('foo'));
        System.assertEquals(false, extensionClassImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExtensionClassImpl extensionClassImpl1 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl2 = new OASExtensionClassImpl();
        OASExtensionClassImpl extensionClassImpl3;

        System.assertEquals(false, extensionClassImpl1.equals(extensionClassImpl3));
        System.assertEquals(false, extensionClassImpl2.equals(extensionClassImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExtensionClassImpl extensionClassImpl1 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl2 = new OASExtensionClassImpl();

        System.assertEquals(extensionClassImpl1.hashCode(), extensionClassImpl1.hashCode());
        System.assertEquals(extensionClassImpl2.hashCode(), extensionClassImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExtensionClassImpl extensionClassImpl1 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl2 = OASExtensionClassImpl.getExample();
        OASExtensionClassImpl extensionClassImpl3 = new OASExtensionClassImpl();
        OASExtensionClassImpl extensionClassImpl4 = new OASExtensionClassImpl();

        System.assert(extensionClassImpl1.equals(extensionClassImpl2));
        System.assert(extensionClassImpl3.equals(extensionClassImpl4));
        System.assertEquals(extensionClassImpl1.hashCode(), extensionClassImpl2.hashCode());
        System.assertEquals(extensionClassImpl3.hashCode(), extensionClassImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExtensionClassImpl extensionClassImpl = new OASExtensionClassImpl();
        Map<String, String> x-property-mappings = extensionClassImpl.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExtensionClassImpl extensionClassImpl = new OASExtensionClassImpl();
        System.assertEquals(new List<String>(), extensionClassImpl.classes);
        System.assertEquals(null, extensionClassImpl.propertyClass);
        System.assertEquals(null, extensionClassImpl.links);
    }
}
