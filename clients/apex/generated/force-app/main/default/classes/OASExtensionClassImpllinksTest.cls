@isTest
private class OASExtensionClassImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASExtensionClassImpllinks extensionClassImpllinks1 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks2 = extensionClassImpllinks1;
        OASExtensionClassImpllinks extensionClassImpllinks3 = new OASExtensionClassImpllinks();
        OASExtensionClassImpllinks extensionClassImpllinks4 = extensionClassImpllinks3;

        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks2));
        System.assert(extensionClassImpllinks2.equals(extensionClassImpllinks1));
        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks1));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks4));
        System.assert(extensionClassImpllinks4.equals(extensionClassImpllinks3));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExtensionClassImpllinks extensionClassImpllinks1 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks2 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks3 = new OASExtensionClassImpllinks();
        OASExtensionClassImpllinks extensionClassImpllinks4 = new OASExtensionClassImpllinks();

        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks2));
        System.assert(extensionClassImpllinks2.equals(extensionClassImpllinks1));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks4));
        System.assert(extensionClassImpllinks4.equals(extensionClassImpllinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExtensionClassImpllinks extensionClassImpllinks1 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks2 = new OASExtensionClassImpllinks();

        System.assertEquals(false, extensionClassImpllinks1.equals('foo'));
        System.assertEquals(false, extensionClassImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExtensionClassImpllinks extensionClassImpllinks1 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks2 = new OASExtensionClassImpllinks();
        OASExtensionClassImpllinks extensionClassImpllinks3;

        System.assertEquals(false, extensionClassImpllinks1.equals(extensionClassImpllinks3));
        System.assertEquals(false, extensionClassImpllinks2.equals(extensionClassImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExtensionClassImpllinks extensionClassImpllinks1 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks2 = new OASExtensionClassImpllinks();

        System.assertEquals(extensionClassImpllinks1.hashCode(), extensionClassImpllinks1.hashCode());
        System.assertEquals(extensionClassImpllinks2.hashCode(), extensionClassImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExtensionClassImpllinks extensionClassImpllinks1 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks2 = OASExtensionClassImpllinks.getExample();
        OASExtensionClassImpllinks extensionClassImpllinks3 = new OASExtensionClassImpllinks();
        OASExtensionClassImpllinks extensionClassImpllinks4 = new OASExtensionClassImpllinks();

        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks2));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks4));
        System.assertEquals(extensionClassImpllinks1.hashCode(), extensionClassImpllinks2.hashCode());
        System.assertEquals(extensionClassImpllinks3.hashCode(), extensionClassImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExtensionClassImpllinks extensionClassImpllinks = new OASExtensionClassImpllinks();
        Map<String, String> propertyMappings = extensionClassImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
