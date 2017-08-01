@isTest
private class SwagSwaggyjenkinsPipelineLatestRunTest {
    @isTest
    private static void equalsSameInstance() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun1 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun2 = swaggyjenkinsPipelineLatestRun1;
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun3 = new SwagSwaggyjenkinsPipelineLatestRun();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun4 = swaggyjenkinsPipelineLatestRun3;

        System.assert(swaggyjenkinsPipelineLatestRun1.equals(swaggyjenkinsPipelineLatestRun2));
        System.assert(swaggyjenkinsPipelineLatestRun2.equals(swaggyjenkinsPipelineLatestRun1));
        System.assert(swaggyjenkinsPipelineLatestRun1.equals(swaggyjenkinsPipelineLatestRun1));
        System.assert(swaggyjenkinsPipelineLatestRun3.equals(swaggyjenkinsPipelineLatestRun4));
        System.assert(swaggyjenkinsPipelineLatestRun4.equals(swaggyjenkinsPipelineLatestRun3));
        System.assert(swaggyjenkinsPipelineLatestRun3.equals(swaggyjenkinsPipelineLatestRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun1 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun2 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun3 = new SwagSwaggyjenkinsPipelineLatestRun();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun4 = new SwagSwaggyjenkinsPipelineLatestRun();

        System.assert(swaggyjenkinsPipelineLatestRun1.equals(swaggyjenkinsPipelineLatestRun2));
        System.assert(swaggyjenkinsPipelineLatestRun2.equals(swaggyjenkinsPipelineLatestRun1));
        System.assert(swaggyjenkinsPipelineLatestRun3.equals(swaggyjenkinsPipelineLatestRun4));
        System.assert(swaggyjenkinsPipelineLatestRun4.equals(swaggyjenkinsPipelineLatestRun3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun1 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun2 = new SwagSwaggyjenkinsPipelineLatestRun();

        System.assertEquals(false, swaggyjenkinsPipelineLatestRun1.equals(swaggyjenkinsPipelineLatestRun2));
        System.assertEquals(false, swaggyjenkinsPipelineLatestRun2.equals(swaggyjenkinsPipelineLatestRun1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun1 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun2 = new SwagSwaggyjenkinsPipelineLatestRun();

        System.assertEquals(false, swaggyjenkinsPipelineLatestRun1.equals('foo'));
        System.assertEquals(false, swaggyjenkinsPipelineLatestRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun1 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun2 = new SwagSwaggyjenkinsPipelineLatestRun();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun3;

        System.assertEquals(false, swaggyjenkinsPipelineLatestRun1.equals(swaggyjenkinsPipelineLatestRun3));
        System.assertEquals(false, swaggyjenkinsPipelineLatestRun2.equals(swaggyjenkinsPipelineLatestRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun1 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun2 = new SwagSwaggyjenkinsPipelineLatestRun();

        System.assertEquals(swaggyjenkinsPipelineLatestRun1.hashCode(), swaggyjenkinsPipelineLatestRun1.hashCode());
        System.assertEquals(swaggyjenkinsPipelineLatestRun2.hashCode(), swaggyjenkinsPipelineLatestRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun1 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun2 = SwagSwaggyjenkinsPipelineLatestRun.getExample();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun3 = new SwagSwaggyjenkinsPipelineLatestRun();
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun4 = new SwagSwaggyjenkinsPipelineLatestRun();

        System.assert(swaggyjenkinsPipelineLatestRun1.equals(swaggyjenkinsPipelineLatestRun2));
        System.assert(swaggyjenkinsPipelineLatestRun3.equals(swaggyjenkinsPipelineLatestRun4));
        System.assertEquals(swaggyjenkinsPipelineLatestRun1.hashCode(), swaggyjenkinsPipelineLatestRun2.hashCode());
        System.assertEquals(swaggyjenkinsPipelineLatestRun3.hashCode(), swaggyjenkinsPipelineLatestRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun = new SwagSwaggyjenkinsPipelineLatestRun();
        Map<String, String> propertyMappings = swaggyjenkinsPipelineLatestRun.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagSwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun = new SwagSwaggyjenkinsPipelineLatestRun();
        System.assertEquals(new List<SwagSwaggyjenkinsPipelineLatestRunar>(), swaggyjenkinsPipelineLatestRun.artifacts);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.durationInMillis);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.estimatedDurationInMillis);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.enQueueTime);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.endTime);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.id);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.organization);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.pipeline);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.result);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.runSummary);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.startTime);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.state);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.r_type);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.commitId);
        System.assertEquals(null, swaggyjenkinsPipelineLatestRun.propertyClass);
    }
}
