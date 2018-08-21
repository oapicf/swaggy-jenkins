@isTest
private class OASPipelineRunNodeStepsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunNodeSteps pipelineRunNodeSteps1 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps2 = pipelineRunNodeSteps1;
        OASPipelineRunNodeSteps pipelineRunNodeSteps3 = new OASPipelineRunNodeSteps();
        OASPipelineRunNodeSteps pipelineRunNodeSteps4 = pipelineRunNodeSteps3;

        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps2));
        System.assert(pipelineRunNodeSteps2.equals(pipelineRunNodeSteps1));
        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps1));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps4));
        System.assert(pipelineRunNodeSteps4.equals(pipelineRunNodeSteps3));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunNodeSteps pipelineRunNodeSteps1 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps2 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps3 = new OASPipelineRunNodeSteps();
        OASPipelineRunNodeSteps pipelineRunNodeSteps4 = new OASPipelineRunNodeSteps();

        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps2));
        System.assert(pipelineRunNodeSteps2.equals(pipelineRunNodeSteps1));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps4));
        System.assert(pipelineRunNodeSteps4.equals(pipelineRunNodeSteps3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunNodeSteps pipelineRunNodeSteps1 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps2 = new OASPipelineRunNodeSteps();

        System.assertEquals(false, pipelineRunNodeSteps1.equals('foo'));
        System.assertEquals(false, pipelineRunNodeSteps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunNodeSteps pipelineRunNodeSteps1 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps2 = new OASPipelineRunNodeSteps();
        OASPipelineRunNodeSteps pipelineRunNodeSteps3;

        System.assertEquals(false, pipelineRunNodeSteps1.equals(pipelineRunNodeSteps3));
        System.assertEquals(false, pipelineRunNodeSteps2.equals(pipelineRunNodeSteps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunNodeSteps pipelineRunNodeSteps1 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps2 = new OASPipelineRunNodeSteps();

        System.assertEquals(pipelineRunNodeSteps1.hashCode(), pipelineRunNodeSteps1.hashCode());
        System.assertEquals(pipelineRunNodeSteps2.hashCode(), pipelineRunNodeSteps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunNodeSteps pipelineRunNodeSteps1 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps2 = OASPipelineRunNodeSteps.getExample();
        OASPipelineRunNodeSteps pipelineRunNodeSteps3 = new OASPipelineRunNodeSteps();
        OASPipelineRunNodeSteps pipelineRunNodeSteps4 = new OASPipelineRunNodeSteps();

        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps2));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps4));
        System.assertEquals(pipelineRunNodeSteps1.hashCode(), pipelineRunNodeSteps2.hashCode());
        System.assertEquals(pipelineRunNodeSteps3.hashCode(), pipelineRunNodeSteps4.hashCode());
    }
}
