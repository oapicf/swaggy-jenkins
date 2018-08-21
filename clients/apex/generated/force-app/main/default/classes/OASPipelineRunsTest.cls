@isTest
private class OASPipelineRunsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRuns pipelineRuns1 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns2 = pipelineRuns1;
        OASPipelineRuns pipelineRuns3 = new OASPipelineRuns();
        OASPipelineRuns pipelineRuns4 = pipelineRuns3;

        System.assert(pipelineRuns1.equals(pipelineRuns2));
        System.assert(pipelineRuns2.equals(pipelineRuns1));
        System.assert(pipelineRuns1.equals(pipelineRuns1));
        System.assert(pipelineRuns3.equals(pipelineRuns4));
        System.assert(pipelineRuns4.equals(pipelineRuns3));
        System.assert(pipelineRuns3.equals(pipelineRuns3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRuns pipelineRuns1 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns2 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns3 = new OASPipelineRuns();
        OASPipelineRuns pipelineRuns4 = new OASPipelineRuns();

        System.assert(pipelineRuns1.equals(pipelineRuns2));
        System.assert(pipelineRuns2.equals(pipelineRuns1));
        System.assert(pipelineRuns3.equals(pipelineRuns4));
        System.assert(pipelineRuns4.equals(pipelineRuns3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRuns pipelineRuns1 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns2 = new OASPipelineRuns();

        System.assertEquals(false, pipelineRuns1.equals('foo'));
        System.assertEquals(false, pipelineRuns2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRuns pipelineRuns1 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns2 = new OASPipelineRuns();
        OASPipelineRuns pipelineRuns3;

        System.assertEquals(false, pipelineRuns1.equals(pipelineRuns3));
        System.assertEquals(false, pipelineRuns2.equals(pipelineRuns3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRuns pipelineRuns1 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns2 = new OASPipelineRuns();

        System.assertEquals(pipelineRuns1.hashCode(), pipelineRuns1.hashCode());
        System.assertEquals(pipelineRuns2.hashCode(), pipelineRuns2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRuns pipelineRuns1 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns2 = OASPipelineRuns.getExample();
        OASPipelineRuns pipelineRuns3 = new OASPipelineRuns();
        OASPipelineRuns pipelineRuns4 = new OASPipelineRuns();

        System.assert(pipelineRuns1.equals(pipelineRuns2));
        System.assert(pipelineRuns3.equals(pipelineRuns4));
        System.assertEquals(pipelineRuns1.hashCode(), pipelineRuns2.hashCode());
        System.assertEquals(pipelineRuns3.hashCode(), pipelineRuns4.hashCode());
    }
}
