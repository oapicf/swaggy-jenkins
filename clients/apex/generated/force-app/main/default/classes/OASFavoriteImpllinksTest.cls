@isTest
private class OASFavoriteImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASFavoriteImpllinks favoriteImpllinks1 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks2 = favoriteImpllinks1;
        OASFavoriteImpllinks favoriteImpllinks3 = new OASFavoriteImpllinks();
        OASFavoriteImpllinks favoriteImpllinks4 = favoriteImpllinks3;

        System.assert(favoriteImpllinks1.equals(favoriteImpllinks2));
        System.assert(favoriteImpllinks2.equals(favoriteImpllinks1));
        System.assert(favoriteImpllinks1.equals(favoriteImpllinks1));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks4));
        System.assert(favoriteImpllinks4.equals(favoriteImpllinks3));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFavoriteImpllinks favoriteImpllinks1 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks2 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks3 = new OASFavoriteImpllinks();
        OASFavoriteImpllinks favoriteImpllinks4 = new OASFavoriteImpllinks();

        System.assert(favoriteImpllinks1.equals(favoriteImpllinks2));
        System.assert(favoriteImpllinks2.equals(favoriteImpllinks1));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks4));
        System.assert(favoriteImpllinks4.equals(favoriteImpllinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFavoriteImpllinks favoriteImpllinks1 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks2 = new OASFavoriteImpllinks();

        System.assertEquals(false, favoriteImpllinks1.equals('foo'));
        System.assertEquals(false, favoriteImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFavoriteImpllinks favoriteImpllinks1 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks2 = new OASFavoriteImpllinks();
        OASFavoriteImpllinks favoriteImpllinks3;

        System.assertEquals(false, favoriteImpllinks1.equals(favoriteImpllinks3));
        System.assertEquals(false, favoriteImpllinks2.equals(favoriteImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFavoriteImpllinks favoriteImpllinks1 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks2 = new OASFavoriteImpllinks();

        System.assertEquals(favoriteImpllinks1.hashCode(), favoriteImpllinks1.hashCode());
        System.assertEquals(favoriteImpllinks2.hashCode(), favoriteImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFavoriteImpllinks favoriteImpllinks1 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks2 = OASFavoriteImpllinks.getExample();
        OASFavoriteImpllinks favoriteImpllinks3 = new OASFavoriteImpllinks();
        OASFavoriteImpllinks favoriteImpllinks4 = new OASFavoriteImpllinks();

        System.assert(favoriteImpllinks1.equals(favoriteImpllinks2));
        System.assert(favoriteImpllinks3.equals(favoriteImpllinks4));
        System.assertEquals(favoriteImpllinks1.hashCode(), favoriteImpllinks2.hashCode());
        System.assertEquals(favoriteImpllinks3.hashCode(), favoriteImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFavoriteImpllinks favoriteImpllinks = new OASFavoriteImpllinks();
        Map<String, String> propertyMappings = favoriteImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
