@isTest
private class OASScmOrganisationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASScmOrganisations scmOrganisations1 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations2 = scmOrganisations1;
        OASScmOrganisations scmOrganisations3 = new OASScmOrganisations();
        OASScmOrganisations scmOrganisations4 = scmOrganisations3;

        System.assert(scmOrganisations1.equals(scmOrganisations2));
        System.assert(scmOrganisations2.equals(scmOrganisations1));
        System.assert(scmOrganisations1.equals(scmOrganisations1));
        System.assert(scmOrganisations3.equals(scmOrganisations4));
        System.assert(scmOrganisations4.equals(scmOrganisations3));
        System.assert(scmOrganisations3.equals(scmOrganisations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScmOrganisations scmOrganisations1 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations2 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations3 = new OASScmOrganisations();
        OASScmOrganisations scmOrganisations4 = new OASScmOrganisations();

        System.assert(scmOrganisations1.equals(scmOrganisations2));
        System.assert(scmOrganisations2.equals(scmOrganisations1));
        System.assert(scmOrganisations3.equals(scmOrganisations4));
        System.assert(scmOrganisations4.equals(scmOrganisations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScmOrganisations scmOrganisations1 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations2 = new OASScmOrganisations();

        System.assertEquals(false, scmOrganisations1.equals('foo'));
        System.assertEquals(false, scmOrganisations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScmOrganisations scmOrganisations1 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations2 = new OASScmOrganisations();
        OASScmOrganisations scmOrganisations3;

        System.assertEquals(false, scmOrganisations1.equals(scmOrganisations3));
        System.assertEquals(false, scmOrganisations2.equals(scmOrganisations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScmOrganisations scmOrganisations1 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations2 = new OASScmOrganisations();

        System.assertEquals(scmOrganisations1.hashCode(), scmOrganisations1.hashCode());
        System.assertEquals(scmOrganisations2.hashCode(), scmOrganisations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScmOrganisations scmOrganisations1 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations2 = OASScmOrganisations.getExample();
        OASScmOrganisations scmOrganisations3 = new OASScmOrganisations();
        OASScmOrganisations scmOrganisations4 = new OASScmOrganisations();

        System.assert(scmOrganisations1.equals(scmOrganisations2));
        System.assert(scmOrganisations3.equals(scmOrganisations4));
        System.assertEquals(scmOrganisations1.hashCode(), scmOrganisations2.hashCode());
        System.assertEquals(scmOrganisations3.hashCode(), scmOrganisations4.hashCode());
    }
}
