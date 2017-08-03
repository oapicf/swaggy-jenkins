@isTest
private class SwagPipelineRunNodesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunNodes pipelineRunNodes1 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes2 = pipelineRunNodes1;
        SwagPipelineRunNodes pipelineRunNodes3 = new SwagPipelineRunNodes();
        SwagPipelineRunNodes pipelineRunNodes4 = pipelineRunNodes3;

        System.assert(pipelineRunNodes1.equals(pipelineRunNodes2));
        System.assert(pipelineRunNodes2.equals(pipelineRunNodes1));
        System.assert(pipelineRunNodes1.equals(pipelineRunNodes1));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes4));
        System.assert(pipelineRunNodes4.equals(pipelineRunNodes3));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunNodes pipelineRunNodes1 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes2 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes3 = new SwagPipelineRunNodes();
        SwagPipelineRunNodes pipelineRunNodes4 = new SwagPipelineRunNodes();

        System.assert(pipelineRunNodes1.equals(pipelineRunNodes2));
        System.assert(pipelineRunNodes2.equals(pipelineRunNodes1));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes4));
        System.assert(pipelineRunNodes4.equals(pipelineRunNodes3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunNodes pipelineRunNodes1 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes2 = new SwagPipelineRunNodes();

        System.assertEquals(false, pipelineRunNodes1.equals(pipelineRunNodes2));
        System.assertEquals(false, pipelineRunNodes2.equals(pipelineRunNodes1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunNodes pipelineRunNodes1 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes2 = new SwagPipelineRunNodes();

        System.assertEquals(false, pipelineRunNodes1.equals('foo'));
        System.assertEquals(false, pipelineRunNodes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunNodes pipelineRunNodes1 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes2 = new SwagPipelineRunNodes();
        SwagPipelineRunNodes pipelineRunNodes3;

        System.assertEquals(false, pipelineRunNodes1.equals(pipelineRunNodes3));
        System.assertEquals(false, pipelineRunNodes2.equals(pipelineRunNodes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunNodes pipelineRunNodes1 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes2 = new SwagPipelineRunNodes();

        System.assertEquals(pipelineRunNodes1.hashCode(), pipelineRunNodes1.hashCode());
        System.assertEquals(pipelineRunNodes2.hashCode(), pipelineRunNodes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunNodes pipelineRunNodes1 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes2 = SwagPipelineRunNodes.getExample();
        SwagPipelineRunNodes pipelineRunNodes3 = new SwagPipelineRunNodes();
        SwagPipelineRunNodes pipelineRunNodes4 = new SwagPipelineRunNodes();

        System.assert(pipelineRunNodes1.equals(pipelineRunNodes2));
        System.assert(pipelineRunNodes3.equals(pipelineRunNodes4));
        System.assertEquals(pipelineRunNodes1.hashCode(), pipelineRunNodes2.hashCode());
        System.assertEquals(pipelineRunNodes3.hashCode(), pipelineRunNodes4.hashCode());
    }
}
