@isTest
private class SwagExtensionClassImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagExtensionClassImpllinks extensionClassImpllinks1 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks2 = extensionClassImpllinks1;
        SwagExtensionClassImpllinks extensionClassImpllinks3 = new SwagExtensionClassImpllinks();
        SwagExtensionClassImpllinks extensionClassImpllinks4 = extensionClassImpllinks3;

        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks2));
        System.assert(extensionClassImpllinks2.equals(extensionClassImpllinks1));
        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks1));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks4));
        System.assert(extensionClassImpllinks4.equals(extensionClassImpllinks3));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagExtensionClassImpllinks extensionClassImpllinks1 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks2 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks3 = new SwagExtensionClassImpllinks();
        SwagExtensionClassImpllinks extensionClassImpllinks4 = new SwagExtensionClassImpllinks();

        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks2));
        System.assert(extensionClassImpllinks2.equals(extensionClassImpllinks1));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks4));
        System.assert(extensionClassImpllinks4.equals(extensionClassImpllinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagExtensionClassImpllinks extensionClassImpllinks1 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks2 = new SwagExtensionClassImpllinks();

        System.assertEquals(false, extensionClassImpllinks1.equals(extensionClassImpllinks2));
        System.assertEquals(false, extensionClassImpllinks2.equals(extensionClassImpllinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagExtensionClassImpllinks extensionClassImpllinks1 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks2 = new SwagExtensionClassImpllinks();

        System.assertEquals(false, extensionClassImpllinks1.equals('foo'));
        System.assertEquals(false, extensionClassImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagExtensionClassImpllinks extensionClassImpllinks1 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks2 = new SwagExtensionClassImpllinks();
        SwagExtensionClassImpllinks extensionClassImpllinks3;

        System.assertEquals(false, extensionClassImpllinks1.equals(extensionClassImpllinks3));
        System.assertEquals(false, extensionClassImpllinks2.equals(extensionClassImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagExtensionClassImpllinks extensionClassImpllinks1 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks2 = new SwagExtensionClassImpllinks();

        System.assertEquals(extensionClassImpllinks1.hashCode(), extensionClassImpllinks1.hashCode());
        System.assertEquals(extensionClassImpllinks2.hashCode(), extensionClassImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagExtensionClassImpllinks extensionClassImpllinks1 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks2 = SwagExtensionClassImpllinks.getExample();
        SwagExtensionClassImpllinks extensionClassImpllinks3 = new SwagExtensionClassImpllinks();
        SwagExtensionClassImpllinks extensionClassImpllinks4 = new SwagExtensionClassImpllinks();

        System.assert(extensionClassImpllinks1.equals(extensionClassImpllinks2));
        System.assert(extensionClassImpllinks3.equals(extensionClassImpllinks4));
        System.assertEquals(extensionClassImpllinks1.hashCode(), extensionClassImpllinks2.hashCode());
        System.assertEquals(extensionClassImpllinks3.hashCode(), extensionClassImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagExtensionClassImpllinks extensionClassImpllinks = new SwagExtensionClassImpllinks();
        Map<String, String> propertyMappings = extensionClassImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
