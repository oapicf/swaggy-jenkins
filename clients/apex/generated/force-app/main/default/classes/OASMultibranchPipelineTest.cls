@isTest
private class OASMultibranchPipelineTest {
    @isTest
    private static void equalsSameInstance() {
        OASMultibranchPipeline multibranchPipeline1 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline2 = multibranchPipeline1;
        OASMultibranchPipeline multibranchPipeline3 = new OASMultibranchPipeline();
        OASMultibranchPipeline multibranchPipeline4 = multibranchPipeline3;

        System.assert(multibranchPipeline1.equals(multibranchPipeline2));
        System.assert(multibranchPipeline2.equals(multibranchPipeline1));
        System.assert(multibranchPipeline1.equals(multibranchPipeline1));
        System.assert(multibranchPipeline3.equals(multibranchPipeline4));
        System.assert(multibranchPipeline4.equals(multibranchPipeline3));
        System.assert(multibranchPipeline3.equals(multibranchPipeline3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMultibranchPipeline multibranchPipeline1 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline2 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline3 = new OASMultibranchPipeline();
        OASMultibranchPipeline multibranchPipeline4 = new OASMultibranchPipeline();

        System.assert(multibranchPipeline1.equals(multibranchPipeline2));
        System.assert(multibranchPipeline2.equals(multibranchPipeline1));
        System.assert(multibranchPipeline3.equals(multibranchPipeline4));
        System.assert(multibranchPipeline4.equals(multibranchPipeline3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMultibranchPipeline multibranchPipeline1 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline2 = new OASMultibranchPipeline();

        System.assertEquals(false, multibranchPipeline1.equals('foo'));
        System.assertEquals(false, multibranchPipeline2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMultibranchPipeline multibranchPipeline1 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline2 = new OASMultibranchPipeline();
        OASMultibranchPipeline multibranchPipeline3;

        System.assertEquals(false, multibranchPipeline1.equals(multibranchPipeline3));
        System.assertEquals(false, multibranchPipeline2.equals(multibranchPipeline3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMultibranchPipeline multibranchPipeline1 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline2 = new OASMultibranchPipeline();

        System.assertEquals(multibranchPipeline1.hashCode(), multibranchPipeline1.hashCode());
        System.assertEquals(multibranchPipeline2.hashCode(), multibranchPipeline2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMultibranchPipeline multibranchPipeline1 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline2 = OASMultibranchPipeline.getExample();
        OASMultibranchPipeline multibranchPipeline3 = new OASMultibranchPipeline();
        OASMultibranchPipeline multibranchPipeline4 = new OASMultibranchPipeline();

        System.assert(multibranchPipeline1.equals(multibranchPipeline2));
        System.assert(multibranchPipeline3.equals(multibranchPipeline4));
        System.assertEquals(multibranchPipeline1.hashCode(), multibranchPipeline2.hashCode());
        System.assertEquals(multibranchPipeline3.hashCode(), multibranchPipeline4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMultibranchPipeline multibranchPipeline = new OASMultibranchPipeline();
        Map<String, String> propertyMappings = multibranchPipeline.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASMultibranchPipeline multibranchPipeline = new OASMultibranchPipeline();
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
