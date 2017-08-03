@isTest
private class SwagPipelineRunTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRun pipelineRun1 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun2 = pipelineRun1;
        SwagPipelineRun pipelineRun3 = new SwagPipelineRun();
        SwagPipelineRun pipelineRun4 = pipelineRun3;

        System.assert(pipelineRun1.equals(pipelineRun2));
        System.assert(pipelineRun2.equals(pipelineRun1));
        System.assert(pipelineRun1.equals(pipelineRun1));
        System.assert(pipelineRun3.equals(pipelineRun4));
        System.assert(pipelineRun4.equals(pipelineRun3));
        System.assert(pipelineRun3.equals(pipelineRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRun pipelineRun1 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun2 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun3 = new SwagPipelineRun();
        SwagPipelineRun pipelineRun4 = new SwagPipelineRun();

        System.assert(pipelineRun1.equals(pipelineRun2));
        System.assert(pipelineRun2.equals(pipelineRun1));
        System.assert(pipelineRun3.equals(pipelineRun4));
        System.assert(pipelineRun4.equals(pipelineRun3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRun pipelineRun1 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun2 = new SwagPipelineRun();

        System.assertEquals(false, pipelineRun1.equals(pipelineRun2));
        System.assertEquals(false, pipelineRun2.equals(pipelineRun1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRun pipelineRun1 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun2 = new SwagPipelineRun();

        System.assertEquals(false, pipelineRun1.equals('foo'));
        System.assertEquals(false, pipelineRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRun pipelineRun1 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun2 = new SwagPipelineRun();
        SwagPipelineRun pipelineRun3;

        System.assertEquals(false, pipelineRun1.equals(pipelineRun3));
        System.assertEquals(false, pipelineRun2.equals(pipelineRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRun pipelineRun1 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun2 = new SwagPipelineRun();

        System.assertEquals(pipelineRun1.hashCode(), pipelineRun1.hashCode());
        System.assertEquals(pipelineRun2.hashCode(), pipelineRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRun pipelineRun1 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun2 = SwagPipelineRun.getExample();
        SwagPipelineRun pipelineRun3 = new SwagPipelineRun();
        SwagPipelineRun pipelineRun4 = new SwagPipelineRun();

        System.assert(pipelineRun1.equals(pipelineRun2));
        System.assert(pipelineRun3.equals(pipelineRun4));
        System.assertEquals(pipelineRun1.hashCode(), pipelineRun2.hashCode());
        System.assertEquals(pipelineRun3.hashCode(), pipelineRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineRun pipelineRun = new SwagPipelineRun();
        Map<String, String> propertyMappings = pipelineRun.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('r_type', propertyMappings.get('type'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPipelineRun pipelineRun = new SwagPipelineRun();
        System.assertEquals(new List<SwagPipelineRunartifacts>(), pipelineRun.artifacts);
        System.assertEquals(null, pipelineRun.propertyClass);
        System.assertEquals(null, pipelineRun.durationInMillis);
        System.assertEquals(null, pipelineRun.estimatedDurationInMillis);
        System.assertEquals(null, pipelineRun.enQueueTime);
        System.assertEquals(null, pipelineRun.endTime);
        System.assertEquals(null, pipelineRun.id);
        System.assertEquals(null, pipelineRun.organization);
        System.assertEquals(null, pipelineRun.pipeline);
        System.assertEquals(null, pipelineRun.result);
        System.assertEquals(null, pipelineRun.runSummary);
        System.assertEquals(null, pipelineRun.startTime);
        System.assertEquals(null, pipelineRun.state);
        System.assertEquals(null, pipelineRun.r_type);
        System.assertEquals(null, pipelineRun.commitId);
    }
}
