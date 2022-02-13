@isTest
private class OASPipelinelatestRunTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelinelatestRun pipelinelatestRun1 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun2 = pipelinelatestRun1;
        OASPipelinelatestRun pipelinelatestRun3 = new OASPipelinelatestRun();
        OASPipelinelatestRun pipelinelatestRun4 = pipelinelatestRun3;

        System.assert(pipelinelatestRun1.equals(pipelinelatestRun2));
        System.assert(pipelinelatestRun2.equals(pipelinelatestRun1));
        System.assert(pipelinelatestRun1.equals(pipelinelatestRun1));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun4));
        System.assert(pipelinelatestRun4.equals(pipelinelatestRun3));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelinelatestRun pipelinelatestRun1 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun2 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun3 = new OASPipelinelatestRun();
        OASPipelinelatestRun pipelinelatestRun4 = new OASPipelinelatestRun();

        System.assert(pipelinelatestRun1.equals(pipelinelatestRun2));
        System.assert(pipelinelatestRun2.equals(pipelinelatestRun1));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun4));
        System.assert(pipelinelatestRun4.equals(pipelinelatestRun3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelinelatestRun pipelinelatestRun1 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun2 = new OASPipelinelatestRun();

        System.assertEquals(false, pipelinelatestRun1.equals('foo'));
        System.assertEquals(false, pipelinelatestRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelinelatestRun pipelinelatestRun1 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun2 = new OASPipelinelatestRun();
        OASPipelinelatestRun pipelinelatestRun3;

        System.assertEquals(false, pipelinelatestRun1.equals(pipelinelatestRun3));
        System.assertEquals(false, pipelinelatestRun2.equals(pipelinelatestRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelinelatestRun pipelinelatestRun1 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun2 = new OASPipelinelatestRun();

        System.assertEquals(pipelinelatestRun1.hashCode(), pipelinelatestRun1.hashCode());
        System.assertEquals(pipelinelatestRun2.hashCode(), pipelinelatestRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelinelatestRun pipelinelatestRun1 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun2 = OASPipelinelatestRun.getExample();
        OASPipelinelatestRun pipelinelatestRun3 = new OASPipelinelatestRun();
        OASPipelinelatestRun pipelinelatestRun4 = new OASPipelinelatestRun();

        System.assert(pipelinelatestRun1.equals(pipelinelatestRun2));
        System.assert(pipelinelatestRun3.equals(pipelinelatestRun4));
        System.assertEquals(pipelinelatestRun1.hashCode(), pipelinelatestRun2.hashCode());
        System.assertEquals(pipelinelatestRun3.hashCode(), pipelinelatestRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelinelatestRun pipelinelatestRun = new OASPipelinelatestRun();
        Map<String, String> x-property-mappings = pipelinelatestRun.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPipelinelatestRun pipelinelatestRun = new OASPipelinelatestRun();
        System.assertEquals(new List<OASPipelinelatestRunartifacts>(), pipelinelatestRun.artifacts);
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
        System.assertEquals(null, pipelinelatestRun.type);
        System.assertEquals(null, pipelinelatestRun.commitId);
        System.assertEquals(null, pipelinelatestRun.propertyClass);
    }
}
