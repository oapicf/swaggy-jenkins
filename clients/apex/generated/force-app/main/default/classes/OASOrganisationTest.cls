@isTest
private class OASOrganisationTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganisation organisation1 = OASOrganisation.getExample();
        OASOrganisation organisation2 = organisation1;
        OASOrganisation organisation3 = new OASOrganisation();
        OASOrganisation organisation4 = organisation3;

        System.assert(organisation1.equals(organisation2));
        System.assert(organisation2.equals(organisation1));
        System.assert(organisation1.equals(organisation1));
        System.assert(organisation3.equals(organisation4));
        System.assert(organisation4.equals(organisation3));
        System.assert(organisation3.equals(organisation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganisation organisation1 = OASOrganisation.getExample();
        OASOrganisation organisation2 = OASOrganisation.getExample();
        OASOrganisation organisation3 = new OASOrganisation();
        OASOrganisation organisation4 = new OASOrganisation();

        System.assert(organisation1.equals(organisation2));
        System.assert(organisation2.equals(organisation1));
        System.assert(organisation3.equals(organisation4));
        System.assert(organisation4.equals(organisation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganisation organisation1 = OASOrganisation.getExample();
        OASOrganisation organisation2 = new OASOrganisation();

        System.assertEquals(false, organisation1.equals('foo'));
        System.assertEquals(false, organisation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganisation organisation1 = OASOrganisation.getExample();
        OASOrganisation organisation2 = new OASOrganisation();
        OASOrganisation organisation3;

        System.assertEquals(false, organisation1.equals(organisation3));
        System.assertEquals(false, organisation2.equals(organisation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganisation organisation1 = OASOrganisation.getExample();
        OASOrganisation organisation2 = new OASOrganisation();

        System.assertEquals(organisation1.hashCode(), organisation1.hashCode());
        System.assertEquals(organisation2.hashCode(), organisation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganisation organisation1 = OASOrganisation.getExample();
        OASOrganisation organisation2 = OASOrganisation.getExample();
        OASOrganisation organisation3 = new OASOrganisation();
        OASOrganisation organisation4 = new OASOrganisation();

        System.assert(organisation1.equals(organisation2));
        System.assert(organisation3.equals(organisation4));
        System.assertEquals(organisation1.hashCode(), organisation2.hashCode());
        System.assertEquals(organisation3.hashCode(), organisation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrganisation organisation = new OASOrganisation();
        Map<String, String> propertyMappings = organisation.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
