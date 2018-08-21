@isTest
private class OASUserFavoritesTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserFavorites userFavorites1 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites2 = userFavorites1;
        OASUserFavorites userFavorites3 = new OASUserFavorites();
        OASUserFavorites userFavorites4 = userFavorites3;

        System.assert(userFavorites1.equals(userFavorites2));
        System.assert(userFavorites2.equals(userFavorites1));
        System.assert(userFavorites1.equals(userFavorites1));
        System.assert(userFavorites3.equals(userFavorites4));
        System.assert(userFavorites4.equals(userFavorites3));
        System.assert(userFavorites3.equals(userFavorites3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserFavorites userFavorites1 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites2 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites3 = new OASUserFavorites();
        OASUserFavorites userFavorites4 = new OASUserFavorites();

        System.assert(userFavorites1.equals(userFavorites2));
        System.assert(userFavorites2.equals(userFavorites1));
        System.assert(userFavorites3.equals(userFavorites4));
        System.assert(userFavorites4.equals(userFavorites3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserFavorites userFavorites1 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites2 = new OASUserFavorites();

        System.assertEquals(false, userFavorites1.equals('foo'));
        System.assertEquals(false, userFavorites2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserFavorites userFavorites1 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites2 = new OASUserFavorites();
        OASUserFavorites userFavorites3;

        System.assertEquals(false, userFavorites1.equals(userFavorites3));
        System.assertEquals(false, userFavorites2.equals(userFavorites3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserFavorites userFavorites1 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites2 = new OASUserFavorites();

        System.assertEquals(userFavorites1.hashCode(), userFavorites1.hashCode());
        System.assertEquals(userFavorites2.hashCode(), userFavorites2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserFavorites userFavorites1 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites2 = OASUserFavorites.getExample();
        OASUserFavorites userFavorites3 = new OASUserFavorites();
        OASUserFavorites userFavorites4 = new OASUserFavorites();

        System.assert(userFavorites1.equals(userFavorites2));
        System.assert(userFavorites3.equals(userFavorites4));
        System.assertEquals(userFavorites1.hashCode(), userFavorites2.hashCode());
        System.assertEquals(userFavorites3.hashCode(), userFavorites4.hashCode());
    }
}
