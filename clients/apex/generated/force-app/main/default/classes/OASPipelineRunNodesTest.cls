@isTest
private class OASPipelineRunNodesTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunNodes pipelineRunNodes1 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes2 = pipelineRunNodes1;
        OASPipelineRunNodes pipelineRunNodes3 = new OASPipelineRunNodes();
        OASPipelineRunNodes pipelineRunNodes4 = pipelineRunNodes3;

        System.assert(pipelineRunNodes1.equals(pipelineRunNodes2));
        System.assert(pipelineRunNodes2.equals(pipelineRunNodes1));
        System.assert(pipelineRunNodes1.equals(pipelineRunNodes1));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes4));
        System.assert(pipelineRunNodes4.equals(pipelineRunNodes3));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunNodes pipelineRunNodes1 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes2 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes3 = new OASPipelineRunNodes();
        OASPipelineRunNodes pipelineRunNodes4 = new OASPipelineRunNodes();

        System.assert(pipelineRunNodes1.equals(pipelineRunNodes2));
        System.assert(pipelineRunNodes2.equals(pipelineRunNodes1));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes4));
        System.assert(pipelineRunNodes4.equals(pipelineRunNodes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunNodes pipelineRunNodes1 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes2 = new OASPipelineRunNodes();

        System.assertEquals(false, pipelineRunNodes1.equals('foo'));
        System.assertEquals(false, pipelineRunNodes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunNodes pipelineRunNodes1 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes2 = new OASPipelineRunNodes();
        OASPipelineRunNodes pipelineRunNodes3;

        System.assertEquals(false, pipelineRunNodes1.equals(pipelineRunNodes3));
        System.assertEquals(false, pipelineRunNodes2.equals(pipelineRunNodes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunNodes pipelineRunNodes1 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes2 = new OASPipelineRunNodes();

        System.assertEquals(pipelineRunNodes1.hashCode(), pipelineRunNodes1.hashCode());
        System.assertEquals(pipelineRunNodes2.hashCode(), pipelineRunNodes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunNodes pipelineRunNodes1 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes2 = OASPipelineRunNodes.getExample();
        OASPipelineRunNodes pipelineRunNodes3 = new OASPipelineRunNodes();
        OASPipelineRunNodes pipelineRunNodes4 = new OASPipelineRunNodes();

        System.assert(pipelineRunNodes1.equals(pipelineRunNodes2));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes4));
        System.assertEquals(pipelineRunNodes1.hashCode(), pipelineRunNodes2.hashCode());
        System.assertEquals(pipelineRunNodes3.hashCode(), pipelineRunNodes4.hashCode());
    }
}
