@isTest
private class SwagOrganisationsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOrganisations organisations1 = SwagOrganisations.getExample();
        SwagOrganisations organisations2 = organisations1;
        SwagOrganisations organisations3 = new SwagOrganisations();
        SwagOrganisations organisations4 = organisations3;

        System.assert(organisations1.equals(organisations2));
        System.assert(organisations2.equals(organisations1));
        System.assert(organisations1.equals(organisations1));
        System.assert(organisations3.equals(organisations4));
        System.assert(organisations4.equals(organisations3));
        System.assert(organisations3.equals(organisations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOrganisations organisations1 = SwagOrganisations.getExample();
        SwagOrganisations organisations2 = SwagOrganisations.getExample();
        SwagOrganisations organisations3 = new SwagOrganisations();
        SwagOrganisations organisations4 = new SwagOrganisations();

        System.assert(organisations1.equals(organisations2));
        System.assert(organisations2.equals(organisations1));
        System.assert(organisations3.equals(organisations4));
        System.assert(organisations4.equals(organisations3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOrganisations organisations1 = SwagOrganisations.getExample();
        SwagOrganisations organisations2 = new SwagOrganisations();

        System.assertEquals(false, organisations1.equals(organisations2));
        System.assertEquals(false, organisations2.equals(organisations1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOrganisations organisations1 = SwagOrganisations.getExample();
        SwagOrganisations organisations2 = new SwagOrganisations();

        System.assertEquals(false, organisations1.equals('foo'));
        System.assertEquals(false, organisations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOrganisations organisations1 = SwagOrganisations.getExample();
        SwagOrganisations organisations2 = new SwagOrganisations();
        SwagOrganisations organisations3;

        System.assertEquals(false, organisations1.equals(organisations3));
        System.assertEquals(false, organisations2.equals(organisations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOrganisations organisations1 = SwagOrganisations.getExample();
        SwagOrganisations organisations2 = new SwagOrganisations();

        System.assertEquals(organisations1.hashCode(), organisations1.hashCode());
        System.assertEquals(organisations2.hashCode(), organisations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOrganisations organisations1 = SwagOrganisations.getExample();
        SwagOrganisations organisations2 = SwagOrganisations.getExample();
        SwagOrganisations organisations3 = new SwagOrganisations();
        SwagOrganisations organisations4 = new SwagOrganisations();

        System.assert(organisations1.equals(organisations2));
        System.assert(organisations3.equals(organisations4));
        System.assertEquals(organisations1.hashCode(), organisations2.hashCode());
        System.assertEquals(organisations3.hashCode(), organisations4.hashCode());
    }
}
