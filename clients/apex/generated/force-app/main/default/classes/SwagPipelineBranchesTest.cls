@isTest
private class SwagPipelineBranchesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineBranches pipelineBranches1 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches2 = pipelineBranches1;
        SwagPipelineBranches pipelineBranches3 = new SwagPipelineBranches();
        SwagPipelineBranches pipelineBranches4 = pipelineBranches3;

        System.assert(pipelineBranches1.equals(pipelineBranches2));
        System.assert(pipelineBranches2.equals(pipelineBranches1));
        System.assert(pipelineBranches1.equals(pipelineBranches1));
        System.assert(pipelineBranches3.equals(pipelineBranches4));
        System.assert(pipelineBranches4.equals(pipelineBranches3));
        System.assert(pipelineBranches3.equals(pipelineBranches3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineBranches pipelineBranches1 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches2 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches3 = new SwagPipelineBranches();
        SwagPipelineBranches pipelineBranches4 = new SwagPipelineBranches();

        System.assert(pipelineBranches1.equals(pipelineBranches2));
        System.assert(pipelineBranches2.equals(pipelineBranches1));
        System.assert(pipelineBranches3.equals(pipelineBranches4));
        System.assert(pipelineBranches4.equals(pipelineBranches3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineBranches pipelineBranches1 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches2 = new SwagPipelineBranches();

        System.assertEquals(false, pipelineBranches1.equals(pipelineBranches2));
        System.assertEquals(false, pipelineBranches2.equals(pipelineBranches1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineBranches pipelineBranches1 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches2 = new SwagPipelineBranches();

        System.assertEquals(false, pipelineBranches1.equals('foo'));
        System.assertEquals(false, pipelineBranches2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineBranches pipelineBranches1 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches2 = new SwagPipelineBranches();
        SwagPipelineBranches pipelineBranches3;

        System.assertEquals(false, pipelineBranches1.equals(pipelineBranches3));
        System.assertEquals(false, pipelineBranches2.equals(pipelineBranches3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineBranches pipelineBranches1 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches2 = new SwagPipelineBranches();

        System.assertEquals(pipelineBranches1.hashCode(), pipelineBranches1.hashCode());
        System.assertEquals(pipelineBranches2.hashCode(), pipelineBranches2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineBranches pipelineBranches1 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches2 = SwagPipelineBranches.getExample();
        SwagPipelineBranches pipelineBranches3 = new SwagPipelineBranches();
        SwagPipelineBranches pipelineBranches4 = new SwagPipelineBranches();

        System.assert(pipelineBranches1.equals(pipelineBranches2));
        System.assert(pipelineBranches3.equals(pipelineBranches4));
        System.assertEquals(pipelineBranches1.hashCode(), pipelineBranches2.hashCode());
        System.assertEquals(pipelineBranches3.hashCode(), pipelineBranches4.hashCode());
    }
}
