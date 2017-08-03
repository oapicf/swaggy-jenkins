@isTest
private class SwagUserFavoritesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUserFavorites userFavorites1 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites2 = userFavorites1;
        SwagUserFavorites userFavorites3 = new SwagUserFavorites();
        SwagUserFavorites userFavorites4 = userFavorites3;

        System.assert(userFavorites1.equals(userFavorites2));
        System.assert(userFavorites2.equals(userFavorites1));
        System.assert(userFavorites1.equals(userFavorites1));
        System.assert(userFavorites3.equals(userFavorites4));
        System.assert(userFavorites4.equals(userFavorites3));
        System.assert(userFavorites3.equals(userFavorites3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUserFavorites userFavorites1 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites2 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites3 = new SwagUserFavorites();
        SwagUserFavorites userFavorites4 = new SwagUserFavorites();

        System.assert(userFavorites1.equals(userFavorites2));
        System.assert(userFavorites2.equals(userFavorites1));
        System.assert(userFavorites3.equals(userFavorites4));
        System.assert(userFavorites4.equals(userFavorites3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUserFavorites userFavorites1 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites2 = new SwagUserFavorites();

        System.assertEquals(false, userFavorites1.equals(userFavorites2));
        System.assertEquals(false, userFavorites2.equals(userFavorites1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUserFavorites userFavorites1 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites2 = new SwagUserFavorites();

        System.assertEquals(false, userFavorites1.equals('foo'));
        System.assertEquals(false, userFavorites2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUserFavorites userFavorites1 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites2 = new SwagUserFavorites();
        SwagUserFavorites userFavorites3;

        System.assertEquals(false, userFavorites1.equals(userFavorites3));
        System.assertEquals(false, userFavorites2.equals(userFavorites3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUserFavorites userFavorites1 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites2 = new SwagUserFavorites();

        System.assertEquals(userFavorites1.hashCode(), userFavorites1.hashCode());
        System.assertEquals(userFavorites2.hashCode(), userFavorites2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUserFavorites userFavorites1 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites2 = SwagUserFavorites.getExample();
        SwagUserFavorites userFavorites3 = new SwagUserFavorites();
        SwagUserFavorites userFavorites4 = new SwagUserFavorites();

        System.assert(userFavorites1.equals(userFavorites2));
        System.assert(userFavorites3.equals(userFavorites4));
        System.assertEquals(userFavorites1.hashCode(), userFavorites2.hashCode());
        System.assertEquals(userFavorites3.hashCode(), userFavorites4.hashCode());
    }
}
