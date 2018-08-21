@isTest
private class OASFavoriteImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASFavoriteImpl favoriteImpl1 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl2 = favoriteImpl1;
        OASFavoriteImpl favoriteImpl3 = new OASFavoriteImpl();
        OASFavoriteImpl favoriteImpl4 = favoriteImpl3;

        System.assert(favoriteImpl1.equals(favoriteImpl2));
        System.assert(favoriteImpl2.equals(favoriteImpl1));
        System.assert(favoriteImpl1.equals(favoriteImpl1));
        System.assert(favoriteImpl3.equals(favoriteImpl4));
        System.assert(favoriteImpl4.equals(favoriteImpl3));
        System.assert(favoriteImpl3.equals(favoriteImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFavoriteImpl favoriteImpl1 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl2 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl3 = new OASFavoriteImpl();
        OASFavoriteImpl favoriteImpl4 = new OASFavoriteImpl();

        System.assert(favoriteImpl1.equals(favoriteImpl2));
        System.assert(favoriteImpl2.equals(favoriteImpl1));
        System.assert(favoriteImpl3.equals(favoriteImpl4));
        System.assert(favoriteImpl4.equals(favoriteImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFavoriteImpl favoriteImpl1 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl2 = new OASFavoriteImpl();

        System.assertEquals(false, favoriteImpl1.equals('foo'));
        System.assertEquals(false, favoriteImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFavoriteImpl favoriteImpl1 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl2 = new OASFavoriteImpl();
        OASFavoriteImpl favoriteImpl3;

        System.assertEquals(false, favoriteImpl1.equals(favoriteImpl3));
        System.assertEquals(false, favoriteImpl2.equals(favoriteImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFavoriteImpl favoriteImpl1 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl2 = new OASFavoriteImpl();

        System.assertEquals(favoriteImpl1.hashCode(), favoriteImpl1.hashCode());
        System.assertEquals(favoriteImpl2.hashCode(), favoriteImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFavoriteImpl favoriteImpl1 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl2 = OASFavoriteImpl.getExample();
        OASFavoriteImpl favoriteImpl3 = new OASFavoriteImpl();
        OASFavoriteImpl favoriteImpl4 = new OASFavoriteImpl();

        System.assert(favoriteImpl1.equals(favoriteImpl2));
        System.assert(favoriteImpl3.equals(favoriteImpl4));
        System.assertEquals(favoriteImpl1.hashCode(), favoriteImpl2.hashCode());
        System.assertEquals(favoriteImpl3.hashCode(), favoriteImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFavoriteImpl favoriteImpl = new OASFavoriteImpl();
        Map<String, String> propertyMappings = favoriteImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
