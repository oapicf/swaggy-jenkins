@isTest
private class OASPipelineRunTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRun pipelineRun1 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun2 = pipelineRun1;
        OASPipelineRun pipelineRun3 = new OASPipelineRun();
        OASPipelineRun pipelineRun4 = pipelineRun3;

        System.assert(pipelineRun1.equals(pipelineRun2));
        System.assert(pipelineRun2.equals(pipelineRun1));
        System.assert(pipelineRun1.equals(pipelineRun1));
        System.assert(pipelineRun3.equals(pipelineRun4));
        System.assert(pipelineRun4.equals(pipelineRun3));
        System.assert(pipelineRun3.equals(pipelineRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRun pipelineRun1 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun2 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun3 = new OASPipelineRun();
        OASPipelineRun pipelineRun4 = new OASPipelineRun();

        System.assert(pipelineRun1.equals(pipelineRun2));
        System.assert(pipelineRun2.equals(pipelineRun1));
        System.assert(pipelineRun3.equals(pipelineRun4));
        System.assert(pipelineRun4.equals(pipelineRun3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRun pipelineRun1 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun2 = new OASPipelineRun();

        System.assertEquals(false, pipelineRun1.equals('foo'));
        System.assertEquals(false, pipelineRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRun pipelineRun1 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun2 = new OASPipelineRun();
        OASPipelineRun pipelineRun3;

        System.assertEquals(false, pipelineRun1.equals(pipelineRun3));
        System.assertEquals(false, pipelineRun2.equals(pipelineRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRun pipelineRun1 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun2 = new OASPipelineRun();

        System.assertEquals(pipelineRun1.hashCode(), pipelineRun1.hashCode());
        System.assertEquals(pipelineRun2.hashCode(), pipelineRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRun pipelineRun1 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun2 = OASPipelineRun.getExample();
        OASPipelineRun pipelineRun3 = new OASPipelineRun();
        OASPipelineRun pipelineRun4 = new OASPipelineRun();

        System.assert(pipelineRun1.equals(pipelineRun2));
        System.assert(pipelineRun3.equals(pipelineRun4));
        System.assertEquals(pipelineRun1.hashCode(), pipelineRun2.hashCode());
        System.assertEquals(pipelineRun3.hashCode(), pipelineRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineRun pipelineRun = new OASPipelineRun();
        Map<String, String> x-property-mappings = pipelineRun.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPipelineRun pipelineRun = new OASPipelineRun();
        System.assertEquals(new List<OASPipelineRunartifacts>(), pipelineRun.artifacts);
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
        System.assertEquals(null, pipelineRun.type);
        System.assertEquals(null, pipelineRun.commitId);
    }
}
