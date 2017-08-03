@isTest
private class SwagBranchImplpermissionsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagBranchImplpermissions branchImplpermissions1 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions2 = branchImplpermissions1;
        SwagBranchImplpermissions branchImplpermissions3 = new SwagBranchImplpermissions();
        SwagBranchImplpermissions branchImplpermissions4 = branchImplpermissions3;

        System.assert(branchImplpermissions1.equals(branchImplpermissions2));
        System.assert(branchImplpermissions2.equals(branchImplpermissions1));
        System.assert(branchImplpermissions1.equals(branchImplpermissions1));
        System.assert(branchImplpermissions3.equals(branchImplpermissions4));
        System.assert(branchImplpermissions4.equals(branchImplpermissions3));
        System.assert(branchImplpermissions3.equals(branchImplpermissions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagBranchImplpermissions branchImplpermissions1 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions2 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions3 = new SwagBranchImplpermissions();
        SwagBranchImplpermissions branchImplpermissions4 = new SwagBranchImplpermissions();

        System.assert(branchImplpermissions1.equals(branchImplpermissions2));
        System.assert(branchImplpermissions2.equals(branchImplpermissions1));
        System.assert(branchImplpermissions3.equals(branchImplpermissions4));
        System.assert(branchImplpermissions4.equals(branchImplpermissions3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagBranchImplpermissions branchImplpermissions1 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions2 = new SwagBranchImplpermissions();

        System.assertEquals(false, branchImplpermissions1.equals(branchImplpermissions2));
        System.assertEquals(false, branchImplpermissions2.equals(branchImplpermissions1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagBranchImplpermissions branchImplpermissions1 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions2 = new SwagBranchImplpermissions();

        System.assertEquals(false, branchImplpermissions1.equals('foo'));
        System.assertEquals(false, branchImplpermissions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagBranchImplpermissions branchImplpermissions1 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions2 = new SwagBranchImplpermissions();
        SwagBranchImplpermissions branchImplpermissions3;

        System.assertEquals(false, branchImplpermissions1.equals(branchImplpermissions3));
        System.assertEquals(false, branchImplpermissions2.equals(branchImplpermissions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagBranchImplpermissions branchImplpermissions1 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions2 = new SwagBranchImplpermissions();

        System.assertEquals(branchImplpermissions1.hashCode(), branchImplpermissions1.hashCode());
        System.assertEquals(branchImplpermissions2.hashCode(), branchImplpermissions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagBranchImplpermissions branchImplpermissions1 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions2 = SwagBranchImplpermissions.getExample();
        SwagBranchImplpermissions branchImplpermissions3 = new SwagBranchImplpermissions();
        SwagBranchImplpermissions branchImplpermissions4 = new SwagBranchImplpermissions();

        System.assert(branchImplpermissions1.equals(branchImplpermissions2));
        System.assert(branchImplpermissions3.equals(branchImplpermissions4));
        System.assertEquals(branchImplpermissions1.hashCode(), branchImplpermissions2.hashCode());
        System.assertEquals(branchImplpermissions3.hashCode(), branchImplpermissions4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagBranchImplpermissions branchImplpermissions = new SwagBranchImplpermissions();
        Map<String, String> propertyMappings = branchImplpermissions.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
