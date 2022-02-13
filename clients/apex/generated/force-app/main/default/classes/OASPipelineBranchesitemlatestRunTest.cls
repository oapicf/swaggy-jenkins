@isTest
private class OASPipelineBranchesitemlatestRunTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = pipelineBranchesitemlatestRun1;
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3 = new OASPipelineBranchesitemlatestRun();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun4 = pipelineBranchesitemlatestRun3;

        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun2));
        System.assert(pipelineBranchesitemlatestRun2.equals(pipelineBranchesitemlatestRun1));
        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun1));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun4));
        System.assert(pipelineBranchesitemlatestRun4.equals(pipelineBranchesitemlatestRun3));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3 = new OASPipelineBranchesitemlatestRun();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun4 = new OASPipelineBranchesitemlatestRun();

        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun2));
        System.assert(pipelineBranchesitemlatestRun2.equals(pipelineBranchesitemlatestRun1));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun4));
        System.assert(pipelineBranchesitemlatestRun4.equals(pipelineBranchesitemlatestRun3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = new OASPipelineBranchesitemlatestRun();

        System.assertEquals(false, pipelineBranchesitemlatestRun1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitemlatestRun2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = new OASPipelineBranchesitemlatestRun();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3;

        System.assertEquals(false, pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun3));
        System.assertEquals(false, pipelineBranchesitemlatestRun2.equals(pipelineBranchesitemlatestRun3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = new OASPipelineBranchesitemlatestRun();

        System.assertEquals(pipelineBranchesitemlatestRun1.hashCode(), pipelineBranchesitemlatestRun1.hashCode());
        System.assertEquals(pipelineBranchesitemlatestRun2.hashCode(), pipelineBranchesitemlatestRun2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun1 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun2 = OASPipelineBranchesitemlatestRun.getExample();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun3 = new OASPipelineBranchesitemlatestRun();
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun4 = new OASPipelineBranchesitemlatestRun();

        System.assert(pipelineBranchesitemlatestRun1.equals(pipelineBranchesitemlatestRun2));
        System.assert(pipelineBranchesitemlatestRun3.equals(pipelineBranchesitemlatestRun4));
        System.assertEquals(pipelineBranchesitemlatestRun1.hashCode(), pipelineBranchesitemlatestRun2.hashCode());
        System.assertEquals(pipelineBranchesitemlatestRun3.hashCode(), pipelineBranchesitemlatestRun4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineBranchesitemlatestRun pipelineBranchesitemlatestRun = new OASPipelineBranchesitemlatestRun();
        Map<String, String> x-property-mappings = pipelineBranchesitemlatestRun.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
