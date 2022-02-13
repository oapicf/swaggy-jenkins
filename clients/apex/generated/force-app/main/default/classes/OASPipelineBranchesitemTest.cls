@isTest
private class OASPipelineBranchesitemTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineBranchesitem pipelineBranchesitem1 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem2 = pipelineBranchesitem1;
        OASPipelineBranchesitem pipelineBranchesitem3 = new OASPipelineBranchesitem();
        OASPipelineBranchesitem pipelineBranchesitem4 = pipelineBranchesitem3;

        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem2));
        System.assert(pipelineBranchesitem2.equals(pipelineBranchesitem1));
        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem1));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem4));
        System.assert(pipelineBranchesitem4.equals(pipelineBranchesitem3));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineBranchesitem pipelineBranchesitem1 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem2 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem3 = new OASPipelineBranchesitem();
        OASPipelineBranchesitem pipelineBranchesitem4 = new OASPipelineBranchesitem();

        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem2));
        System.assert(pipelineBranchesitem2.equals(pipelineBranchesitem1));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem4));
        System.assert(pipelineBranchesitem4.equals(pipelineBranchesitem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineBranchesitem pipelineBranchesitem1 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem2 = new OASPipelineBranchesitem();

        System.assertEquals(false, pipelineBranchesitem1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineBranchesitem pipelineBranchesitem1 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem2 = new OASPipelineBranchesitem();
        OASPipelineBranchesitem pipelineBranchesitem3;

        System.assertEquals(false, pipelineBranchesitem1.equals(pipelineBranchesitem3));
        System.assertEquals(false, pipelineBranchesitem2.equals(pipelineBranchesitem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineBranchesitem pipelineBranchesitem1 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem2 = new OASPipelineBranchesitem();

        System.assertEquals(pipelineBranchesitem1.hashCode(), pipelineBranchesitem1.hashCode());
        System.assertEquals(pipelineBranchesitem2.hashCode(), pipelineBranchesitem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineBranchesitem pipelineBranchesitem1 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem2 = OASPipelineBranchesitem.getExample();
        OASPipelineBranchesitem pipelineBranchesitem3 = new OASPipelineBranchesitem();
        OASPipelineBranchesitem pipelineBranchesitem4 = new OASPipelineBranchesitem();

        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem2));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem4));
        System.assertEquals(pipelineBranchesitem1.hashCode(), pipelineBranchesitem2.hashCode());
        System.assertEquals(pipelineBranchesitem3.hashCode(), pipelineBranchesitem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineBranchesitem pipelineBranchesitem = new OASPipelineBranchesitem();
        Map<String, String> x-property-mappings = pipelineBranchesitem.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
