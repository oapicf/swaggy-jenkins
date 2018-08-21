@isTest
private class OASPipelineActivityTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineActivity pipelineActivity1 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity2 = pipelineActivity1;
        OASPipelineActivity pipelineActivity3 = new OASPipelineActivity();
        OASPipelineActivity pipelineActivity4 = pipelineActivity3;

        System.assert(pipelineActivity1.equals(pipelineActivity2));
        System.assert(pipelineActivity2.equals(pipelineActivity1));
        System.assert(pipelineActivity1.equals(pipelineActivity1));
        System.assert(pipelineActivity3.equals(pipelineActivity4));
        System.assert(pipelineActivity4.equals(pipelineActivity3));
        System.assert(pipelineActivity3.equals(pipelineActivity3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineActivity pipelineActivity1 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity2 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity3 = new OASPipelineActivity();
        OASPipelineActivity pipelineActivity4 = new OASPipelineActivity();

        System.assert(pipelineActivity1.equals(pipelineActivity2));
        System.assert(pipelineActivity2.equals(pipelineActivity1));
        System.assert(pipelineActivity3.equals(pipelineActivity4));
        System.assert(pipelineActivity4.equals(pipelineActivity3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineActivity pipelineActivity1 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity2 = new OASPipelineActivity();

        System.assertEquals(false, pipelineActivity1.equals('foo'));
        System.assertEquals(false, pipelineActivity2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineActivity pipelineActivity1 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity2 = new OASPipelineActivity();
        OASPipelineActivity pipelineActivity3;

        System.assertEquals(false, pipelineActivity1.equals(pipelineActivity3));
        System.assertEquals(false, pipelineActivity2.equals(pipelineActivity3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineActivity pipelineActivity1 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity2 = new OASPipelineActivity();

        System.assertEquals(pipelineActivity1.hashCode(), pipelineActivity1.hashCode());
        System.assertEquals(pipelineActivity2.hashCode(), pipelineActivity2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineActivity pipelineActivity1 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity2 = OASPipelineActivity.getExample();
        OASPipelineActivity pipelineActivity3 = new OASPipelineActivity();
        OASPipelineActivity pipelineActivity4 = new OASPipelineActivity();

        System.assert(pipelineActivity1.equals(pipelineActivity2));
        System.assert(pipelineActivity3.equals(pipelineActivity4));
        System.assertEquals(pipelineActivity1.hashCode(), pipelineActivity2.hashCode());
        System.assertEquals(pipelineActivity3.hashCode(), pipelineActivity4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineActivity pipelineActivity = new OASPipelineActivity();
        Map<String, String> propertyMappings = pipelineActivity.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('r_type', propertyMappings.get('type'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPipelineActivity pipelineActivity = new OASPipelineActivity();
        System.assertEquals(new List<OASPipelineActivityartifacts>(), pipelineActivity.artifacts);
        System.assertEquals(null, pipelineActivity.propertyClass);
        System.assertEquals(null, pipelineActivity.durationInMillis);
        System.assertEquals(null, pipelineActivity.estimatedDurationInMillis);
        System.assertEquals(null, pipelineActivity.enQueueTime);
        System.assertEquals(null, pipelineActivity.endTime);
        System.assertEquals(null, pipelineActivity.id);
        System.assertEquals(null, pipelineActivity.organization);
        System.assertEquals(null, pipelineActivity.pipeline);
        System.assertEquals(null, pipelineActivity.result);
        System.assertEquals(null, pipelineActivity.runSummary);
        System.assertEquals(null, pipelineActivity.startTime);
        System.assertEquals(null, pipelineActivity.state);
        System.assertEquals(null, pipelineActivity.r_type);
        System.assertEquals(null, pipelineActivity.commitId);
    }
}
