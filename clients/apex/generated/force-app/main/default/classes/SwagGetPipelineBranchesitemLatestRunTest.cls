@isTest
private class SwagGetPipelineBranchesitemLatestRunTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun1 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun2 = getPipelineBranchesitemLatestRun1;
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun3 = new SwagGetPipelineBranchesitemLatestRun();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun4 = getPipelineBranchesitemLatestRun3;

        System.assert(getPipelineBranchesitemLatestRun1.equals(getPipelineBranchesitemLatestRun2));
        System.assert(getPipelineBranchesitemLatestRun2.equals(getPipelineBranchesitemLatestRun1));
        System.assert(getPipelineBranchesitemLatestRun1.equals(getPipelineBranchesitemLatestRun1));
        System.assert(getPipelineBranchesitemLatestRun3.equals(getPipelineBranchesitemLatestRun4));
        System.assert(getPipelineBranchesitemLatestRun4.equals(getPipelineBranchesitemLatestRun3));
        System.assert(getPipelineBranchesitemLatestRun3.equals(getPipelineBranchesitemLatestRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun1 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun2 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun3 = new SwagGetPipelineBranchesitemLatestRun();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun4 = new SwagGetPipelineBranchesitemLatestRun();

        System.assert(getPipelineBranchesitemLatestRun1.equals(getPipelineBranchesitemLatestRun2));
        System.assert(getPipelineBranchesitemLatestRun2.equals(getPipelineBranchesitemLatestRun1));
        System.assert(getPipelineBranchesitemLatestRun3.equals(getPipelineBranchesitemLatestRun4));
        System.assert(getPipelineBranchesitemLatestRun4.equals(getPipelineBranchesitemLatestRun3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun1 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun2 = new SwagGetPipelineBranchesitemLatestRun();

        System.assertEquals(false, getPipelineBranchesitemLatestRun1.equals(getPipelineBranchesitemLatestRun2));
        System.assertEquals(false, getPipelineBranchesitemLatestRun2.equals(getPipelineBranchesitemLatestRun1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun1 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun2 = new SwagGetPipelineBranchesitemLatestRun();

        System.assertEquals(false, getPipelineBranchesitemLatestRun1.equals('foo'));
        System.assertEquals(false, getPipelineBranchesitemLatestRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun1 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun2 = new SwagGetPipelineBranchesitemLatestRun();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun3;

        System.assertEquals(false, getPipelineBranchesitemLatestRun1.equals(getPipelineBranchesitemLatestRun3));
        System.assertEquals(false, getPipelineBranchesitemLatestRun2.equals(getPipelineBranchesitemLatestRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun1 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun2 = new SwagGetPipelineBranchesitemLatestRun();

        System.assertEquals(getPipelineBranchesitemLatestRun1.hashCode(), getPipelineBranchesitemLatestRun1.hashCode());
        System.assertEquals(getPipelineBranchesitemLatestRun2.hashCode(), getPipelineBranchesitemLatestRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun1 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun2 = SwagGetPipelineBranchesitemLatestRun.getExample();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun3 = new SwagGetPipelineBranchesitemLatestRun();
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun4 = new SwagGetPipelineBranchesitemLatestRun();

        System.assert(getPipelineBranchesitemLatestRun1.equals(getPipelineBranchesitemLatestRun2));
        System.assert(getPipelineBranchesitemLatestRun3.equals(getPipelineBranchesitemLatestRun4));
        System.assertEquals(getPipelineBranchesitemLatestRun1.hashCode(), getPipelineBranchesitemLatestRun2.hashCode());
        System.assertEquals(getPipelineBranchesitemLatestRun3.hashCode(), getPipelineBranchesitemLatestRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun = new SwagGetPipelineBranchesitemLatestRun();
        Map<String, String> propertyMappings = getPipelineBranchesitemLatestRun.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
