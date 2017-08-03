@isTest
private class SwagMultibranchPipelineTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMultibranchPipeline multibranchPipeline1 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline2 = multibranchPipeline1;
        SwagMultibranchPipeline multibranchPipeline3 = new SwagMultibranchPipeline();
        SwagMultibranchPipeline multibranchPipeline4 = multibranchPipeline3;

        System.assert(multibranchPipeline1.equals(multibranchPipeline2));
        System.assert(multibranchPipeline2.equals(multibranchPipeline1));
        System.assert(multibranchPipeline1.equals(multibranchPipeline1));
        System.assert(multibranchPipeline3.equals(multibranchPipeline4));
        System.assert(multibranchPipeline4.equals(multibranchPipeline3));
        System.assert(multibranchPipeline3.equals(multibranchPipeline3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMultibranchPipeline multibranchPipeline1 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline2 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline3 = new SwagMultibranchPipeline();
        SwagMultibranchPipeline multibranchPipeline4 = new SwagMultibranchPipeline();

        System.assert(multibranchPipeline1.equals(multibranchPipeline2));
        System.assert(multibranchPipeline2.equals(multibranchPipeline1));
        System.assert(multibranchPipeline3.equals(multibranchPipeline4));
        System.assert(multibranchPipeline4.equals(multibranchPipeline3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMultibranchPipeline multibranchPipeline1 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline2 = new SwagMultibranchPipeline();

        System.assertEquals(false, multibranchPipeline1.equals(multibranchPipeline2));
        System.assertEquals(false, multibranchPipeline2.equals(multibranchPipeline1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMultibranchPipeline multibranchPipeline1 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline2 = new SwagMultibranchPipeline();

        System.assertEquals(false, multibranchPipeline1.equals('foo'));
        System.assertEquals(false, multibranchPipeline2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMultibranchPipeline multibranchPipeline1 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline2 = new SwagMultibranchPipeline();
        SwagMultibranchPipeline multibranchPipeline3;

        System.assertEquals(false, multibranchPipeline1.equals(multibranchPipeline3));
        System.assertEquals(false, multibranchPipeline2.equals(multibranchPipeline3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMultibranchPipeline multibranchPipeline1 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline2 = new SwagMultibranchPipeline();

        System.assertEquals(multibranchPipeline1.hashCode(), multibranchPipeline1.hashCode());
        System.assertEquals(multibranchPipeline2.hashCode(), multibranchPipeline2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMultibranchPipeline multibranchPipeline1 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline2 = SwagMultibranchPipeline.getExample();
        SwagMultibranchPipeline multibranchPipeline3 = new SwagMultibranchPipeline();
        SwagMultibranchPipeline multibranchPipeline4 = new SwagMultibranchPipeline();

        System.assert(multibranchPipeline1.equals(multibranchPipeline2));
        System.assert(multibranchPipeline3.equals(multibranchPipeline4));
        System.assertEquals(multibranchPipeline1.hashCode(), multibranchPipeline2.hashCode());
        System.assertEquals(multibranchPipeline3.hashCode(), multibranchPipeline4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagMultibranchPipeline multibranchPipeline = new SwagMultibranchPipeline();
        Map<String, String> propertyMappings = multibranchPipeline.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagMultibranchPipeline multibranchPipeline = new SwagMultibranchPipeline();
        System.assertEquals(new List<String>(), multibranchPipeline.branchNames);
        System.assertEquals(null, multibranchPipeline.displayName);
        System.assertEquals(null, multibranchPipeline.estimatedDurationInMillis);
        System.assertEquals(null, multibranchPipeline.latestRun);
        System.assertEquals(null, multibranchPipeline.name);
        System.assertEquals(null, multibranchPipeline.organization);
        System.assertEquals(null, multibranchPipeline.weatherScore);
        System.assertEquals(null, multibranchPipeline.numberOfFailingBranches);
        System.assertEquals(null, multibranchPipeline.numberOfFailingPullRequests);
        System.assertEquals(null, multibranchPipeline.numberOfSuccessfulBranches);
        System.assertEquals(null, multibranchPipeline.numberOfSuccessfulPullRequests);
        System.assertEquals(null, multibranchPipeline.totalNumberOfBranches);
        System.assertEquals(null, multibranchPipeline.totalNumberOfPullRequests);
        System.assertEquals(null, multibranchPipeline.propertyClass);
    }
}
