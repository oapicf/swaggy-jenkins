@isTest
private class SwagScmOrganisationsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagScmOrganisations scmOrganisations1 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations2 = scmOrganisations1;
        SwagScmOrganisations scmOrganisations3 = new SwagScmOrganisations();
        SwagScmOrganisations scmOrganisations4 = scmOrganisations3;

        System.assert(scmOrganisations1.equals(scmOrganisations2));
        System.assert(scmOrganisations2.equals(scmOrganisations1));
        System.assert(scmOrganisations1.equals(scmOrganisations1));
        System.assert(scmOrganisations3.equals(scmOrganisations4));
        System.assert(scmOrganisations4.equals(scmOrganisations3));
        System.assert(scmOrganisations3.equals(scmOrganisations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagScmOrganisations scmOrganisations1 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations2 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations3 = new SwagScmOrganisations();
        SwagScmOrganisations scmOrganisations4 = new SwagScmOrganisations();

        System.assert(scmOrganisations1.equals(scmOrganisations2));
        System.assert(scmOrganisations2.equals(scmOrganisations1));
        System.assert(scmOrganisations3.equals(scmOrganisations4));
        System.assert(scmOrganisations4.equals(scmOrganisations3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagScmOrganisations scmOrganisations1 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations2 = new SwagScmOrganisations();

        System.assertEquals(false, scmOrganisations1.equals(scmOrganisations2));
        System.assertEquals(false, scmOrganisations2.equals(scmOrganisations1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagScmOrganisations scmOrganisations1 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations2 = new SwagScmOrganisations();

        System.assertEquals(false, scmOrganisations1.equals('foo'));
        System.assertEquals(false, scmOrganisations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagScmOrganisations scmOrganisations1 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations2 = new SwagScmOrganisations();
        SwagScmOrganisations scmOrganisations3;

        System.assertEquals(false, scmOrganisations1.equals(scmOrganisations3));
        System.assertEquals(false, scmOrganisations2.equals(scmOrganisations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagScmOrganisations scmOrganisations1 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations2 = new SwagScmOrganisations();

        System.assertEquals(scmOrganisations1.hashCode(), scmOrganisations1.hashCode());
        System.assertEquals(scmOrganisations2.hashCode(), scmOrganisations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagScmOrganisations scmOrganisations1 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations2 = SwagScmOrganisations.getExample();
        SwagScmOrganisations scmOrganisations3 = new SwagScmOrganisations();
        SwagScmOrganisations scmOrganisations4 = new SwagScmOrganisations();

        System.assert(scmOrganisations1.equals(scmOrganisations2));
        System.assert(scmOrganisations3.equals(scmOrganisations4));
        System.assertEquals(scmOrganisations1.hashCode(), scmOrganisations2.hashCode());
        System.assertEquals(scmOrganisations3.hashCode(), scmOrganisations4.hashCode());
    }
}
