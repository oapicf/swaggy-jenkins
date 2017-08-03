@isTest
private class SwagBranchImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagBranchImpllinks branchImpllinks1 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks2 = branchImpllinks1;
        SwagBranchImpllinks branchImpllinks3 = new SwagBranchImpllinks();
        SwagBranchImpllinks branchImpllinks4 = branchImpllinks3;

        System.assert(branchImpllinks1.equals(branchImpllinks2));
        System.assert(branchImpllinks2.equals(branchImpllinks1));
        System.assert(branchImpllinks1.equals(branchImpllinks1));
        System.assert(branchImpllinks3.equals(branchImpllinks4));
        System.assert(branchImpllinks4.equals(branchImpllinks3));
        System.assert(branchImpllinks3.equals(branchImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagBranchImpllinks branchImpllinks1 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks2 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks3 = new SwagBranchImpllinks();
        SwagBranchImpllinks branchImpllinks4 = new SwagBranchImpllinks();

        System.assert(branchImpllinks1.equals(branchImpllinks2));
        System.assert(branchImpllinks2.equals(branchImpllinks1));
        System.assert(branchImpllinks3.equals(branchImpllinks4));
        System.assert(branchImpllinks4.equals(branchImpllinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagBranchImpllinks branchImpllinks1 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks2 = new SwagBranchImpllinks();

        System.assertEquals(false, branchImpllinks1.equals(branchImpllinks2));
        System.assertEquals(false, branchImpllinks2.equals(branchImpllinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagBranchImpllinks branchImpllinks1 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks2 = new SwagBranchImpllinks();

        System.assertEquals(false, branchImpllinks1.equals('foo'));
        System.assertEquals(false, branchImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagBranchImpllinks branchImpllinks1 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks2 = new SwagBranchImpllinks();
        SwagBranchImpllinks branchImpllinks3;

        System.assertEquals(false, branchImpllinks1.equals(branchImpllinks3));
        System.assertEquals(false, branchImpllinks2.equals(branchImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagBranchImpllinks branchImpllinks1 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks2 = new SwagBranchImpllinks();

        System.assertEquals(branchImpllinks1.hashCode(), branchImpllinks1.hashCode());
        System.assertEquals(branchImpllinks2.hashCode(), branchImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagBranchImpllinks branchImpllinks1 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks2 = SwagBranchImpllinks.getExample();
        SwagBranchImpllinks branchImpllinks3 = new SwagBranchImpllinks();
        SwagBranchImpllinks branchImpllinks4 = new SwagBranchImpllinks();

        System.assert(branchImpllinks1.equals(branchImpllinks2));
        System.assert(branchImpllinks3.equals(branchImpllinks4));
        System.assertEquals(branchImpllinks1.hashCode(), branchImpllinks2.hashCode());
        System.assertEquals(branchImpllinks3.hashCode(), branchImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagBranchImpllinks branchImpllinks = new SwagBranchImpllinks();
        Map<String, String> propertyMappings = branchImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
