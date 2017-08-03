@isTest
private class SwagDefaultCrumbIssuerTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer1 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer2 = defaultCrumbIssuer1;
        SwagDefaultCrumbIssuer defaultCrumbIssuer3 = new SwagDefaultCrumbIssuer();
        SwagDefaultCrumbIssuer defaultCrumbIssuer4 = defaultCrumbIssuer3;

        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer2));
        System.assert(defaultCrumbIssuer2.equals(defaultCrumbIssuer1));
        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer1));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer4));
        System.assert(defaultCrumbIssuer4.equals(defaultCrumbIssuer3));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer1 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer2 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer3 = new SwagDefaultCrumbIssuer();
        SwagDefaultCrumbIssuer defaultCrumbIssuer4 = new SwagDefaultCrumbIssuer();

        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer2));
        System.assert(defaultCrumbIssuer2.equals(defaultCrumbIssuer1));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer4));
        System.assert(defaultCrumbIssuer4.equals(defaultCrumbIssuer3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer1 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer2 = new SwagDefaultCrumbIssuer();

        System.assertEquals(false, defaultCrumbIssuer1.equals(defaultCrumbIssuer2));
        System.assertEquals(false, defaultCrumbIssuer2.equals(defaultCrumbIssuer1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer1 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer2 = new SwagDefaultCrumbIssuer();

        System.assertEquals(false, defaultCrumbIssuer1.equals('foo'));
        System.assertEquals(false, defaultCrumbIssuer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer1 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer2 = new SwagDefaultCrumbIssuer();
        SwagDefaultCrumbIssuer defaultCrumbIssuer3;

        System.assertEquals(false, defaultCrumbIssuer1.equals(defaultCrumbIssuer3));
        System.assertEquals(false, defaultCrumbIssuer2.equals(defaultCrumbIssuer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer1 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer2 = new SwagDefaultCrumbIssuer();

        System.assertEquals(defaultCrumbIssuer1.hashCode(), defaultCrumbIssuer1.hashCode());
        System.assertEquals(defaultCrumbIssuer2.hashCode(), defaultCrumbIssuer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer1 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer2 = SwagDefaultCrumbIssuer.getExample();
        SwagDefaultCrumbIssuer defaultCrumbIssuer3 = new SwagDefaultCrumbIssuer();
        SwagDefaultCrumbIssuer defaultCrumbIssuer4 = new SwagDefaultCrumbIssuer();

        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer2));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer4));
        System.assertEquals(defaultCrumbIssuer1.hashCode(), defaultCrumbIssuer2.hashCode());
        System.assertEquals(defaultCrumbIssuer3.hashCode(), defaultCrumbIssuer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDefaultCrumbIssuer defaultCrumbIssuer = new SwagDefaultCrumbIssuer();
        Map<String, String> propertyMappings = defaultCrumbIssuer.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
