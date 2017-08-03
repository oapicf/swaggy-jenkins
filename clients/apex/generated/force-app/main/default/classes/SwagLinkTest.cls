@isTest
private class SwagLinkTest {
    @isTest
    private static void equalsSameInstance() {
        SwagLink link1 = SwagLink.getExample();
        SwagLink link2 = link1;
        SwagLink link3 = new SwagLink();
        SwagLink link4 = link3;

        System.assert(link1.equals(link2));
        System.assert(link2.equals(link1));
        System.assert(link1.equals(link1));
        System.assert(link3.equals(link4));
        System.assert(link4.equals(link3));
        System.assert(link3.equals(link3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagLink link1 = SwagLink.getExample();
        SwagLink link2 = SwagLink.getExample();
        SwagLink link3 = new SwagLink();
        SwagLink link4 = new SwagLink();

        System.assert(link1.equals(link2));
        System.assert(link2.equals(link1));
        System.assert(link3.equals(link4));
        System.assert(link4.equals(link3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagLink link1 = SwagLink.getExample();
        SwagLink link2 = new SwagLink();

        System.assertEquals(false, link1.equals(link2));
        System.assertEquals(false, link2.equals(link1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagLink link1 = SwagLink.getExample();
        SwagLink link2 = new SwagLink();

        System.assertEquals(false, link1.equals('foo'));
        System.assertEquals(false, link2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagLink link1 = SwagLink.getExample();
        SwagLink link2 = new SwagLink();
        SwagLink link3;

        System.assertEquals(false, link1.equals(link3));
        System.assertEquals(false, link2.equals(link3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagLink link1 = SwagLink.getExample();
        SwagLink link2 = new SwagLink();

        System.assertEquals(link1.hashCode(), link1.hashCode());
        System.assertEquals(link2.hashCode(), link2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagLink link1 = SwagLink.getExample();
        SwagLink link2 = SwagLink.getExample();
        SwagLink link3 = new SwagLink();
        SwagLink link4 = new SwagLink();

        System.assert(link1.equals(link2));
        System.assert(link3.equals(link4));
        System.assertEquals(link1.hashCode(), link2.hashCode());
        System.assertEquals(link3.hashCode(), link4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagLink link = new SwagLink();
        Map<String, String> propertyMappings = link.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
