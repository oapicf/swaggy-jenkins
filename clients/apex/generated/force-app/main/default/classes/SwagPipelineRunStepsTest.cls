@isTest
private class SwagPipelineRunStepsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunSteps pipelineRunSteps1 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps2 = pipelineRunSteps1;
        SwagPipelineRunSteps pipelineRunSteps3 = new SwagPipelineRunSteps();
        SwagPipelineRunSteps pipelineRunSteps4 = pipelineRunSteps3;

        System.assert(pipelineRunSteps1.equals(pipelineRunSteps2));
        System.assert(pipelineRunSteps2.equals(pipelineRunSteps1));
        System.assert(pipelineRunSteps1.equals(pipelineRunSteps1));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps4));
        System.assert(pipelineRunSteps4.equals(pipelineRunSteps3));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunSteps pipelineRunSteps1 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps2 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps3 = new SwagPipelineRunSteps();
        SwagPipelineRunSteps pipelineRunSteps4 = new SwagPipelineRunSteps();

        System.assert(pipelineRunSteps1.equals(pipelineRunSteps2));
        System.assert(pipelineRunSteps2.equals(pipelineRunSteps1));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps4));
        System.assert(pipelineRunSteps4.equals(pipelineRunSteps3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunSteps pipelineRunSteps1 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps2 = new SwagPipelineRunSteps();

        System.assertEquals(false, pipelineRunSteps1.equals(pipelineRunSteps2));
        System.assertEquals(false, pipelineRunSteps2.equals(pipelineRunSteps1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunSteps pipelineRunSteps1 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps2 = new SwagPipelineRunSteps();

        System.assertEquals(false, pipelineRunSteps1.equals('foo'));
        System.assertEquals(false, pipelineRunSteps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunSteps pipelineRunSteps1 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps2 = new SwagPipelineRunSteps();
        SwagPipelineRunSteps pipelineRunSteps3;

        System.assertEquals(false, pipelineRunSteps1.equals(pipelineRunSteps3));
        System.assertEquals(false, pipelineRunSteps2.equals(pipelineRunSteps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunSteps pipelineRunSteps1 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps2 = new SwagPipelineRunSteps();

        System.assertEquals(pipelineRunSteps1.hashCode(), pipelineRunSteps1.hashCode());
        System.assertEquals(pipelineRunSteps2.hashCode(), pipelineRunSteps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunSteps pipelineRunSteps1 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps2 = SwagPipelineRunSteps.getExample();
        SwagPipelineRunSteps pipelineRunSteps3 = new SwagPipelineRunSteps();
        SwagPipelineRunSteps pipelineRunSteps4 = new SwagPipelineRunSteps();

        System.assert(pipelineRunSteps1.equals(pipelineRunSteps2));
        System.assert(pipelineRunSteps3.equals(pipelineRunSteps4));
        System.assertEquals(pipelineRunSteps1.hashCode(), pipelineRunSteps2.hashCode());
        System.assertEquals(pipelineRunSteps3.hashCode(), pipelineRunSteps4.hashCode());
    }
}
