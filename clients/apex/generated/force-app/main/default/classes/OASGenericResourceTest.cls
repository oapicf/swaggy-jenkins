@isTest
private class OASGenericResourceTest {
    @isTest
    private static void equalsSameInstance() {
        OASGenericResource genericResource1 = OASGenericResource.getExample();
        OASGenericResource genericResource2 = genericResource1;
        OASGenericResource genericResource3 = new OASGenericResource();
        OASGenericResource genericResource4 = genericResource3;

        System.assert(genericResource1.equals(genericResource2));
        System.assert(genericResource2.equals(genericResource1));
        System.assert(genericResource1.equals(genericResource1));
        System.assert(genericResource3.equals(genericResource4));
        System.assert(genericResource4.equals(genericResource3));
        System.assert(genericResource3.equals(genericResource3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGenericResource genericResource1 = OASGenericResource.getExample();
        OASGenericResource genericResource2 = OASGenericResource.getExample();
        OASGenericResource genericResource3 = new OASGenericResource();
        OASGenericResource genericResource4 = new OASGenericResource();

        System.assert(genericResource1.equals(genericResource2));
        System.assert(genericResource2.equals(genericResource1));
        System.assert(genericResource3.equals(genericResource4));
        System.assert(genericResource4.equals(genericResource3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGenericResource genericResource1 = OASGenericResource.getExample();
        OASGenericResource genericResource2 = new OASGenericResource();

        System.assertEquals(false, genericResource1.equals('foo'));
        System.assertEquals(false, genericResource2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGenericResource genericResource1 = OASGenericResource.getExample();
        OASGenericResource genericResource2 = new OASGenericResource();
        OASGenericResource genericResource3;

        System.assertEquals(false, genericResource1.equals(genericResource3));
        System.assertEquals(false, genericResource2.equals(genericResource3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGenericResource genericResource1 = OASGenericResource.getExample();
        OASGenericResource genericResource2 = new OASGenericResource();

        System.assertEquals(genericResource1.hashCode(), genericResource1.hashCode());
        System.assertEquals(genericResource2.hashCode(), genericResource2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGenericResource genericResource1 = OASGenericResource.getExample();
        OASGenericResource genericResource2 = OASGenericResource.getExample();
        OASGenericResource genericResource3 = new OASGenericResource();
        OASGenericResource genericResource4 = new OASGenericResource();

        System.assert(genericResource1.equals(genericResource2));
        System.assert(genericResource3.equals(genericResource4));
        System.assertEquals(genericResource1.hashCode(), genericResource2.hashCode());
        System.assertEquals(genericResource3.hashCode(), genericResource4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGenericResource genericResource = new OASGenericResource();
        Map<String, String> x-property-mappings = genericResource.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
