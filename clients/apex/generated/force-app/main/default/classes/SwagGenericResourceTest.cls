@isTest
private class SwagGenericResourceTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGenericResource genericResource1 = SwagGenericResource.getExample();
        SwagGenericResource genericResource2 = genericResource1;
        SwagGenericResource genericResource3 = new SwagGenericResource();
        SwagGenericResource genericResource4 = genericResource3;

        System.assert(genericResource1.equals(genericResource2));
        System.assert(genericResource2.equals(genericResource1));
        System.assert(genericResource1.equals(genericResource1));
        System.assert(genericResource3.equals(genericResource4));
        System.assert(genericResource4.equals(genericResource3));
        System.assert(genericResource3.equals(genericResource3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGenericResource genericResource1 = SwagGenericResource.getExample();
        SwagGenericResource genericResource2 = SwagGenericResource.getExample();
        SwagGenericResource genericResource3 = new SwagGenericResource();
        SwagGenericResource genericResource4 = new SwagGenericResource();

        System.assert(genericResource1.equals(genericResource2));
        System.assert(genericResource2.equals(genericResource1));
        System.assert(genericResource3.equals(genericResource4));
        System.assert(genericResource4.equals(genericResource3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGenericResource genericResource1 = SwagGenericResource.getExample();
        SwagGenericResource genericResource2 = new SwagGenericResource();

        System.assertEquals(false, genericResource1.equals(genericResource2));
        System.assertEquals(false, genericResource2.equals(genericResource1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGenericResource genericResource1 = SwagGenericResource.getExample();
        SwagGenericResource genericResource2 = new SwagGenericResource();

        System.assertEquals(false, genericResource1.equals('foo'));
        System.assertEquals(false, genericResource2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGenericResource genericResource1 = SwagGenericResource.getExample();
        SwagGenericResource genericResource2 = new SwagGenericResource();
        SwagGenericResource genericResource3;

        System.assertEquals(false, genericResource1.equals(genericResource3));
        System.assertEquals(false, genericResource2.equals(genericResource3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGenericResource genericResource1 = SwagGenericResource.getExample();
        SwagGenericResource genericResource2 = new SwagGenericResource();

        System.assertEquals(genericResource1.hashCode(), genericResource1.hashCode());
        System.assertEquals(genericResource2.hashCode(), genericResource2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGenericResource genericResource1 = SwagGenericResource.getExample();
        SwagGenericResource genericResource2 = SwagGenericResource.getExample();
        SwagGenericResource genericResource3 = new SwagGenericResource();
        SwagGenericResource genericResource4 = new SwagGenericResource();

        System.assert(genericResource1.equals(genericResource2));
        System.assert(genericResource3.equals(genericResource4));
        System.assertEquals(genericResource1.hashCode(), genericResource2.hashCode());
        System.assertEquals(genericResource3.hashCode(), genericResource4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGenericResource genericResource = new SwagGenericResource();
        Map<String, String> propertyMappings = genericResource.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
