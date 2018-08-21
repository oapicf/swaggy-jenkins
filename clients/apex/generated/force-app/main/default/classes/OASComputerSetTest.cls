@isTest
private class OASComputerSetTest {
    @isTest
    private static void equalsSameInstance() {
        OASComputerSet computerSet1 = OASComputerSet.getExample();
        OASComputerSet computerSet2 = computerSet1;
        OASComputerSet computerSet3 = new OASComputerSet();
        OASComputerSet computerSet4 = computerSet3;

        System.assert(computerSet1.equals(computerSet2));
        System.assert(computerSet2.equals(computerSet1));
        System.assert(computerSet1.equals(computerSet1));
        System.assert(computerSet3.equals(computerSet4));
        System.assert(computerSet4.equals(computerSet3));
        System.assert(computerSet3.equals(computerSet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComputerSet computerSet1 = OASComputerSet.getExample();
        OASComputerSet computerSet2 = OASComputerSet.getExample();
        OASComputerSet computerSet3 = new OASComputerSet();
        OASComputerSet computerSet4 = new OASComputerSet();

        System.assert(computerSet1.equals(computerSet2));
        System.assert(computerSet2.equals(computerSet1));
        System.assert(computerSet3.equals(computerSet4));
        System.assert(computerSet4.equals(computerSet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComputerSet computerSet1 = OASComputerSet.getExample();
        OASComputerSet computerSet2 = new OASComputerSet();

        System.assertEquals(false, computerSet1.equals('foo'));
        System.assertEquals(false, computerSet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComputerSet computerSet1 = OASComputerSet.getExample();
        OASComputerSet computerSet2 = new OASComputerSet();
        OASComputerSet computerSet3;

        System.assertEquals(false, computerSet1.equals(computerSet3));
        System.assertEquals(false, computerSet2.equals(computerSet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComputerSet computerSet1 = OASComputerSet.getExample();
        OASComputerSet computerSet2 = new OASComputerSet();

        System.assertEquals(computerSet1.hashCode(), computerSet1.hashCode());
        System.assertEquals(computerSet2.hashCode(), computerSet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComputerSet computerSet1 = OASComputerSet.getExample();
        OASComputerSet computerSet2 = OASComputerSet.getExample();
        OASComputerSet computerSet3 = new OASComputerSet();
        OASComputerSet computerSet4 = new OASComputerSet();

        System.assert(computerSet1.equals(computerSet2));
        System.assert(computerSet3.equals(computerSet4));
        System.assertEquals(computerSet1.hashCode(), computerSet2.hashCode());
        System.assertEquals(computerSet3.hashCode(), computerSet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASComputerSet computerSet = new OASComputerSet();
        Map<String, String> propertyMappings = computerSet.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASComputerSet computerSet = new OASComputerSet();
        System.assertEquals(new List<OASHudsonMasterComputer>(), computerSet.computer);
        System.assertEquals(null, computerSet.propertyClass);
        System.assertEquals(null, computerSet.busyExecutors);
        System.assertEquals(null, computerSet.displayName);
        System.assertEquals(null, computerSet.totalExecutors);
    }
}
