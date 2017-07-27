@isTest
private class SwagGetPipelineBranchesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetPipelineBranches getPipelineBranches1 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches2 = getPipelineBranches1;
        SwagGetPipelineBranches getPipelineBranches3 = new SwagGetPipelineBranches();
        SwagGetPipelineBranches getPipelineBranches4 = getPipelineBranches3;

        System.assert(getPipelineBranches1.equals(getPipelineBranches2));
        System.assert(getPipelineBranches2.equals(getPipelineBranches1));
        System.assert(getPipelineBranches1.equals(getPipelineBranches1));
        System.assert(getPipelineBranches3.equals(getPipelineBranches4));
        System.assert(getPipelineBranches4.equals(getPipelineBranches3));
        System.assert(getPipelineBranches3.equals(getPipelineBranches3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetPipelineBranches getPipelineBranches1 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches2 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches3 = new SwagGetPipelineBranches();
        SwagGetPipelineBranches getPipelineBranches4 = new SwagGetPipelineBranches();

        System.assert(getPipelineBranches1.equals(getPipelineBranches2));
        System.assert(getPipelineBranches2.equals(getPipelineBranches1));
        System.assert(getPipelineBranches3.equals(getPipelineBranches4));
        System.assert(getPipelineBranches4.equals(getPipelineBranches3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetPipelineBranches getPipelineBranches1 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches2 = new SwagGetPipelineBranches();

        System.assertEquals(false, getPipelineBranches1.equals(getPipelineBranches2));
        System.assertEquals(false, getPipelineBranches2.equals(getPipelineBranches1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetPipelineBranches getPipelineBranches1 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches2 = new SwagGetPipelineBranches();

        System.assertEquals(false, getPipelineBranches1.equals('foo'));
        System.assertEquals(false, getPipelineBranches2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetPipelineBranches getPipelineBranches1 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches2 = new SwagGetPipelineBranches();
        SwagGetPipelineBranches getPipelineBranches3;

        System.assertEquals(false, getPipelineBranches1.equals(getPipelineBranches3));
        System.assertEquals(false, getPipelineBranches2.equals(getPipelineBranches3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetPipelineBranches getPipelineBranches1 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches2 = new SwagGetPipelineBranches();

        System.assertEquals(getPipelineBranches1.hashCode(), getPipelineBranches1.hashCode());
        System.assertEquals(getPipelineBranches2.hashCode(), getPipelineBranches2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetPipelineBranches getPipelineBranches1 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches2 = SwagGetPipelineBranches.getExample();
        SwagGetPipelineBranches getPipelineBranches3 = new SwagGetPipelineBranches();
        SwagGetPipelineBranches getPipelineBranches4 = new SwagGetPipelineBranches();

        System.assert(getPipelineBranches1.equals(getPipelineBranches2));
        System.assert(getPipelineBranches3.equals(getPipelineBranches4));
        System.assertEquals(getPipelineBranches1.hashCode(), getPipelineBranches2.hashCode());
        System.assertEquals(getPipelineBranches3.hashCode(), getPipelineBranches4.hashCode());
    }
}
