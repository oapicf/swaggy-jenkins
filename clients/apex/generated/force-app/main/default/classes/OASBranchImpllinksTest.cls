@isTest
private class OASBranchImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASBranchImpllinks branchImpllinks1 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks2 = branchImpllinks1;
        OASBranchImpllinks branchImpllinks3 = new OASBranchImpllinks();
        OASBranchImpllinks branchImpllinks4 = branchImpllinks3;

        System.assert(branchImpllinks1.equals(branchImpllinks2));
        System.assert(branchImpllinks2.equals(branchImpllinks1));
        System.assert(branchImpllinks1.equals(branchImpllinks1));
        System.assert(branchImpllinks3.equals(branchImpllinks4));
        System.assert(branchImpllinks4.equals(branchImpllinks3));
        System.assert(branchImpllinks3.equals(branchImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBranchImpllinks branchImpllinks1 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks2 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks3 = new OASBranchImpllinks();
        OASBranchImpllinks branchImpllinks4 = new OASBranchImpllinks();

        System.assert(branchImpllinks1.equals(branchImpllinks2));
        System.assert(branchImpllinks2.equals(branchImpllinks1));
        System.assert(branchImpllinks3.equals(branchImpllinks4));
        System.assert(branchImpllinks4.equals(branchImpllinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBranchImpllinks branchImpllinks1 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks2 = new OASBranchImpllinks();

        System.assertEquals(false, branchImpllinks1.equals('foo'));
        System.assertEquals(false, branchImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBranchImpllinks branchImpllinks1 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks2 = new OASBranchImpllinks();
        OASBranchImpllinks branchImpllinks3;

        System.assertEquals(false, branchImpllinks1.equals(branchImpllinks3));
        System.assertEquals(false, branchImpllinks2.equals(branchImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBranchImpllinks branchImpllinks1 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks2 = new OASBranchImpllinks();

        System.assertEquals(branchImpllinks1.hashCode(), branchImpllinks1.hashCode());
        System.assertEquals(branchImpllinks2.hashCode(), branchImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBranchImpllinks branchImpllinks1 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks2 = OASBranchImpllinks.getExample();
        OASBranchImpllinks branchImpllinks3 = new OASBranchImpllinks();
        OASBranchImpllinks branchImpllinks4 = new OASBranchImpllinks();

        System.assert(branchImpllinks1.equals(branchImpllinks2));
        System.assert(branchImpllinks3.equals(branchImpllinks4));
        System.assertEquals(branchImpllinks1.hashCode(), branchImpllinks2.hashCode());
        System.assertEquals(branchImpllinks3.hashCode(), branchImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBranchImpllinks branchImpllinks = new OASBranchImpllinks();
        Map<String, String> propertyMappings = branchImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
