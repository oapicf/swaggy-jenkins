@isTest
private class SwagUsersTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUsers users1 = SwagUsers.getExample();
        SwagUsers users2 = users1;
        SwagUsers users3 = new SwagUsers();
        SwagUsers users4 = users3;

        System.assert(users1.equals(users2));
        System.assert(users2.equals(users1));
        System.assert(users1.equals(users1));
        System.assert(users3.equals(users4));
        System.assert(users4.equals(users3));
        System.assert(users3.equals(users3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUsers users1 = SwagUsers.getExample();
        SwagUsers users2 = SwagUsers.getExample();
        SwagUsers users3 = new SwagUsers();
        SwagUsers users4 = new SwagUsers();

        System.assert(users1.equals(users2));
        System.assert(users2.equals(users1));
        System.assert(users3.equals(users4));
        System.assert(users4.equals(users3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUsers users1 = SwagUsers.getExample();
        SwagUsers users2 = new SwagUsers();

        System.assertEquals(false, users1.equals(users2));
        System.assertEquals(false, users2.equals(users1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUsers users1 = SwagUsers.getExample();
        SwagUsers users2 = new SwagUsers();

        System.assertEquals(false, users1.equals('foo'));
        System.assertEquals(false, users2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUsers users1 = SwagUsers.getExample();
        SwagUsers users2 = new SwagUsers();
        SwagUsers users3;

        System.assertEquals(false, users1.equals(users3));
        System.assertEquals(false, users2.equals(users3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUsers users1 = SwagUsers.getExample();
        SwagUsers users2 = new SwagUsers();

        System.assertEquals(users1.hashCode(), users1.hashCode());
        System.assertEquals(users2.hashCode(), users2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUsers users1 = SwagUsers.getExample();
        SwagUsers users2 = SwagUsers.getExample();
        SwagUsers users3 = new SwagUsers();
        SwagUsers users4 = new SwagUsers();

        System.assert(users1.equals(users2));
        System.assert(users3.equals(users4));
        System.assertEquals(users1.hashCode(), users2.hashCode());
        System.assertEquals(users3.hashCode(), users4.hashCode());
    }
}
