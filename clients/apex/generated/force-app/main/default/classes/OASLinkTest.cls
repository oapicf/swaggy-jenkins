@isTest
private class OASLinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASLink link1 = OASLink.getExample();
        OASLink link2 = link1;
        OASLink link3 = new OASLink();
        OASLink link4 = link3;

        System.assert(link1.equals(link2));
        System.assert(link2.equals(link1));
        System.assert(link1.equals(link1));
        System.assert(link3.equals(link4));
        System.assert(link4.equals(link3));
        System.assert(link3.equals(link3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLink link1 = OASLink.getExample();
        OASLink link2 = OASLink.getExample();
        OASLink link3 = new OASLink();
        OASLink link4 = new OASLink();

        System.assert(link1.equals(link2));
        System.assert(link2.equals(link1));
        System.assert(link3.equals(link4));
        System.assert(link4.equals(link3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLink link1 = OASLink.getExample();
        OASLink link2 = new OASLink();

        System.assertEquals(false, link1.equals('foo'));
        System.assertEquals(false, link2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLink link1 = OASLink.getExample();
        OASLink link2 = new OASLink();
        OASLink link3;

        System.assertEquals(false, link1.equals(link3));
        System.assertEquals(false, link2.equals(link3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLink link1 = OASLink.getExample();
        OASLink link2 = new OASLink();

        System.assertEquals(link1.hashCode(), link1.hashCode());
        System.assertEquals(link2.hashCode(), link2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLink link1 = OASLink.getExample();
        OASLink link2 = OASLink.getExample();
        OASLink link3 = new OASLink();
        OASLink link4 = new OASLink();

        System.assert(link1.equals(link2));
        System.assert(link3.equals(link4));
        System.assertEquals(link1.hashCode(), link2.hashCode());
        System.assertEquals(link3.hashCode(), link4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLink link = new OASLink();
        Map<String, String> x-property-mappings = link.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
