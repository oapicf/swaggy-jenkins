@isTest
private class SwagGetPipelineBranchesitemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem1 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem2 = getPipelineBranchesitem1;
        SwagGetPipelineBranchesitem getPipelineBranchesitem3 = new SwagGetPipelineBranchesitem();
        SwagGetPipelineBranchesitem getPipelineBranchesitem4 = getPipelineBranchesitem3;

        System.assert(getPipelineBranchesitem1.equals(getPipelineBranchesitem2));
        System.assert(getPipelineBranchesitem2.equals(getPipelineBranchesitem1));
        System.assert(getPipelineBranchesitem1.equals(getPipelineBranchesitem1));
        System.assert(getPipelineBranchesitem3.equals(getPipelineBranchesitem4));
        System.assert(getPipelineBranchesitem4.equals(getPipelineBranchesitem3));
        System.assert(getPipelineBranchesitem3.equals(getPipelineBranchesitem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem1 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem2 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem3 = new SwagGetPipelineBranchesitem();
        SwagGetPipelineBranchesitem getPipelineBranchesitem4 = new SwagGetPipelineBranchesitem();

        System.assert(getPipelineBranchesitem1.equals(getPipelineBranchesitem2));
        System.assert(getPipelineBranchesitem2.equals(getPipelineBranchesitem1));
        System.assert(getPipelineBranchesitem3.equals(getPipelineBranchesitem4));
        System.assert(getPipelineBranchesitem4.equals(getPipelineBranchesitem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem1 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem2 = new SwagGetPipelineBranchesitem();

        System.assertEquals(false, getPipelineBranchesitem1.equals(getPipelineBranchesitem2));
        System.assertEquals(false, getPipelineBranchesitem2.equals(getPipelineBranchesitem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem1 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem2 = new SwagGetPipelineBranchesitem();

        System.assertEquals(false, getPipelineBranchesitem1.equals('foo'));
        System.assertEquals(false, getPipelineBranchesitem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem1 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem2 = new SwagGetPipelineBranchesitem();
        SwagGetPipelineBranchesitem getPipelineBranchesitem3;

        System.assertEquals(false, getPipelineBranchesitem1.equals(getPipelineBranchesitem3));
        System.assertEquals(false, getPipelineBranchesitem2.equals(getPipelineBranchesitem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem1 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem2 = new SwagGetPipelineBranchesitem();

        System.assertEquals(getPipelineBranchesitem1.hashCode(), getPipelineBranchesitem1.hashCode());
        System.assertEquals(getPipelineBranchesitem2.hashCode(), getPipelineBranchesitem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem1 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem2 = SwagGetPipelineBranchesitem.getExample();
        SwagGetPipelineBranchesitem getPipelineBranchesitem3 = new SwagGetPipelineBranchesitem();
        SwagGetPipelineBranchesitem getPipelineBranchesitem4 = new SwagGetPipelineBranchesitem();

        System.assert(getPipelineBranchesitem1.equals(getPipelineBranchesitem2));
        System.assert(getPipelineBranchesitem3.equals(getPipelineBranchesitem4));
        System.assertEquals(getPipelineBranchesitem1.hashCode(), getPipelineBranchesitem2.hashCode());
        System.assertEquals(getPipelineBranchesitem3.hashCode(), getPipelineBranchesitem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGetPipelineBranchesitem getPipelineBranchesitem = new SwagGetPipelineBranchesitem();
        Map<String, String> propertyMappings = getPipelineBranchesitem.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
