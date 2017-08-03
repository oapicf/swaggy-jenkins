@isTest
private class SwagPipelineBranchesitemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineBranchesitem pipelineBranchesitem1 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem2 = pipelineBranchesitem1;
        SwagPipelineBranchesitem pipelineBranchesitem3 = new SwagPipelineBranchesitem();
        SwagPipelineBranchesitem pipelineBranchesitem4 = pipelineBranchesitem3;

        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem2));
        System.assert(pipelineBranchesitem2.equals(pipelineBranchesitem1));
        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem1));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem4));
        System.assert(pipelineBranchesitem4.equals(pipelineBranchesitem3));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineBranchesitem pipelineBranchesitem1 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem2 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem3 = new SwagPipelineBranchesitem();
        SwagPipelineBranchesitem pipelineBranchesitem4 = new SwagPipelineBranchesitem();

        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem2));
        System.assert(pipelineBranchesitem2.equals(pipelineBranchesitem1));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem4));
        System.assert(pipelineBranchesitem4.equals(pipelineBranchesitem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineBranchesitem pipelineBranchesitem1 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem2 = new SwagPipelineBranchesitem();

        System.assertEquals(false, pipelineBranchesitem1.equals(pipelineBranchesitem2));
        System.assertEquals(false, pipelineBranchesitem2.equals(pipelineBranchesitem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineBranchesitem pipelineBranchesitem1 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem2 = new SwagPipelineBranchesitem();

        System.assertEquals(false, pipelineBranchesitem1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineBranchesitem pipelineBranchesitem1 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem2 = new SwagPipelineBranchesitem();
        SwagPipelineBranchesitem pipelineBranchesitem3;

        System.assertEquals(false, pipelineBranchesitem1.equals(pipelineBranchesitem3));
        System.assertEquals(false, pipelineBranchesitem2.equals(pipelineBranchesitem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineBranchesitem pipelineBranchesitem1 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem2 = new SwagPipelineBranchesitem();

        System.assertEquals(pipelineBranchesitem1.hashCode(), pipelineBranchesitem1.hashCode());
        System.assertEquals(pipelineBranchesitem2.hashCode(), pipelineBranchesitem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineBranchesitem pipelineBranchesitem1 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem2 = SwagPipelineBranchesitem.getExample();
        SwagPipelineBranchesitem pipelineBranchesitem3 = new SwagPipelineBranchesitem();
        SwagPipelineBranchesitem pipelineBranchesitem4 = new SwagPipelineBranchesitem();

        System.assert(pipelineBranchesitem1.equals(pipelineBranchesitem2));
        System.assert(pipelineBranchesitem3.equals(pipelineBranchesitem4));
        System.assertEquals(pipelineBranchesitem1.hashCode(), pipelineBranchesitem2.hashCode());
        System.assertEquals(pipelineBranchesitem3.hashCode(), pipelineBranchesitem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineBranchesitem pipelineBranchesitem = new SwagPipelineBranchesitem();
        Map<String, String> propertyMappings = pipelineBranchesitem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
