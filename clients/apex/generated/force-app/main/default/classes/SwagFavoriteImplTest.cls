@isTest
private class SwagFavoriteImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFavoriteImpl favoriteImpl1 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl2 = favoriteImpl1;
        SwagFavoriteImpl favoriteImpl3 = new SwagFavoriteImpl();
        SwagFavoriteImpl favoriteImpl4 = favoriteImpl3;

        System.assert(favoriteImpl1.equals(favoriteImpl2));
        System.assert(favoriteImpl2.equals(favoriteImpl1));
        System.assert(favoriteImpl1.equals(favoriteImpl1));
        System.assert(favoriteImpl3.equals(favoriteImpl4));
        System.assert(favoriteImpl4.equals(favoriteImpl3));
        System.assert(favoriteImpl3.equals(favoriteImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFavoriteImpl favoriteImpl1 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl2 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl3 = new SwagFavoriteImpl();
        SwagFavoriteImpl favoriteImpl4 = new SwagFavoriteImpl();

        System.assert(favoriteImpl1.equals(favoriteImpl2));
        System.assert(favoriteImpl2.equals(favoriteImpl1));
        System.assert(favoriteImpl3.equals(favoriteImpl4));
        System.assert(favoriteImpl4.equals(favoriteImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFavoriteImpl favoriteImpl1 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl2 = new SwagFavoriteImpl();

        System.assertEquals(false, favoriteImpl1.equals(favoriteImpl2));
        System.assertEquals(false, favoriteImpl2.equals(favoriteImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFavoriteImpl favoriteImpl1 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl2 = new SwagFavoriteImpl();

        System.assertEquals(false, favoriteImpl1.equals('foo'));
        System.assertEquals(false, favoriteImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFavoriteImpl favoriteImpl1 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl2 = new SwagFavoriteImpl();
        SwagFavoriteImpl favoriteImpl3;

        System.assertEquals(false, favoriteImpl1.equals(favoriteImpl3));
        System.assertEquals(false, favoriteImpl2.equals(favoriteImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFavoriteImpl favoriteImpl1 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl2 = new SwagFavoriteImpl();

        System.assertEquals(favoriteImpl1.hashCode(), favoriteImpl1.hashCode());
        System.assertEquals(favoriteImpl2.hashCode(), favoriteImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFavoriteImpl favoriteImpl1 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl2 = SwagFavoriteImpl.getExample();
        SwagFavoriteImpl favoriteImpl3 = new SwagFavoriteImpl();
        SwagFavoriteImpl favoriteImpl4 = new SwagFavoriteImpl();

        System.assert(favoriteImpl1.equals(favoriteImpl2));
        System.assert(favoriteImpl3.equals(favoriteImpl4));
        System.assertEquals(favoriteImpl1.hashCode(), favoriteImpl2.hashCode());
        System.assertEquals(favoriteImpl3.hashCode(), favoriteImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFavoriteImpl favoriteImpl = new SwagFavoriteImpl();
        Map<String, String> propertyMappings = favoriteImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
