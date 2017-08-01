@isTest
private class SwagGetOrganisationsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetOrganisations getOrganisations1 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations2 = getOrganisations1;
        SwagGetOrganisations getOrganisations3 = new SwagGetOrganisations();
        SwagGetOrganisations getOrganisations4 = getOrganisations3;

        System.assert(getOrganisations1.equals(getOrganisations2));
        System.assert(getOrganisations2.equals(getOrganisations1));
        System.assert(getOrganisations1.equals(getOrganisations1));
        System.assert(getOrganisations3.equals(getOrganisations4));
        System.assert(getOrganisations4.equals(getOrganisations3));
        System.assert(getOrganisations3.equals(getOrganisations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetOrganisations getOrganisations1 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations2 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations3 = new SwagGetOrganisations();
        SwagGetOrganisations getOrganisations4 = new SwagGetOrganisations();

        System.assert(getOrganisations1.equals(getOrganisations2));
        System.assert(getOrganisations2.equals(getOrganisations1));
        System.assert(getOrganisations3.equals(getOrganisations4));
        System.assert(getOrganisations4.equals(getOrganisations3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetOrganisations getOrganisations1 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations2 = new SwagGetOrganisations();

        System.assertEquals(false, getOrganisations1.equals(getOrganisations2));
        System.assertEquals(false, getOrganisations2.equals(getOrganisations1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetOrganisations getOrganisations1 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations2 = new SwagGetOrganisations();

        System.assertEquals(false, getOrganisations1.equals('foo'));
        System.assertEquals(false, getOrganisations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetOrganisations getOrganisations1 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations2 = new SwagGetOrganisations();
        SwagGetOrganisations getOrganisations3;

        System.assertEquals(false, getOrganisations1.equals(getOrganisations3));
        System.assertEquals(false, getOrganisations2.equals(getOrganisations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetOrganisations getOrganisations1 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations2 = new SwagGetOrganisations();

        System.assertEquals(getOrganisations1.hashCode(), getOrganisations1.hashCode());
        System.assertEquals(getOrganisations2.hashCode(), getOrganisations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetOrganisations getOrganisations1 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations2 = SwagGetOrganisations.getExample();
        SwagGetOrganisations getOrganisations3 = new SwagGetOrganisations();
        SwagGetOrganisations getOrganisations4 = new SwagGetOrganisations();

        System.assert(getOrganisations1.equals(getOrganisations2));
        System.assert(getOrganisations3.equals(getOrganisations4));
        System.assertEquals(getOrganisations1.hashCode(), getOrganisations2.hashCode());
        System.assertEquals(getOrganisations3.hashCode(), getOrganisations4.hashCode());
    }
}
