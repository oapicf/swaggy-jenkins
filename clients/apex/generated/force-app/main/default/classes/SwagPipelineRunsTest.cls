@isTest
private class SwagPipelineRunsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRuns pipelineRuns1 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns2 = pipelineRuns1;
        SwagPipelineRuns pipelineRuns3 = new SwagPipelineRuns();
        SwagPipelineRuns pipelineRuns4 = pipelineRuns3;

        System.assert(pipelineRuns1.equals(pipelineRuns2));
        System.assert(pipelineRuns2.equals(pipelineRuns1));
        System.assert(pipelineRuns1.equals(pipelineRuns1));
        System.assert(pipelineRuns3.equals(pipelineRuns4));
        System.assert(pipelineRuns4.equals(pipelineRuns3));
        System.assert(pipelineRuns3.equals(pipelineRuns3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRuns pipelineRuns1 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns2 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns3 = new SwagPipelineRuns();
        SwagPipelineRuns pipelineRuns4 = new SwagPipelineRuns();

        System.assert(pipelineRuns1.equals(pipelineRuns2));
        System.assert(pipelineRuns2.equals(pipelineRuns1));
        System.assert(pipelineRuns3.equals(pipelineRuns4));
        System.assert(pipelineRuns4.equals(pipelineRuns3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRuns pipelineRuns1 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns2 = new SwagPipelineRuns();

        System.assertEquals(false, pipelineRuns1.equals(pipelineRuns2));
        System.assertEquals(false, pipelineRuns2.equals(pipelineRuns1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRuns pipelineRuns1 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns2 = new SwagPipelineRuns();

        System.assertEquals(false, pipelineRuns1.equals('foo'));
        System.assertEquals(false, pipelineRuns2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRuns pipelineRuns1 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns2 = new SwagPipelineRuns();
        SwagPipelineRuns pipelineRuns3;

        System.assertEquals(false, pipelineRuns1.equals(pipelineRuns3));
        System.assertEquals(false, pipelineRuns2.equals(pipelineRuns3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRuns pipelineRuns1 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns2 = new SwagPipelineRuns();

        System.assertEquals(pipelineRuns1.hashCode(), pipelineRuns1.hashCode());
        System.assertEquals(pipelineRuns2.hashCode(), pipelineRuns2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRuns pipelineRuns1 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns2 = SwagPipelineRuns.getExample();
        SwagPipelineRuns pipelineRuns3 = new SwagPipelineRuns();
        SwagPipelineRuns pipelineRuns4 = new SwagPipelineRuns();

        System.assert(pipelineRuns1.equals(pipelineRuns2));
        System.assert(pipelineRuns3.equals(pipelineRuns4));
        System.assertEquals(pipelineRuns1.hashCode(), pipelineRuns2.hashCode());
        System.assertEquals(pipelineRuns3.hashCode(), pipelineRuns4.hashCode());
    }
}
