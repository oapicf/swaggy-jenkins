@isTest
private class SwagPipelinelatestRunTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelinelatestRun pipelinelatestRun1 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun2 = pipelinelatestRun1;
        SwagPipelinelatestRun pipelinelatestRun3 = new SwagPipelinelatestRun();
        SwagPipelinelatestRun pipelinelatestRun4 = pipelinelatestRun3;

        System.assert(pipelinelatestRun1.equals(pipelinelatestRun2));
        System.assert(pipelinelatestRun2.equals(pipelinelatestRun1));
        System.assert(pipelinelatestRun1.equals(pipelinelatestRun1));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun4));
        System.assert(pipelinelatestRun4.equals(pipelinelatestRun3));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelinelatestRun pipelinelatestRun1 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun2 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun3 = new SwagPipelinelatestRun();
        SwagPipelinelatestRun pipelinelatestRun4 = new SwagPipelinelatestRun();

        System.assert(pipelinelatestRun1.equals(pipelinelatestRun2));
        System.assert(pipelinelatestRun2.equals(pipelinelatestRun1));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun4));
        System.assert(pipelinelatestRun4.equals(pipelinelatestRun3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelinelatestRun pipelinelatestRun1 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun2 = new SwagPipelinelatestRun();

        System.assertEquals(false, pipelinelatestRun1.equals(pipelinelatestRun2));
        System.assertEquals(false, pipelinelatestRun2.equals(pipelinelatestRun1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelinelatestRun pipelinelatestRun1 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun2 = new SwagPipelinelatestRun();

        System.assertEquals(false, pipelinelatestRun1.equals('foo'));
        System.assertEquals(false, pipelinelatestRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelinelatestRun pipelinelatestRun1 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun2 = new SwagPipelinelatestRun();
        SwagPipelinelatestRun pipelinelatestRun3;

        System.assertEquals(false, pipelinelatestRun1.equals(pipelinelatestRun3));
        System.assertEquals(false, pipelinelatestRun2.equals(pipelinelatestRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelinelatestRun pipelinelatestRun1 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun2 = new SwagPipelinelatestRun();

        System.assertEquals(pipelinelatestRun1.hashCode(), pipelinelatestRun1.hashCode());
        System.assertEquals(pipelinelatestRun2.hashCode(), pipelinelatestRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelinelatestRun pipelinelatestRun1 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun2 = SwagPipelinelatestRun.getExample();
        SwagPipelinelatestRun pipelinelatestRun3 = new SwagPipelinelatestRun();
        SwagPipelinelatestRun pipelinelatestRun4 = new SwagPipelinelatestRun();

        System.assert(pipelinelatestRun1.equals(pipelinelatestRun2));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun4));
        System.assertEquals(pipelinelatestRun1.hashCode(), pipelinelatestRun2.hashCode());
        System.assertEquals(pipelinelatestRun3.hashCode(), pipelinelatestRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelinelatestRun pipelinelatestRun = new SwagPipelinelatestRun();
        Map<String, String> propertyMappings = pipelinelatestRun.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPipelinelatestRun pipelinelatestRun = new SwagPipelinelatestRun();
        System.assertEquals(new List<SwagPipelinelatestRunartifacts>(), pipelinelatestRun.artifacts);
        System.assertEquals(null, pipelinelatestRun.durationInMillis);
        System.assertEquals(null, pipelinelatestRun.estimatedDurationInMillis);
        System.assertEquals(null, pipelinelatestRun.enQueueTime);
        System.assertEquals(null, pipelinelatestRun.endTime);
        System.assertEquals(null, pipelinelatestRun.id);
        System.assertEquals(null, pipelinelatestRun.organization);
        System.assertEquals(null, pipelinelatestRun.pipeline);
        System.assertEquals(null, pipelinelatestRun.result);
        System.assertEquals(null, pipelinelatestRun.runSummary);
        System.assertEquals(null, pipelinelatestRun.startTime);
        System.assertEquals(null, pipelinelatestRun.state);
        System.assertEquals(null, pipelinelatestRun.r_type);
        System.assertEquals(null, pipelinelatestRun.commitId);
        System.assertEquals(null, pipelinelatestRun.propertyClass);
    }
}
