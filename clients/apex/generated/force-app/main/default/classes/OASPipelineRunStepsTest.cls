@isTest
private class OASPipelineRunStepsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunSteps pipelineRunSteps1 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps2 = pipelineRunSteps1;
        OASPipelineRunSteps pipelineRunSteps3 = new OASPipelineRunSteps();
        OASPipelineRunSteps pipelineRunSteps4 = pipelineRunSteps3;

        System.assert(pipelineRunSteps1.equals(pipelineRunSteps2));
        System.assert(pipelineRunSteps2.equals(pipelineRunSteps1));
        System.assert(pipelineRunSteps1.equals(pipelineRunSteps1));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps4));
        System.assert(pipelineRunSteps4.equals(pipelineRunSteps3));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunSteps pipelineRunSteps1 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps2 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps3 = new OASPipelineRunSteps();
        OASPipelineRunSteps pipelineRunSteps4 = new OASPipelineRunSteps();

        System.assert(pipelineRunSteps1.equals(pipelineRunSteps2));
        System.assert(pipelineRunSteps2.equals(pipelineRunSteps1));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps4));
        System.assert(pipelineRunSteps4.equals(pipelineRunSteps3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunSteps pipelineRunSteps1 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps2 = new OASPipelineRunSteps();

        System.assertEquals(false, pipelineRunSteps1.equals('foo'));
        System.assertEquals(false, pipelineRunSteps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunSteps pipelineRunSteps1 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps2 = new OASPipelineRunSteps();
        OASPipelineRunSteps pipelineRunSteps3;

        System.assertEquals(false, pipelineRunSteps1.equals(pipelineRunSteps3));
        System.assertEquals(false, pipelineRunSteps2.equals(pipelineRunSteps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunSteps pipelineRunSteps1 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps2 = new OASPipelineRunSteps();

        System.assertEquals(pipelineRunSteps1.hashCode(), pipelineRunSteps1.hashCode());
        System.assertEquals(pipelineRunSteps2.hashCode(), pipelineRunSteps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunSteps pipelineRunSteps1 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps2 = OASPipelineRunSteps.getExample();
        OASPipelineRunSteps pipelineRunSteps3 = new OASPipelineRunSteps();
        OASPipelineRunSteps pipelineRunSteps4 = new OASPipelineRunSteps();

        System.assert(pipelineRunSteps1.equals(pipelineRunSteps2));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps4));
        System.assertEquals(pipelineRunSteps1.hashCode(), pipelineRunSteps2.hashCode());
        System.assertEquals(pipelineRunSteps3.hashCode(), pipelineRunSteps4.hashCode());
    }
}
