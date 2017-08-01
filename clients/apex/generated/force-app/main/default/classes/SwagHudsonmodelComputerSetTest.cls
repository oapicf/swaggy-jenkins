@isTest
private class SwagHudsonmodelComputerSetTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet1 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet2 = hudsonmodelComputerSet1;
        SwagHudsonmodelComputerSet hudsonmodelComputerSet3 = new SwagHudsonmodelComputerSet();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet4 = hudsonmodelComputerSet3;

        System.assert(hudsonmodelComputerSet1.equals(hudsonmodelComputerSet2));
        System.assert(hudsonmodelComputerSet2.equals(hudsonmodelComputerSet1));
        System.assert(hudsonmodelComputerSet1.equals(hudsonmodelComputerSet1));
        System.assert(hudsonmodelComputerSet3.equals(hudsonmodelComputerSet4));
        System.assert(hudsonmodelComputerSet4.equals(hudsonmodelComputerSet3));
        System.assert(hudsonmodelComputerSet3.equals(hudsonmodelComputerSet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet1 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet2 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet3 = new SwagHudsonmodelComputerSet();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet4 = new SwagHudsonmodelComputerSet();

        System.assert(hudsonmodelComputerSet1.equals(hudsonmodelComputerSet2));
        System.assert(hudsonmodelComputerSet2.equals(hudsonmodelComputerSet1));
        System.assert(hudsonmodelComputerSet3.equals(hudsonmodelComputerSet4));
        System.assert(hudsonmodelComputerSet4.equals(hudsonmodelComputerSet3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet1 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet2 = new SwagHudsonmodelComputerSet();

        System.assertEquals(false, hudsonmodelComputerSet1.equals(hudsonmodelComputerSet2));
        System.assertEquals(false, hudsonmodelComputerSet2.equals(hudsonmodelComputerSet1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet1 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet2 = new SwagHudsonmodelComputerSet();

        System.assertEquals(false, hudsonmodelComputerSet1.equals('foo'));
        System.assertEquals(false, hudsonmodelComputerSet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet1 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet2 = new SwagHudsonmodelComputerSet();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet3;

        System.assertEquals(false, hudsonmodelComputerSet1.equals(hudsonmodelComputerSet3));
        System.assertEquals(false, hudsonmodelComputerSet2.equals(hudsonmodelComputerSet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet1 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet2 = new SwagHudsonmodelComputerSet();

        System.assertEquals(hudsonmodelComputerSet1.hashCode(), hudsonmodelComputerSet1.hashCode());
        System.assertEquals(hudsonmodelComputerSet2.hashCode(), hudsonmodelComputerSet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet1 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet2 = SwagHudsonmodelComputerSet.getExample();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet3 = new SwagHudsonmodelComputerSet();
        SwagHudsonmodelComputerSet hudsonmodelComputerSet4 = new SwagHudsonmodelComputerSet();

        System.assert(hudsonmodelComputerSet1.equals(hudsonmodelComputerSet2));
        System.assert(hudsonmodelComputerSet3.equals(hudsonmodelComputerSet4));
        System.assertEquals(hudsonmodelComputerSet1.hashCode(), hudsonmodelComputerSet2.hashCode());
        System.assertEquals(hudsonmodelComputerSet3.hashCode(), hudsonmodelComputerSet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet = new SwagHudsonmodelComputerSet();
        Map<String, String> propertyMappings = hudsonmodelComputerSet.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelComputerSet hudsonmodelComputerSet = new SwagHudsonmodelComputerSet();
        System.assertEquals(new List<SwagHudsonmodelHudsonMasterComputer>(), hudsonmodelComputerSet.computer);
        System.assertEquals(null, hudsonmodelComputerSet.propertyClass);
        System.assertEquals(null, hudsonmodelComputerSet.busyExecutors);
        System.assertEquals(null, hudsonmodelComputerSet.displayName);
        System.assertEquals(null, hudsonmodelComputerSet.totalExecutors);
    }
}
