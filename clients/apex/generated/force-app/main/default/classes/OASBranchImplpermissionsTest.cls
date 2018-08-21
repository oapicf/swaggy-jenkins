@isTest
private class OASBranchImplpermissionsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBranchImplpermissions branchImplpermissions1 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions2 = branchImplpermissions1;
        OASBranchImplpermissions branchImplpermissions3 = new OASBranchImplpermissions();
        OASBranchImplpermissions branchImplpermissions4 = branchImplpermissions3;

        System.assert(branchImplpermissions1.equals(branchImplpermissions2));
        System.assert(branchImplpermissions2.equals(branchImplpermissions1));
        System.assert(branchImplpermissions1.equals(branchImplpermissions1));
        System.assert(branchImplpermissions3.equals(branchImplpermissions4));
        System.assert(branchImplpermissions4.equals(branchImplpermissions3));
        System.assert(branchImplpermissions3.equals(branchImplpermissions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBranchImplpermissions branchImplpermissions1 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions2 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions3 = new OASBranchImplpermissions();
        OASBranchImplpermissions branchImplpermissions4 = new OASBranchImplpermissions();

        System.assert(branchImplpermissions1.equals(branchImplpermissions2));
        System.assert(branchImplpermissions2.equals(branchImplpermissions1));
        System.assert(branchImplpermissions3.equals(branchImplpermissions4));
        System.assert(branchImplpermissions4.equals(branchImplpermissions3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBranchImplpermissions branchImplpermissions1 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions2 = new OASBranchImplpermissions();

        System.assertEquals(false, branchImplpermissions1.equals('foo'));
        System.assertEquals(false, branchImplpermissions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBranchImplpermissions branchImplpermissions1 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions2 = new OASBranchImplpermissions();
        OASBranchImplpermissions branchImplpermissions3;

        System.assertEquals(false, branchImplpermissions1.equals(branchImplpermissions3));
        System.assertEquals(false, branchImplpermissions2.equals(branchImplpermissions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBranchImplpermissions branchImplpermissions1 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions2 = new OASBranchImplpermissions();

        System.assertEquals(branchImplpermissions1.hashCode(), branchImplpermissions1.hashCode());
        System.assertEquals(branchImplpermissions2.hashCode(), branchImplpermissions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBranchImplpermissions branchImplpermissions1 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions2 = OASBranchImplpermissions.getExample();
        OASBranchImplpermissions branchImplpermissions3 = new OASBranchImplpermissions();
        OASBranchImplpermissions branchImplpermissions4 = new OASBranchImplpermissions();

        System.assert(branchImplpermissions1.equals(branchImplpermissions2));
        System.assert(branchImplpermissions3.equals(branchImplpermissions4));
        System.assertEquals(branchImplpermissions1.hashCode(), branchImplpermissions2.hashCode());
        System.assertEquals(branchImplpermissions3.hashCode(), branchImplpermissions4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBranchImplpermissions branchImplpermissions = new OASBranchImplpermissions();
        Map<String, String> propertyMappings = branchImplpermissions.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
