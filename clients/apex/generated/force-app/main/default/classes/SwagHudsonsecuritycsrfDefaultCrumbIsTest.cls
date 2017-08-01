@isTest
private class SwagHudsonsecuritycsrfDefaultCrumbIsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer1 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer2 = hudsonsecuritycsrfDefaultCrumbIssuer1;
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer3 = new SwagHudsonsecuritycsrfDefaultCrumbIs();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer4 = hudsonsecuritycsrfDefaultCrumbIssuer3;

        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer1.equals(hudsonsecuritycsrfDefaultCrumbIssuer2));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer2.equals(hudsonsecuritycsrfDefaultCrumbIssuer1));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer1.equals(hudsonsecuritycsrfDefaultCrumbIssuer1));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer3.equals(hudsonsecuritycsrfDefaultCrumbIssuer4));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer4.equals(hudsonsecuritycsrfDefaultCrumbIssuer3));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer3.equals(hudsonsecuritycsrfDefaultCrumbIssuer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer1 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer2 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer3 = new SwagHudsonsecuritycsrfDefaultCrumbIs();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer4 = new SwagHudsonsecuritycsrfDefaultCrumbIs();

        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer1.equals(hudsonsecuritycsrfDefaultCrumbIssuer2));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer2.equals(hudsonsecuritycsrfDefaultCrumbIssuer1));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer3.equals(hudsonsecuritycsrfDefaultCrumbIssuer4));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer4.equals(hudsonsecuritycsrfDefaultCrumbIssuer3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer1 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer2 = new SwagHudsonsecuritycsrfDefaultCrumbIs();

        System.assertEquals(false, hudsonsecuritycsrfDefaultCrumbIssuer1.equals(hudsonsecuritycsrfDefaultCrumbIssuer2));
        System.assertEquals(false, hudsonsecuritycsrfDefaultCrumbIssuer2.equals(hudsonsecuritycsrfDefaultCrumbIssuer1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer1 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer2 = new SwagHudsonsecuritycsrfDefaultCrumbIs();

        System.assertEquals(false, hudsonsecuritycsrfDefaultCrumbIssuer1.equals('foo'));
        System.assertEquals(false, hudsonsecuritycsrfDefaultCrumbIssuer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer1 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer2 = new SwagHudsonsecuritycsrfDefaultCrumbIs();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer3;

        System.assertEquals(false, hudsonsecuritycsrfDefaultCrumbIssuer1.equals(hudsonsecuritycsrfDefaultCrumbIssuer3));
        System.assertEquals(false, hudsonsecuritycsrfDefaultCrumbIssuer2.equals(hudsonsecuritycsrfDefaultCrumbIssuer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer1 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer2 = new SwagHudsonsecuritycsrfDefaultCrumbIs();

        System.assertEquals(hudsonsecuritycsrfDefaultCrumbIssuer1.hashCode(), hudsonsecuritycsrfDefaultCrumbIssuer1.hashCode());
        System.assertEquals(hudsonsecuritycsrfDefaultCrumbIssuer2.hashCode(), hudsonsecuritycsrfDefaultCrumbIssuer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer1 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer2 = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer3 = new SwagHudsonsecuritycsrfDefaultCrumbIs();
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer4 = new SwagHudsonsecuritycsrfDefaultCrumbIs();

        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer1.equals(hudsonsecuritycsrfDefaultCrumbIssuer2));
        System.assert(hudsonsecuritycsrfDefaultCrumbIssuer3.equals(hudsonsecuritycsrfDefaultCrumbIssuer4));
        System.assertEquals(hudsonsecuritycsrfDefaultCrumbIssuer1.hashCode(), hudsonsecuritycsrfDefaultCrumbIssuer2.hashCode());
        System.assertEquals(hudsonsecuritycsrfDefaultCrumbIssuer3.hashCode(), hudsonsecuritycsrfDefaultCrumbIssuer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonsecuritycsrfDefaultCrumbIs hudsonsecuritycsrfDefaultCrumbIssuer = new SwagHudsonsecuritycsrfDefaultCrumbIs();
        Map<String, String> propertyMappings = hudsonsecuritycsrfDefaultCrumbIssuer.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
