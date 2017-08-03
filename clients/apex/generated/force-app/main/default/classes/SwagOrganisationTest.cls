@isTest
private class SwagOrganisationTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOrganisation organisation1 = SwagOrganisation.getExample();
        SwagOrganisation organisation2 = organisation1;
        SwagOrganisation organisation3 = new SwagOrganisation();
        SwagOrganisation organisation4 = organisation3;

        System.assert(organisation1.equals(organisation2));
        System.assert(organisation2.equals(organisation1));
        System.assert(organisation1.equals(organisation1));
        System.assert(organisation3.equals(organisation4));
        System.assert(organisation4.equals(organisation3));
        System.assert(organisation3.equals(organisation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOrganisation organisation1 = SwagOrganisation.getExample();
        SwagOrganisation organisation2 = SwagOrganisation.getExample();
        SwagOrganisation organisation3 = new SwagOrganisation();
        SwagOrganisation organisation4 = new SwagOrganisation();

        System.assert(organisation1.equals(organisation2));
        System.assert(organisation2.equals(organisation1));
        System.assert(organisation3.equals(organisation4));
        System.assert(organisation4.equals(organisation3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOrganisation organisation1 = SwagOrganisation.getExample();
        SwagOrganisation organisation2 = new SwagOrganisation();

        System.assertEquals(false, organisation1.equals(organisation2));
        System.assertEquals(false, organisation2.equals(organisation1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOrganisation organisation1 = SwagOrganisation.getExample();
        SwagOrganisation organisation2 = new SwagOrganisation();

        System.assertEquals(false, organisation1.equals('foo'));
        System.assertEquals(false, organisation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOrganisation organisation1 = SwagOrganisation.getExample();
        SwagOrganisation organisation2 = new SwagOrganisation();
        SwagOrganisation organisation3;

        System.assertEquals(false, organisation1.equals(organisation3));
        System.assertEquals(false, organisation2.equals(organisation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOrganisation organisation1 = SwagOrganisation.getExample();
        SwagOrganisation organisation2 = new SwagOrganisation();

        System.assertEquals(organisation1.hashCode(), organisation1.hashCode());
        System.assertEquals(organisation2.hashCode(), organisation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOrganisation organisation1 = SwagOrganisation.getExample();
        SwagOrganisation organisation2 = SwagOrganisation.getExample();
        SwagOrganisation organisation3 = new SwagOrganisation();
        SwagOrganisation organisation4 = new SwagOrganisation();

        System.assert(organisation1.equals(organisation2));
        System.assert(organisation3.equals(organisation4));
        System.assertEquals(organisation1.hashCode(), organisation2.hashCode());
        System.assertEquals(organisation3.hashCode(), organisation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagOrganisation organisation = new SwagOrganisation();
        Map<String, String> propertyMappings = organisation.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
