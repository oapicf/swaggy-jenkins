@isTest
private class SwagIojenkinsblueoceanrestimplpipeliTest {
    @isTest
    private static void equalsSameInstance() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl1 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl2 = iojenkinsblueoceanrestimplpipelineBranchImpl1;
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl3 = new SwagIojenkinsblueoceanrestimplpipeli();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl4 = iojenkinsblueoceanrestimplpipelineBranchImpl3;

        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl1.equals(iojenkinsblueoceanrestimplpipelineBranchImpl2));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl2.equals(iojenkinsblueoceanrestimplpipelineBranchImpl1));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl1.equals(iojenkinsblueoceanrestimplpipelineBranchImpl1));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl3.equals(iojenkinsblueoceanrestimplpipelineBranchImpl4));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl4.equals(iojenkinsblueoceanrestimplpipelineBranchImpl3));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl3.equals(iojenkinsblueoceanrestimplpipelineBranchImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl1 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl2 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl3 = new SwagIojenkinsblueoceanrestimplpipeli();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl4 = new SwagIojenkinsblueoceanrestimplpipeli();

        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl1.equals(iojenkinsblueoceanrestimplpipelineBranchImpl2));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl2.equals(iojenkinsblueoceanrestimplpipelineBranchImpl1));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl3.equals(iojenkinsblueoceanrestimplpipelineBranchImpl4));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl4.equals(iojenkinsblueoceanrestimplpipelineBranchImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl1 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl2 = new SwagIojenkinsblueoceanrestimplpipeli();

        System.assertEquals(false, iojenkinsblueoceanrestimplpipelineBranchImpl1.equals(iojenkinsblueoceanrestimplpipelineBranchImpl2));
        System.assertEquals(false, iojenkinsblueoceanrestimplpipelineBranchImpl2.equals(iojenkinsblueoceanrestimplpipelineBranchImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl1 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl2 = new SwagIojenkinsblueoceanrestimplpipeli();

        System.assertEquals(false, iojenkinsblueoceanrestimplpipelineBranchImpl1.equals('foo'));
        System.assertEquals(false, iojenkinsblueoceanrestimplpipelineBranchImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl1 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl2 = new SwagIojenkinsblueoceanrestimplpipeli();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl3;

        System.assertEquals(false, iojenkinsblueoceanrestimplpipelineBranchImpl1.equals(iojenkinsblueoceanrestimplpipelineBranchImpl3));
        System.assertEquals(false, iojenkinsblueoceanrestimplpipelineBranchImpl2.equals(iojenkinsblueoceanrestimplpipelineBranchImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl1 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl2 = new SwagIojenkinsblueoceanrestimplpipeli();

        System.assertEquals(iojenkinsblueoceanrestimplpipelineBranchImpl1.hashCode(), iojenkinsblueoceanrestimplpipelineBranchImpl1.hashCode());
        System.assertEquals(iojenkinsblueoceanrestimplpipelineBranchImpl2.hashCode(), iojenkinsblueoceanrestimplpipelineBranchImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl1 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl2 = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl3 = new SwagIojenkinsblueoceanrestimplpipeli();
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl4 = new SwagIojenkinsblueoceanrestimplpipeli();

        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl1.equals(iojenkinsblueoceanrestimplpipelineBranchImpl2));
        System.assert(iojenkinsblueoceanrestimplpipelineBranchImpl3.equals(iojenkinsblueoceanrestimplpipelineBranchImpl4));
        System.assertEquals(iojenkinsblueoceanrestimplpipelineBranchImpl1.hashCode(), iojenkinsblueoceanrestimplpipelineBranchImpl2.hashCode());
        System.assertEquals(iojenkinsblueoceanrestimplpipelineBranchImpl3.hashCode(), iojenkinsblueoceanrestimplpipelineBranchImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl = new SwagIojenkinsblueoceanrestimplpipeli();
        Map<String, String> propertyMappings = iojenkinsblueoceanrestimplpipelineBranchImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagIojenkinsblueoceanrestimplpipeli iojenkinsblueoceanrestimplpipelineBranchImpl = new SwagIojenkinsblueoceanrestimplpipeli();
        System.assertEquals(new List<SwagHudsonmodelStringParameterDefini>(), iojenkinsblueoceanrestimplpipelineBranchImpl.parameters);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.propertyClass);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.displayName);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.estimatedDurationInMillis);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.fullDisplayName);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.fullName);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.name);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.organization);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.permissions);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.weatherScore);
        System.assertEquals(null, iojenkinsblueoceanrestimplpipelineBranchImpl.pullRequest);
    }
}
