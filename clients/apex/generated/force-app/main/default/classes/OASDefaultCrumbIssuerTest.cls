@isTest
private class OASDefaultCrumbIssuerTest {
    @isTest
    private static void equalsSameInstance() {
        OASDefaultCrumbIssuer defaultCrumbIssuer1 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer2 = defaultCrumbIssuer1;
        OASDefaultCrumbIssuer defaultCrumbIssuer3 = new OASDefaultCrumbIssuer();
        OASDefaultCrumbIssuer defaultCrumbIssuer4 = defaultCrumbIssuer3;

        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer2));
        System.assert(defaultCrumbIssuer2.equals(defaultCrumbIssuer1));
        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer1));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer4));
        System.assert(defaultCrumbIssuer4.equals(defaultCrumbIssuer3));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDefaultCrumbIssuer defaultCrumbIssuer1 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer2 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer3 = new OASDefaultCrumbIssuer();
        OASDefaultCrumbIssuer defaultCrumbIssuer4 = new OASDefaultCrumbIssuer();

        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer2));
        System.assert(defaultCrumbIssuer2.equals(defaultCrumbIssuer1));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer4));
        System.assert(defaultCrumbIssuer4.equals(defaultCrumbIssuer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDefaultCrumbIssuer defaultCrumbIssuer1 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer2 = new OASDefaultCrumbIssuer();

        System.assertEquals(false, defaultCrumbIssuer1.equals('foo'));
        System.assertEquals(false, defaultCrumbIssuer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDefaultCrumbIssuer defaultCrumbIssuer1 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer2 = new OASDefaultCrumbIssuer();
        OASDefaultCrumbIssuer defaultCrumbIssuer3;

        System.assertEquals(false, defaultCrumbIssuer1.equals(defaultCrumbIssuer3));
        System.assertEquals(false, defaultCrumbIssuer2.equals(defaultCrumbIssuer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDefaultCrumbIssuer defaultCrumbIssuer1 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer2 = new OASDefaultCrumbIssuer();

        System.assertEquals(defaultCrumbIssuer1.hashCode(), defaultCrumbIssuer1.hashCode());
        System.assertEquals(defaultCrumbIssuer2.hashCode(), defaultCrumbIssuer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDefaultCrumbIssuer defaultCrumbIssuer1 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer2 = OASDefaultCrumbIssuer.getExample();
        OASDefaultCrumbIssuer defaultCrumbIssuer3 = new OASDefaultCrumbIssuer();
        OASDefaultCrumbIssuer defaultCrumbIssuer4 = new OASDefaultCrumbIssuer();

        System.assert(defaultCrumbIssuer1.equals(defaultCrumbIssuer2));
        System.assert(defaultCrumbIssuer3.equals(defaultCrumbIssuer4));
        System.assertEquals(defaultCrumbIssuer1.hashCode(), defaultCrumbIssuer2.hashCode());
        System.assertEquals(defaultCrumbIssuer3.hashCode(), defaultCrumbIssuer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDefaultCrumbIssuer defaultCrumbIssuer = new OASDefaultCrumbIssuer();
        Map<String, String> x-property-mappings = defaultCrumbIssuer.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
