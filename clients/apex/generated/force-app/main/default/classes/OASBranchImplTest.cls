@isTest
private class OASBranchImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASBranchImpl branchImpl1 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl2 = branchImpl1;
        OASBranchImpl branchImpl3 = new OASBranchImpl();
        OASBranchImpl branchImpl4 = branchImpl3;

        System.assert(branchImpl1.equals(branchImpl2));
        System.assert(branchImpl2.equals(branchImpl1));
        System.assert(branchImpl1.equals(branchImpl1));
        System.assert(branchImpl3.equals(branchImpl4));
        System.assert(branchImpl4.equals(branchImpl3));
        System.assert(branchImpl3.equals(branchImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBranchImpl branchImpl1 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl2 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl3 = new OASBranchImpl();
        OASBranchImpl branchImpl4 = new OASBranchImpl();

        System.assert(branchImpl1.equals(branchImpl2));
        System.assert(branchImpl2.equals(branchImpl1));
        System.assert(branchImpl3.equals(branchImpl4));
        System.assert(branchImpl4.equals(branchImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBranchImpl branchImpl1 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl2 = new OASBranchImpl();

        System.assertEquals(false, branchImpl1.equals('foo'));
        System.assertEquals(false, branchImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBranchImpl branchImpl1 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl2 = new OASBranchImpl();
        OASBranchImpl branchImpl3;

        System.assertEquals(false, branchImpl1.equals(branchImpl3));
        System.assertEquals(false, branchImpl2.equals(branchImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBranchImpl branchImpl1 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl2 = new OASBranchImpl();

        System.assertEquals(branchImpl1.hashCode(), branchImpl1.hashCode());
        System.assertEquals(branchImpl2.hashCode(), branchImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBranchImpl branchImpl1 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl2 = OASBranchImpl.getExample();
        OASBranchImpl branchImpl3 = new OASBranchImpl();
        OASBranchImpl branchImpl4 = new OASBranchImpl();

        System.assert(branchImpl1.equals(branchImpl2));
        System.assert(branchImpl3.equals(branchImpl4));
        System.assertEquals(branchImpl1.hashCode(), branchImpl2.hashCode());
        System.assertEquals(branchImpl3.hashCode(), branchImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBranchImpl branchImpl = new OASBranchImpl();
        Map<String, String> propertyMappings = branchImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBranchImpl branchImpl = new OASBranchImpl();
        System.assertEquals(new List<OASStringParameterDefinition>(), branchImpl.parameters);
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
