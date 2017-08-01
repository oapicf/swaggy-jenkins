@isTest
private class SwagHudsonmodelHudsonMasterComputereTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors1 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors2 = hudsonmodelHudsonMasterComputerexecutors1;
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors3 = new SwagHudsonmodelHudsonMasterComputere();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors4 = hudsonmodelHudsonMasterComputerexecutors3;

        System.assert(hudsonmodelHudsonMasterComputerexecutors1.equals(hudsonmodelHudsonMasterComputerexecutors2));
        System.assert(hudsonmodelHudsonMasterComputerexecutors2.equals(hudsonmodelHudsonMasterComputerexecutors1));
        System.assert(hudsonmodelHudsonMasterComputerexecutors1.equals(hudsonmodelHudsonMasterComputerexecutors1));
        System.assert(hudsonmodelHudsonMasterComputerexecutors3.equals(hudsonmodelHudsonMasterComputerexecutors4));
        System.assert(hudsonmodelHudsonMasterComputerexecutors4.equals(hudsonmodelHudsonMasterComputerexecutors3));
        System.assert(hudsonmodelHudsonMasterComputerexecutors3.equals(hudsonmodelHudsonMasterComputerexecutors3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors1 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors2 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors3 = new SwagHudsonmodelHudsonMasterComputere();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors4 = new SwagHudsonmodelHudsonMasterComputere();

        System.assert(hudsonmodelHudsonMasterComputerexecutors1.equals(hudsonmodelHudsonMasterComputerexecutors2));
        System.assert(hudsonmodelHudsonMasterComputerexecutors2.equals(hudsonmodelHudsonMasterComputerexecutors1));
        System.assert(hudsonmodelHudsonMasterComputerexecutors3.equals(hudsonmodelHudsonMasterComputerexecutors4));
        System.assert(hudsonmodelHudsonMasterComputerexecutors4.equals(hudsonmodelHudsonMasterComputerexecutors3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors1 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors2 = new SwagHudsonmodelHudsonMasterComputere();

        System.assertEquals(false, hudsonmodelHudsonMasterComputerexecutors1.equals(hudsonmodelHudsonMasterComputerexecutors2));
        System.assertEquals(false, hudsonmodelHudsonMasterComputerexecutors2.equals(hudsonmodelHudsonMasterComputerexecutors1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors1 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors2 = new SwagHudsonmodelHudsonMasterComputere();

        System.assertEquals(false, hudsonmodelHudsonMasterComputerexecutors1.equals('foo'));
        System.assertEquals(false, hudsonmodelHudsonMasterComputerexecutors2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors1 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors2 = new SwagHudsonmodelHudsonMasterComputere();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors3;

        System.assertEquals(false, hudsonmodelHudsonMasterComputerexecutors1.equals(hudsonmodelHudsonMasterComputerexecutors3));
        System.assertEquals(false, hudsonmodelHudsonMasterComputerexecutors2.equals(hudsonmodelHudsonMasterComputerexecutors3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors1 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors2 = new SwagHudsonmodelHudsonMasterComputere();

        System.assertEquals(hudsonmodelHudsonMasterComputerexecutors1.hashCode(), hudsonmodelHudsonMasterComputerexecutors1.hashCode());
        System.assertEquals(hudsonmodelHudsonMasterComputerexecutors2.hashCode(), hudsonmodelHudsonMasterComputerexecutors2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors1 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors2 = SwagHudsonmodelHudsonMasterComputere.getExample();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors3 = new SwagHudsonmodelHudsonMasterComputere();
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors4 = new SwagHudsonmodelHudsonMasterComputere();

        System.assert(hudsonmodelHudsonMasterComputerexecutors1.equals(hudsonmodelHudsonMasterComputerexecutors2));
        System.assert(hudsonmodelHudsonMasterComputerexecutors3.equals(hudsonmodelHudsonMasterComputerexecutors4));
        System.assertEquals(hudsonmodelHudsonMasterComputerexecutors1.hashCode(), hudsonmodelHudsonMasterComputerexecutors2.hashCode());
        System.assertEquals(hudsonmodelHudsonMasterComputerexecutors3.hashCode(), hudsonmodelHudsonMasterComputerexecutors4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelHudsonMasterComputere hudsonmodelHudsonMasterComputerexecutors = new SwagHudsonmodelHudsonMasterComputere();
        Map<String, String> propertyMappings = hudsonmodelHudsonMasterComputerexecutors.getPropertyMappings();
        System.assertEquals('r_number', propertyMappings.get('number'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
