@isTest
private class OASPipelineQueueTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineQueue pipelineQueue1 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue2 = pipelineQueue1;
        OASPipelineQueue pipelineQueue3 = new OASPipelineQueue();
        OASPipelineQueue pipelineQueue4 = pipelineQueue3;

        System.assert(pipelineQueue1.equals(pipelineQueue2));
        System.assert(pipelineQueue2.equals(pipelineQueue1));
        System.assert(pipelineQueue1.equals(pipelineQueue1));
        System.assert(pipelineQueue3.equals(pipelineQueue4));
        System.assert(pipelineQueue4.equals(pipelineQueue3));
        System.assert(pipelineQueue3.equals(pipelineQueue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineQueue pipelineQueue1 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue2 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue3 = new OASPipelineQueue();
        OASPipelineQueue pipelineQueue4 = new OASPipelineQueue();

        System.assert(pipelineQueue1.equals(pipelineQueue2));
        System.assert(pipelineQueue2.equals(pipelineQueue1));
        System.assert(pipelineQueue3.equals(pipelineQueue4));
        System.assert(pipelineQueue4.equals(pipelineQueue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineQueue pipelineQueue1 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue2 = new OASPipelineQueue();

        System.assertEquals(false, pipelineQueue1.equals('foo'));
        System.assertEquals(false, pipelineQueue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineQueue pipelineQueue1 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue2 = new OASPipelineQueue();
        OASPipelineQueue pipelineQueue3;

        System.assertEquals(false, pipelineQueue1.equals(pipelineQueue3));
        System.assertEquals(false, pipelineQueue2.equals(pipelineQueue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineQueue pipelineQueue1 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue2 = new OASPipelineQueue();

        System.assertEquals(pipelineQueue1.hashCode(), pipelineQueue1.hashCode());
        System.assertEquals(pipelineQueue2.hashCode(), pipelineQueue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineQueue pipelineQueue1 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue2 = OASPipelineQueue.getExample();
        OASPipelineQueue pipelineQueue3 = new OASPipelineQueue();
        OASPipelineQueue pipelineQueue4 = new OASPipelineQueue();

        System.assert(pipelineQueue1.equals(pipelineQueue2));
        System.assert(pipelineQueue3.equals(pipelineQueue4));
        System.assertEquals(pipelineQueue1.hashCode(), pipelineQueue2.hashCode());
        System.assertEquals(pipelineQueue3.hashCode(), pipelineQueue4.hashCode());
    }
}
