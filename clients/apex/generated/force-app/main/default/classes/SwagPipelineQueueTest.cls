@isTest
private class SwagPipelineQueueTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineQueue pipelineQueue1 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue2 = pipelineQueue1;
        SwagPipelineQueue pipelineQueue3 = new SwagPipelineQueue();
        SwagPipelineQueue pipelineQueue4 = pipelineQueue3;

        System.assert(pipelineQueue1.equals(pipelineQueue2));
        System.assert(pipelineQueue2.equals(pipelineQueue1));
        System.assert(pipelineQueue1.equals(pipelineQueue1));
        System.assert(pipelineQueue3.equals(pipelineQueue4));
        System.assert(pipelineQueue4.equals(pipelineQueue3));
        System.assert(pipelineQueue3.equals(pipelineQueue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineQueue pipelineQueue1 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue2 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue3 = new SwagPipelineQueue();
        SwagPipelineQueue pipelineQueue4 = new SwagPipelineQueue();

        System.assert(pipelineQueue1.equals(pipelineQueue2));
        System.assert(pipelineQueue2.equals(pipelineQueue1));
        System.assert(pipelineQueue3.equals(pipelineQueue4));
        System.assert(pipelineQueue4.equals(pipelineQueue3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineQueue pipelineQueue1 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue2 = new SwagPipelineQueue();

        System.assertEquals(false, pipelineQueue1.equals(pipelineQueue2));
        System.assertEquals(false, pipelineQueue2.equals(pipelineQueue1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineQueue pipelineQueue1 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue2 = new SwagPipelineQueue();

        System.assertEquals(false, pipelineQueue1.equals('foo'));
        System.assertEquals(false, pipelineQueue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineQueue pipelineQueue1 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue2 = new SwagPipelineQueue();
        SwagPipelineQueue pipelineQueue3;

        System.assertEquals(false, pipelineQueue1.equals(pipelineQueue3));
        System.assertEquals(false, pipelineQueue2.equals(pipelineQueue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineQueue pipelineQueue1 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue2 = new SwagPipelineQueue();

        System.assertEquals(pipelineQueue1.hashCode(), pipelineQueue1.hashCode());
        System.assertEquals(pipelineQueue2.hashCode(), pipelineQueue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineQueue pipelineQueue1 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue2 = SwagPipelineQueue.getExample();
        SwagPipelineQueue pipelineQueue3 = new SwagPipelineQueue();
        SwagPipelineQueue pipelineQueue4 = new SwagPipelineQueue();

        System.assert(pipelineQueue1.equals(pipelineQueue2));
        System.assert(pipelineQueue3.equals(pipelineQueue4));
        System.assertEquals(pipelineQueue1.hashCode(), pipelineQueue2.hashCode());
        System.assertEquals(pipelineQueue3.hashCode(), pipelineQueue4.hashCode());
    }
}
