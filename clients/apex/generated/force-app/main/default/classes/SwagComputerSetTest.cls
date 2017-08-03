@isTest
private class SwagComputerSetTest {
    @isTest
    private static void equalsSameInstance() {
        SwagComputerSet computerSet1 = SwagComputerSet.getExample();
        SwagComputerSet computerSet2 = computerSet1;
        SwagComputerSet computerSet3 = new SwagComputerSet();
        SwagComputerSet computerSet4 = computerSet3;

        System.assert(computerSet1.equals(computerSet2));
        System.assert(computerSet2.equals(computerSet1));
        System.assert(computerSet1.equals(computerSet1));
        System.assert(computerSet3.equals(computerSet4));
        System.assert(computerSet4.equals(computerSet3));
        System.assert(computerSet3.equals(computerSet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagComputerSet computerSet1 = SwagComputerSet.getExample();
        SwagComputerSet computerSet2 = SwagComputerSet.getExample();
        SwagComputerSet computerSet3 = new SwagComputerSet();
        SwagComputerSet computerSet4 = new SwagComputerSet();

        System.assert(computerSet1.equals(computerSet2));
        System.assert(computerSet2.equals(computerSet1));
        System.assert(computerSet3.equals(computerSet4));
        System.assert(computerSet4.equals(computerSet3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagComputerSet computerSet1 = SwagComputerSet.getExample();
        SwagComputerSet computerSet2 = new SwagComputerSet();

        System.assertEquals(false, computerSet1.equals(computerSet2));
        System.assertEquals(false, computerSet2.equals(computerSet1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagComputerSet computerSet1 = SwagComputerSet.getExample();
        SwagComputerSet computerSet2 = new SwagComputerSet();

        System.assertEquals(false, computerSet1.equals('foo'));
        System.assertEquals(false, computerSet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagComputerSet computerSet1 = SwagComputerSet.getExample();
        SwagComputerSet computerSet2 = new SwagComputerSet();
        SwagComputerSet computerSet3;

        System.assertEquals(false, computerSet1.equals(computerSet3));
        System.assertEquals(false, computerSet2.equals(computerSet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagComputerSet computerSet1 = SwagComputerSet.getExample();
        SwagComputerSet computerSet2 = new SwagComputerSet();

        System.assertEquals(computerSet1.hashCode(), computerSet1.hashCode());
        System.assertEquals(computerSet2.hashCode(), computerSet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagComputerSet computerSet1 = SwagComputerSet.getExample();
        SwagComputerSet computerSet2 = SwagComputerSet.getExample();
        SwagComputerSet computerSet3 = new SwagComputerSet();
        SwagComputerSet computerSet4 = new SwagComputerSet();

        System.assert(computerSet1.equals(computerSet2));
        System.assert(computerSet3.equals(computerSet4));
        System.assertEquals(computerSet1.hashCode(), computerSet2.hashCode());
        System.assertEquals(computerSet3.hashCode(), computerSet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagComputerSet computerSet = new SwagComputerSet();
        Map<String, String> propertyMappings = computerSet.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagComputerSet computerSet = new SwagComputerSet();
        System.assertEquals(new List<SwagHudsonMasterComputer>(), computerSet.computer);
        System.assertEquals(null, computerSet.propertyClass);
        System.assertEquals(null, computerSet.busyExecutors);
        System.assertEquals(null, computerSet.displayName);
        System.assertEquals(null, computerSet.totalExecutors);
    }
}
