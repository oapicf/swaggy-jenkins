@isTest
private class SwagBranchImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagBranchImpl branchImpl1 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl2 = branchImpl1;
        SwagBranchImpl branchImpl3 = new SwagBranchImpl();
        SwagBranchImpl branchImpl4 = branchImpl3;

        System.assert(branchImpl1.equals(branchImpl2));
        System.assert(branchImpl2.equals(branchImpl1));
        System.assert(branchImpl1.equals(branchImpl1));
        System.assert(branchImpl3.equals(branchImpl4));
        System.assert(branchImpl4.equals(branchImpl3));
        System.assert(branchImpl3.equals(branchImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagBranchImpl branchImpl1 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl2 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl3 = new SwagBranchImpl();
        SwagBranchImpl branchImpl4 = new SwagBranchImpl();

        System.assert(branchImpl1.equals(branchImpl2));
        System.assert(branchImpl2.equals(branchImpl1));
        System.assert(branchImpl3.equals(branchImpl4));
        System.assert(branchImpl4.equals(branchImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagBranchImpl branchImpl1 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl2 = new SwagBranchImpl();

        System.assertEquals(false, branchImpl1.equals(branchImpl2));
        System.assertEquals(false, branchImpl2.equals(branchImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagBranchImpl branchImpl1 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl2 = new SwagBranchImpl();

        System.assertEquals(false, branchImpl1.equals('foo'));
        System.assertEquals(false, branchImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagBranchImpl branchImpl1 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl2 = new SwagBranchImpl();
        SwagBranchImpl branchImpl3;

        System.assertEquals(false, branchImpl1.equals(branchImpl3));
        System.assertEquals(false, branchImpl2.equals(branchImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagBranchImpl branchImpl1 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl2 = new SwagBranchImpl();

        System.assertEquals(branchImpl1.hashCode(), branchImpl1.hashCode());
        System.assertEquals(branchImpl2.hashCode(), branchImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagBranchImpl branchImpl1 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl2 = SwagBranchImpl.getExample();
        SwagBranchImpl branchImpl3 = new SwagBranchImpl();
        SwagBranchImpl branchImpl4 = new SwagBranchImpl();

        System.assert(branchImpl1.equals(branchImpl2));
        System.assert(branchImpl3.equals(branchImpl4));
        System.assertEquals(branchImpl1.hashCode(), branchImpl2.hashCode());
        System.assertEquals(branchImpl3.hashCode(), branchImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagBranchImpl branchImpl = new SwagBranchImpl();
        Map<String, String> propertyMappings = branchImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagBranchImpl branchImpl = new SwagBranchImpl();
        System.assertEquals(new List<SwagStringParameterDefinition>(), branchImpl.parameters);
        System.assertEquals(null, branchImpl.propertyClass);
        System.assertEquals(null, branchImpl.displayName);
        System.assertEquals(null, branchImpl.estimatedDurationInMillis);
        System.assertEquals(null, branchImpl.fullDisplayName);
        System.assertEquals(null, branchImpl.fullName);
        System.assertEquals(null, branchImpl.name);
        System.assertEquals(null, branchImpl.organization);
        System.assertEquals(null, branchImpl.permissions);
        System.assertEquals(null, branchImpl.weatherScore);
        System.assertEquals(null, branchImpl.pullRequest);
        System.assertEquals(null, branchImpl.links);
        System.assertEquals(null, branchImpl.latestRun);
    }
}
