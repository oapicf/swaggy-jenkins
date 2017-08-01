@isTest
private class SwagGetMultibranchPipelineTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetMultibranchPipeline getMultibranchPipeline1 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline2 = getMultibranchPipeline1;
        SwagGetMultibranchPipeline getMultibranchPipeline3 = new SwagGetMultibranchPipeline();
        SwagGetMultibranchPipeline getMultibranchPipeline4 = getMultibranchPipeline3;

        System.assert(getMultibranchPipeline1.equals(getMultibranchPipeline2));
        System.assert(getMultibranchPipeline2.equals(getMultibranchPipeline1));
        System.assert(getMultibranchPipeline1.equals(getMultibranchPipeline1));
        System.assert(getMultibranchPipeline3.equals(getMultibranchPipeline4));
        System.assert(getMultibranchPipeline4.equals(getMultibranchPipeline3));
        System.assert(getMultibranchPipeline3.equals(getMultibranchPipeline3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetMultibranchPipeline getMultibranchPipeline1 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline2 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline3 = new SwagGetMultibranchPipeline();
        SwagGetMultibranchPipeline getMultibranchPipeline4 = new SwagGetMultibranchPipeline();

        System.assert(getMultibranchPipeline1.equals(getMultibranchPipeline2));
        System.assert(getMultibranchPipeline2.equals(getMultibranchPipeline1));
        System.assert(getMultibranchPipeline3.equals(getMultibranchPipeline4));
        System.assert(getMultibranchPipeline4.equals(getMultibranchPipeline3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetMultibranchPipeline getMultibranchPipeline1 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline2 = new SwagGetMultibranchPipeline();

        System.assertEquals(false, getMultibranchPipeline1.equals(getMultibranchPipeline2));
        System.assertEquals(false, getMultibranchPipeline2.equals(getMultibranchPipeline1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetMultibranchPipeline getMultibranchPipeline1 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline2 = new SwagGetMultibranchPipeline();

        System.assertEquals(false, getMultibranchPipeline1.equals('foo'));
        System.assertEquals(false, getMultibranchPipeline2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetMultibranchPipeline getMultibranchPipeline1 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline2 = new SwagGetMultibranchPipeline();
        SwagGetMultibranchPipeline getMultibranchPipeline3;

        System.assertEquals(false, getMultibranchPipeline1.equals(getMultibranchPipeline3));
        System.assertEquals(false, getMultibranchPipeline2.equals(getMultibranchPipeline3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetMultibranchPipeline getMultibranchPipeline1 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline2 = new SwagGetMultibranchPipeline();

        System.assertEquals(getMultibranchPipeline1.hashCode(), getMultibranchPipeline1.hashCode());
        System.assertEquals(getMultibranchPipeline2.hashCode(), getMultibranchPipeline2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetMultibranchPipeline getMultibranchPipeline1 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline2 = SwagGetMultibranchPipeline.getExample();
        SwagGetMultibranchPipeline getMultibranchPipeline3 = new SwagGetMultibranchPipeline();
        SwagGetMultibranchPipeline getMultibranchPipeline4 = new SwagGetMultibranchPipeline();

        System.assert(getMultibranchPipeline1.equals(getMultibranchPipeline2));
        System.assert(getMultibranchPipeline3.equals(getMultibranchPipeline4));
        System.assertEquals(getMultibranchPipeline1.hashCode(), getMultibranchPipeline2.hashCode());
        System.assertEquals(getMultibranchPipeline3.hashCode(), getMultibranchPipeline4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGetMultibranchPipeline getMultibranchPipeline = new SwagGetMultibranchPipeline();
        Map<String, String> propertyMappings = getMultibranchPipeline.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagGetMultibranchPipeline getMultibranchPipeline = new SwagGetMultibranchPipeline();
        System.assertEquals(new List<String>(), getMultibranchPipeline.branchNames);
        System.assertEquals(null, getMultibranchPipeline.displayName);
        System.assertEquals(null, getMultibranchPipeline.estimatedDurationInMillis);
        System.assertEquals(null, getMultibranchPipeline.latestRun);
        System.assertEquals(null, getMultibranchPipeline.name);
        System.assertEquals(null, getMultibranchPipeline.organization);
        System.assertEquals(null, getMultibranchPipeline.weatherScore);
        System.assertEquals(null, getMultibranchPipeline.numberOfFailingBranches);
        System.assertEquals(null, getMultibranchPipeline.numberOfFailingPullRequests);
        System.assertEquals(null, getMultibranchPipeline.numberOfSuccessfulBranches);
        System.assertEquals(null, getMultibranchPipeline.numberOfSuccessfulPullRequests);
        System.assertEquals(null, getMultibranchPipeline.totalNumberOfBranches);
        System.assertEquals(null, getMultibranchPipeline.totalNumberOfPullRequests);
        System.assertEquals(null, getMultibranchPipeline.propertyClass);
    }
}
