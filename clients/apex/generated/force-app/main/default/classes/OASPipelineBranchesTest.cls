@isTest
private class OASPipelineBranchesTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineBranches pipelineBranches1 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches2 = pipelineBranches1;
        OASPipelineBranches pipelineBranches3 = new OASPipelineBranches();
        OASPipelineBranches pipelineBranches4 = pipelineBranches3;

        System.assert(pipelineBranches1.equals(pipelineBranches2));
        System.assert(pipelineBranches2.equals(pipelineBranches1));
        System.assert(pipelineBranches1.equals(pipelineBranches1));
        System.assert(pipelineBranches3.equals(pipelineBranches4));
        System.assert(pipelineBranches4.equals(pipelineBranches3));
        System.assert(pipelineBranches3.equals(pipelineBranches3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineBranches pipelineBranches1 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches2 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches3 = new OASPipelineBranches();
        OASPipelineBranches pipelineBranches4 = new OASPipelineBranches();

        System.assert(pipelineBranches1.equals(pipelineBranches2));
        System.assert(pipelineBranches2.equals(pipelineBranches1));
        System.assert(pipelineBranches3.equals(pipelineBranches4));
        System.assert(pipelineBranches4.equals(pipelineBranches3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineBranches pipelineBranches1 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches2 = new OASPipelineBranches();

        System.assertEquals(false, pipelineBranches1.equals('foo'));
        System.assertEquals(false, pipelineBranches2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineBranches pipelineBranches1 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches2 = new OASPipelineBranches();
        OASPipelineBranches pipelineBranches3;

        System.assertEquals(false, pipelineBranches1.equals(pipelineBranches3));
        System.assertEquals(false, pipelineBranches2.equals(pipelineBranches3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineBranches pipelineBranches1 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches2 = new OASPipelineBranches();

        System.assertEquals(pipelineBranches1.hashCode(), pipelineBranches1.hashCode());
        System.assertEquals(pipelineBranches2.hashCode(), pipelineBranches2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineBranches pipelineBranches1 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches2 = OASPipelineBranches.getExample();
        OASPipelineBranches pipelineBranches3 = new OASPipelineBranches();
        OASPipelineBranches pipelineBranches4 = new OASPipelineBranches();

        System.assert(pipelineBranches1.equals(pipelineBranches2));
        System.assert(pipelineBranches3.equals(pipelineBranches4));
        System.assertEquals(pipelineBranches1.hashCode(), pipelineBranches2.hashCode());
        System.assertEquals(pipelineBranches3.hashCode(), pipelineBranches4.hashCode());
    }
}
