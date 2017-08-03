@isTest
private class SwagHudsonMasterComputerexecutorsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = hudsonMasterComputerexecutors1;
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors3 = new SwagHudsonMasterComputerexecutors();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors4 = hudsonMasterComputerexecutors3;

        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors2));
        System.assert(hudsonMasterComputerexecutors2.equals(hudsonMasterComputerexecutors1));
        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors1));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors4));
        System.assert(hudsonMasterComputerexecutors4.equals(hudsonMasterComputerexecutors3));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors3 = new SwagHudsonMasterComputerexecutors();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors4 = new SwagHudsonMasterComputerexecutors();

        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors2));
        System.assert(hudsonMasterComputerexecutors2.equals(hudsonMasterComputerexecutors1));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors4));
        System.assert(hudsonMasterComputerexecutors4.equals(hudsonMasterComputerexecutors3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = new SwagHudsonMasterComputerexecutors();

        System.assertEquals(false, hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors2));
        System.assertEquals(false, hudsonMasterComputerexecutors2.equals(hudsonMasterComputerexecutors1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = new SwagHudsonMasterComputerexecutors();

        System.assertEquals(false, hudsonMasterComputerexecutors1.equals('foo'));
        System.assertEquals(false, hudsonMasterComputerexecutors2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = new SwagHudsonMasterComputerexecutors();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors3;

        System.assertEquals(false, hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors3));
        System.assertEquals(false, hudsonMasterComputerexecutors2.equals(hudsonMasterComputerexecutors3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = new SwagHudsonMasterComputerexecutors();

        System.assertEquals(hudsonMasterComputerexecutors1.hashCode(), hudsonMasterComputerexecutors1.hashCode());
        System.assertEquals(hudsonMasterComputerexecutors2.hashCode(), hudsonMasterComputerexecutors2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = SwagHudsonMasterComputerexecutors.getExample();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors3 = new SwagHudsonMasterComputerexecutors();
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors4 = new SwagHudsonMasterComputerexecutors();

        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors2));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors4));
        System.assertEquals(hudsonMasterComputerexecutors1.hashCode(), hudsonMasterComputerexecutors2.hashCode());
        System.assertEquals(hudsonMasterComputerexecutors3.hashCode(), hudsonMasterComputerexecutors4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonMasterComputerexecutors hudsonMasterComputerexecutors = new SwagHudsonMasterComputerexecutors();
        Map<String, String> propertyMappings = hudsonMasterComputerexecutors.getPropertyMappings();
        System.assertEquals('r_number', propertyMappings.get('number'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
