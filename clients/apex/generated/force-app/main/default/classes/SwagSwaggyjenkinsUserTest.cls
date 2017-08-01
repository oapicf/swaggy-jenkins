@isTest
private class SwagSwaggyjenkinsUserTest {
    @isTest
    private static void equalsSameInstance() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser1 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser2 = swaggyjenkinsUser1;
        SwagSwaggyjenkinsUser swaggyjenkinsUser3 = new SwagSwaggyjenkinsUser();
        SwagSwaggyjenkinsUser swaggyjenkinsUser4 = swaggyjenkinsUser3;

        System.assert(swaggyjenkinsUser1.equals(swaggyjenkinsUser2));
        System.assert(swaggyjenkinsUser2.equals(swaggyjenkinsUser1));
        System.assert(swaggyjenkinsUser1.equals(swaggyjenkinsUser1));
        System.assert(swaggyjenkinsUser3.equals(swaggyjenkinsUser4));
        System.assert(swaggyjenkinsUser4.equals(swaggyjenkinsUser3));
        System.assert(swaggyjenkinsUser3.equals(swaggyjenkinsUser3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser1 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser2 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser3 = new SwagSwaggyjenkinsUser();
        SwagSwaggyjenkinsUser swaggyjenkinsUser4 = new SwagSwaggyjenkinsUser();

        System.assert(swaggyjenkinsUser1.equals(swaggyjenkinsUser2));
        System.assert(swaggyjenkinsUser2.equals(swaggyjenkinsUser1));
        System.assert(swaggyjenkinsUser3.equals(swaggyjenkinsUser4));
        System.assert(swaggyjenkinsUser4.equals(swaggyjenkinsUser3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser1 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser2 = new SwagSwaggyjenkinsUser();

        System.assertEquals(false, swaggyjenkinsUser1.equals(swaggyjenkinsUser2));
        System.assertEquals(false, swaggyjenkinsUser2.equals(swaggyjenkinsUser1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser1 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser2 = new SwagSwaggyjenkinsUser();

        System.assertEquals(false, swaggyjenkinsUser1.equals('foo'));
        System.assertEquals(false, swaggyjenkinsUser2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser1 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser2 = new SwagSwaggyjenkinsUser();
        SwagSwaggyjenkinsUser swaggyjenkinsUser3;

        System.assertEquals(false, swaggyjenkinsUser1.equals(swaggyjenkinsUser3));
        System.assertEquals(false, swaggyjenkinsUser2.equals(swaggyjenkinsUser3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser1 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser2 = new SwagSwaggyjenkinsUser();

        System.assertEquals(swaggyjenkinsUser1.hashCode(), swaggyjenkinsUser1.hashCode());
        System.assertEquals(swaggyjenkinsUser2.hashCode(), swaggyjenkinsUser2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser1 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser2 = SwagSwaggyjenkinsUser.getExample();
        SwagSwaggyjenkinsUser swaggyjenkinsUser3 = new SwagSwaggyjenkinsUser();
        SwagSwaggyjenkinsUser swaggyjenkinsUser4 = new SwagSwaggyjenkinsUser();

        System.assert(swaggyjenkinsUser1.equals(swaggyjenkinsUser2));
        System.assert(swaggyjenkinsUser3.equals(swaggyjenkinsUser4));
        System.assertEquals(swaggyjenkinsUser1.hashCode(), swaggyjenkinsUser2.hashCode());
        System.assertEquals(swaggyjenkinsUser3.hashCode(), swaggyjenkinsUser4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagSwaggyjenkinsUser swaggyjenkinsUser = new SwagSwaggyjenkinsUser();
        Map<String, String> propertyMappings = swaggyjenkinsUser.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
