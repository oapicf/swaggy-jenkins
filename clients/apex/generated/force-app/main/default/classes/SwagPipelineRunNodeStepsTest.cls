@isTest
private class SwagPipelineRunNodeStepsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunNodeSteps pipelineRunNodeSteps1 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps2 = pipelineRunNodeSteps1;
        SwagPipelineRunNodeSteps pipelineRunNodeSteps3 = new SwagPipelineRunNodeSteps();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps4 = pipelineRunNodeSteps3;

        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps2));
        System.assert(pipelineRunNodeSteps2.equals(pipelineRunNodeSteps1));
        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps1));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps4));
        System.assert(pipelineRunNodeSteps4.equals(pipelineRunNodeSteps3));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunNodeSteps pipelineRunNodeSteps1 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps2 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps3 = new SwagPipelineRunNodeSteps();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps4 = new SwagPipelineRunNodeSteps();

        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps2));
        System.assert(pipelineRunNodeSteps2.equals(pipelineRunNodeSteps1));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps4));
        System.assert(pipelineRunNodeSteps4.equals(pipelineRunNodeSteps3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunNodeSteps pipelineRunNodeSteps1 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps2 = new SwagPipelineRunNodeSteps();

        System.assertEquals(false, pipelineRunNodeSteps1.equals(pipelineRunNodeSteps2));
        System.assertEquals(false, pipelineRunNodeSteps2.equals(pipelineRunNodeSteps1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunNodeSteps pipelineRunNodeSteps1 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps2 = new SwagPipelineRunNodeSteps();

        System.assertEquals(false, pipelineRunNodeSteps1.equals('foo'));
        System.assertEquals(false, pipelineRunNodeSteps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunNodeSteps pipelineRunNodeSteps1 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps2 = new SwagPipelineRunNodeSteps();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps3;

        System.assertEquals(false, pipelineRunNodeSteps1.equals(pipelineRunNodeSteps3));
        System.assertEquals(false, pipelineRunNodeSteps2.equals(pipelineRunNodeSteps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunNodeSteps pipelineRunNodeSteps1 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps2 = new SwagPipelineRunNodeSteps();

        System.assertEquals(pipelineRunNodeSteps1.hashCode(), pipelineRunNodeSteps1.hashCode());
        System.assertEquals(pipelineRunNodeSteps2.hashCode(), pipelineRunNodeSteps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunNodeSteps pipelineRunNodeSteps1 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps2 = SwagPipelineRunNodeSteps.getExample();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps3 = new SwagPipelineRunNodeSteps();
        SwagPipelineRunNodeSteps pipelineRunNodeSteps4 = new SwagPipelineRunNodeSteps();

        System.assert(pipelineRunNodeSteps1.equals(pipelineRunNodeSteps2));
        System.assert(pipelineRunNodeSteps3.equals(pipelineRunNodeSteps4));
        System.assertEquals(pipelineRunNodeSteps1.hashCode(), pipelineRunNodeSteps2.hashCode());
        System.assertEquals(pipelineRunNodeSteps3.hashCode(), pipelineRunNodeSteps4.hashCode());
    }
}
