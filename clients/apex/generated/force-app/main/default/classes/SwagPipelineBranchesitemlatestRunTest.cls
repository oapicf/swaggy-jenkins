@isTest
private class SwagPipelineBranchesitemlatestRunTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = pipelineBranchesitemlatestRun1;
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3 = new SwagPipelineBranchesitemlatestRun();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun4 = pipelineBranchesitemlatestRun3;

        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun2));
        System.assert(pipelineBranchesitemlatestRun2.equals(pipelineBranchesitemlatestRun1));
        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun1));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun4));
        System.assert(pipelineBranchesitemlatestRun4.equals(pipelineBranchesitemlatestRun3));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3 = new SwagPipelineBranchesitemlatestRun();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun4 = new SwagPipelineBranchesitemlatestRun();

        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun2));
        System.assert(pipelineBranchesitemlatestRun2.equals(pipelineBranchesitemlatestRun1));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun4));
        System.assert(pipelineBranchesitemlatestRun4.equals(pipelineBranchesitemlatestRun3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = new SwagPipelineBranchesitemlatestRun();

        System.assertEquals(false, pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun2));
        System.assertEquals(false, pipelineBranchesitemlatestRun2.equals(pipelineBranchesitemlatestRun1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = new SwagPipelineBranchesitemlatestRun();

        System.assertEquals(false, pipelineBranchesitemlatestRun1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitemlatestRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = new SwagPipelineBranchesitemlatestRun();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3;

        System.assertEquals(false, pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun3));
        System.assertEquals(false, pipelineBranchesitemlatestRun2.equals(pipelineBranchesitemlatestRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = new SwagPipelineBranchesitemlatestRun();

        System.assertEquals(pipelineBranchesitemlatestRun1.hashCode(), pipelineBranchesitemlatestRun1.hashCode());
        System.assertEquals(pipelineBranchesitemlatestRun2.hashCode(), pipelineBranchesitemlatestRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = SwagPipelineBranchesitemlatestRun.getExample();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3 = new SwagPipelineBranchesitemlatestRun();
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun4 = new SwagPipelineBranchesitemlatestRun();

        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun2));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun4));
        System.assertEquals(pipelineBranchesitemlatestRun1.hashCode(), pipelineBranchesitemlatestRun2.hashCode());
        System.assertEquals(pipelineBranchesitemlatestRun3.hashCode(), pipelineBranchesitemlatestRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun = new SwagPipelineBranchesitemlatestRun();
        Map<String, String> propertyMappings = pipelineBranchesitemlatestRun.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
