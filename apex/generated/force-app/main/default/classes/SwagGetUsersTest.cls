@isTest
private class SwagGetUsersTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetUsers getUsers1 = SwagGetUsers.getExample();
        SwagGetUsers getUsers2 = getUsers1;
        SwagGetUsers getUsers3 = new SwagGetUsers();
        SwagGetUsers getUsers4 = getUsers3;

        System.assert(getUsers1.equals(getUsers2));
        System.assert(getUsers2.equals(getUsers1));
        System.assert(getUsers1.equals(getUsers1));
        System.assert(getUsers3.equals(getUsers4));
        System.assert(getUsers4.equals(getUsers3));
        System.assert(getUsers3.equals(getUsers3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetUsers getUsers1 = SwagGetUsers.getExample();
        SwagGetUsers getUsers2 = SwagGetUsers.getExample();
        SwagGetUsers getUsers3 = new SwagGetUsers();
        SwagGetUsers getUsers4 = new SwagGetUsers();

        System.assert(getUsers1.equals(getUsers2));
        System.assert(getUsers2.equals(getUsers1));
        System.assert(getUsers3.equals(getUsers4));
        System.assert(getUsers4.equals(getUsers3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetUsers getUsers1 = SwagGetUsers.getExample();
        SwagGetUsers getUsers2 = new SwagGetUsers();

        System.assertEquals(false, getUsers1.equals(getUsers2));
        System.assertEquals(false, getUsers2.equals(getUsers1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetUsers getUsers1 = SwagGetUsers.getExample();
        SwagGetUsers getUsers2 = new SwagGetUsers();

        System.assertEquals(false, getUsers1.equals('foo'));
        System.assertEquals(false, getUsers2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetUsers getUsers1 = SwagGetUsers.getExample();
        SwagGetUsers getUsers2 = new SwagGetUsers();
        SwagGetUsers getUsers3;

        System.assertEquals(false, getUsers1.equals(getUsers3));
        System.assertEquals(false, getUsers2.equals(getUsers3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetUsers getUsers1 = SwagGetUsers.getExample();
        SwagGetUsers getUsers2 = new SwagGetUsers();

        System.assertEquals(getUsers1.hashCode(), getUsers1.hashCode());
        System.assertEquals(getUsers2.hashCode(), getUsers2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetUsers getUsers1 = SwagGetUsers.getExample();
        SwagGetUsers getUsers2 = SwagGetUsers.getExample();
        SwagGetUsers getUsers3 = new SwagGetUsers();
        SwagGetUsers getUsers4 = new SwagGetUsers();

        System.assert(getUsers1.equals(getUsers2));
        System.assert(getUsers3.equals(getUsers4));
        System.assertEquals(getUsers1.hashCode(), getUsers2.hashCode());
        System.assertEquals(getUsers3.hashCode(), getUsers4.hashCode());
    }
}
