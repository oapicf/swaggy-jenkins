@isTest
private class OASUsersTest {
    @isTest
    private static void equalsSameInstance() {
        OASUsers users1 = OASUsers.getExample();
        OASUsers users2 = users1;
        OASUsers users3 = new OASUsers();
        OASUsers users4 = users3;

        System.assert(users1.equals(users2));
        System.assert(users2.equals(users1));
        System.assert(users1.equals(users1));
        System.assert(users3.equals(users4));
        System.assert(users4.equals(users3));
        System.assert(users3.equals(users3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUsers users1 = OASUsers.getExample();
        OASUsers users2 = OASUsers.getExample();
        OASUsers users3 = new OASUsers();
        OASUsers users4 = new OASUsers();

        System.assert(users1.equals(users2));
        System.assert(users2.equals(users1));
        System.assert(users3.equals(users4));
        System.assert(users4.equals(users3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUsers users1 = OASUsers.getExample();
        OASUsers users2 = new OASUsers();

        System.assertEquals(false, users1.equals('foo'));
        System.assertEquals(false, users2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUsers users1 = OASUsers.getExample();
        OASUsers users2 = new OASUsers();
        OASUsers users3;

        System.assertEquals(false, users1.equals(users3));
        System.assertEquals(false, users2.equals(users3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUsers users1 = OASUsers.getExample();
        OASUsers users2 = new OASUsers();

        System.assertEquals(users1.hashCode(), users1.hashCode());
        System.assertEquals(users2.hashCode(), users2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUsers users1 = OASUsers.getExample();
        OASUsers users2 = OASUsers.getExample();
        OASUsers users3 = new OASUsers();
        OASUsers users4 = new OASUsers();

        System.assert(users1.equals(users2));
        System.assert(users3.equals(users4));
        System.assertEquals(users1.hashCode(), users2.hashCode());
        System.assertEquals(users3.hashCode(), users4.hashCode());
    }
}
