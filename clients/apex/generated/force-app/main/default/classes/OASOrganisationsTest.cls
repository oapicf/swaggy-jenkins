@isTest
private class OASOrganisationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganisations organisations1 = OASOrganisations.getExample();
        OASOrganisations organisations2 = organisations1;
        OASOrganisations organisations3 = new OASOrganisations();
        OASOrganisations organisations4 = organisations3;

        System.assert(organisations1.equals(organisations2));
        System.assert(organisations2.equals(organisations1));
        System.assert(organisations1.equals(organisations1));
        System.assert(organisations3.equals(organisations4));
        System.assert(organisations4.equals(organisations3));
        System.assert(organisations3.equals(organisations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganisations organisations1 = OASOrganisations.getExample();
        OASOrganisations organisations2 = OASOrganisations.getExample();
        OASOrganisations organisations3 = new OASOrganisations();
        OASOrganisations organisations4 = new OASOrganisations();

        System.assert(organisations1.equals(organisations2));
        System.assert(organisations2.equals(organisations1));
        System.assert(organisations3.equals(organisations4));
        System.assert(organisations4.equals(organisations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganisations organisations1 = OASOrganisations.getExample();
        OASOrganisations organisations2 = new OASOrganisations();

        System.assertEquals(false, organisations1.equals('foo'));
        System.assertEquals(false, organisations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganisations organisations1 = OASOrganisations.getExample();
        OASOrganisations organisations2 = new OASOrganisations();
        OASOrganisations organisations3;

        System.assertEquals(false, organisations1.equals(organisations3));
        System.assertEquals(false, organisations2.equals(organisations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganisations organisations1 = OASOrganisations.getExample();
        OASOrganisations organisations2 = new OASOrganisations();

        System.assertEquals(organisations1.hashCode(), organisations1.hashCode());
        System.assertEquals(organisations2.hashCode(), organisations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganisations organisations1 = OASOrganisations.getExample();
        OASOrganisations organisations2 = OASOrganisations.getExample();
        OASOrganisations organisations3 = new OASOrganisations();
        OASOrganisations organisations4 = new OASOrganisations();

        System.assert(organisations1.equals(organisations2));
        System.assert(organisations3.equals(organisations4));
        System.assertEquals(organisations1.hashCode(), organisations2.hashCode());
        System.assertEquals(organisations3.hashCode(), organisations4.hashCode());
    }
}
