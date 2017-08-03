@isTest
private class SwagFavoriteImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFavoriteImpllinks favoriteImpllinks1 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks2 = favoriteImpllinks1;
        SwagFavoriteImpllinks favoriteImpllinks3 = new SwagFavoriteImpllinks();
        SwagFavoriteImpllinks favoriteImpllinks4 = favoriteImpllinks3;

        System.assert(favoriteImpllinks1.equals(favoriteImpllinks2));
        System.assert(favoriteImpllinks2.equals(favoriteImpllinks1));
        System.assert(favoriteImpllinks1.equals(favoriteImpllinks1));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks4));
        System.assert(favoriteImpllinks4.equals(favoriteImpllinks3));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFavoriteImpllinks favoriteImpllinks1 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks2 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks3 = new SwagFavoriteImpllinks();
        SwagFavoriteImpllinks favoriteImpllinks4 = new SwagFavoriteImpllinks();

        System.assert(favoriteImpllinks1.equals(favoriteImpllinks2));
        System.assert(favoriteImpllinks2.equals(favoriteImpllinks1));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks4));
        System.assert(favoriteImpllinks4.equals(favoriteImpllinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFavoriteImpllinks favoriteImpllinks1 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks2 = new SwagFavoriteImpllinks();

        System.assertEquals(false, favoriteImpllinks1.equals(favoriteImpllinks2));
        System.assertEquals(false, favoriteImpllinks2.equals(favoriteImpllinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFavoriteImpllinks favoriteImpllinks1 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks2 = new SwagFavoriteImpllinks();

        System.assertEquals(false, favoriteImpllinks1.equals('foo'));
        System.assertEquals(false, favoriteImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFavoriteImpllinks favoriteImpllinks1 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks2 = new SwagFavoriteImpllinks();
        SwagFavoriteImpllinks favoriteImpllinks3;

        System.assertEquals(false, favoriteImpllinks1.equals(favoriteImpllinks3));
        System.assertEquals(false, favoriteImpllinks2.equals(favoriteImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFavoriteImpllinks favoriteImpllinks1 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks2 = new SwagFavoriteImpllinks();

        System.assertEquals(favoriteImpllinks1.hashCode(), favoriteImpllinks1.hashCode());
        System.assertEquals(favoriteImpllinks2.hashCode(), favoriteImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFavoriteImpllinks favoriteImpllinks1 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks2 = SwagFavoriteImpllinks.getExample();
        SwagFavoriteImpllinks favoriteImpllinks3 = new SwagFavoriteImpllinks();
        SwagFavoriteImpllinks favoriteImpllinks4 = new SwagFavoriteImpllinks();

        System.assert(favoriteImpllinks1.equals(favoriteImpllinks2));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks4));
        System.assertEquals(favoriteImpllinks1.hashCode(), favoriteImpllinks2.hashCode());
        System.assertEquals(favoriteImpllinks3.hashCode(), favoriteImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFavoriteImpllinks favoriteImpllinks = new SwagFavoriteImpllinks();
        Map<String, String> propertyMappings = favoriteImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
