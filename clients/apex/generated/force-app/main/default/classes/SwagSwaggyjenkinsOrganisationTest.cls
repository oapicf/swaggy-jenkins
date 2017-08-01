@isTest
private class SwagSwaggyjenkinsOrganisationTest {
    @isTest
    private static void equalsSameInstance() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation1 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation2 = swaggyjenkinsOrganisation1;
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation3 = new SwagSwaggyjenkinsOrganisation();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation4 = swaggyjenkinsOrganisation3;

        System.assert(swaggyjenkinsOrganisation1.equals(swaggyjenkinsOrganisation2));
        System.assert(swaggyjenkinsOrganisation2.equals(swaggyjenkinsOrganisation1));
        System.assert(swaggyjenkinsOrganisation1.equals(swaggyjenkinsOrganisation1));
        System.assert(swaggyjenkinsOrganisation3.equals(swaggyjenkinsOrganisation4));
        System.assert(swaggyjenkinsOrganisation4.equals(swaggyjenkinsOrganisation3));
        System.assert(swaggyjenkinsOrganisation3.equals(swaggyjenkinsOrganisation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation1 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation2 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation3 = new SwagSwaggyjenkinsOrganisation();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation4 = new SwagSwaggyjenkinsOrganisation();

        System.assert(swaggyjenkinsOrganisation1.equals(swaggyjenkinsOrganisation2));
        System.assert(swaggyjenkinsOrganisation2.equals(swaggyjenkinsOrganisation1));
        System.assert(swaggyjenkinsOrganisation3.equals(swaggyjenkinsOrganisation4));
        System.assert(swaggyjenkinsOrganisation4.equals(swaggyjenkinsOrganisation3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation1 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation2 = new SwagSwaggyjenkinsOrganisation();

        System.assertEquals(false, swaggyjenkinsOrganisation1.equals(swaggyjenkinsOrganisation2));
        System.assertEquals(false, swaggyjenkinsOrganisation2.equals(swaggyjenkinsOrganisation1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation1 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation2 = new SwagSwaggyjenkinsOrganisation();

        System.assertEquals(false, swaggyjenkinsOrganisation1.equals('foo'));
        System.assertEquals(false, swaggyjenkinsOrganisation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation1 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation2 = new SwagSwaggyjenkinsOrganisation();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation3;

        System.assertEquals(false, swaggyjenkinsOrganisation1.equals(swaggyjenkinsOrganisation3));
        System.assertEquals(false, swaggyjenkinsOrganisation2.equals(swaggyjenkinsOrganisation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation1 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation2 = new SwagSwaggyjenkinsOrganisation();

        System.assertEquals(swaggyjenkinsOrganisation1.hashCode(), swaggyjenkinsOrganisation1.hashCode());
        System.assertEquals(swaggyjenkinsOrganisation2.hashCode(), swaggyjenkinsOrganisation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation1 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation2 = SwagSwaggyjenkinsOrganisation.getExample();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation3 = new SwagSwaggyjenkinsOrganisation();
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation4 = new SwagSwaggyjenkinsOrganisation();

        System.assert(swaggyjenkinsOrganisation1.equals(swaggyjenkinsOrganisation2));
        System.assert(swaggyjenkinsOrganisation3.equals(swaggyjenkinsOrganisation4));
        System.assertEquals(swaggyjenkinsOrganisation1.hashCode(), swaggyjenkinsOrganisation2.hashCode());
        System.assertEquals(swaggyjenkinsOrganisation3.hashCode(), swaggyjenkinsOrganisation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagSwaggyjenkinsOrganisation swaggyjenkinsOrganisation = new SwagSwaggyjenkinsOrganisation();
        Map<String, String> propertyMappings = swaggyjenkinsOrganisation.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
