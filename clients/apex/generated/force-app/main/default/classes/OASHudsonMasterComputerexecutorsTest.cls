@isTest
private class OASHudsonMasterComputerexecutorsTest {
    @isTest
    private static void equalsSameInstance() {
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = hudsonMasterComputerexecutors1;
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors3 = new OASHudsonMasterComputerexecutors();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors4 = hudsonMasterComputerexecutors3;

        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors2));
        System.assert(hudsonMasterComputerexecutors2.equals(hudsonMasterComputerexecutors1));
        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors1));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors4));
        System.assert(hudsonMasterComputerexecutors4.equals(hudsonMasterComputerexecutors3));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors3 = new OASHudsonMasterComputerexecutors();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors4 = new OASHudsonMasterComputerexecutors();

        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors2));
        System.assert(hudsonMasterComputerexecutors2.equals(hudsonMasterComputerexecutors1));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors4));
        System.assert(hudsonMasterComputerexecutors4.equals(hudsonMasterComputerexecutors3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = new OASHudsonMasterComputerexecutors();

        System.assertEquals(false, hudsonMasterComputerexecutors1.equals('foo'));
        System.assertEquals(false, hudsonMasterComputerexecutors2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = new OASHudsonMasterComputerexecutors();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors3;

        System.assertEquals(false, hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors3));
        System.assertEquals(false, hudsonMasterComputerexecutors2.equals(hudsonMasterComputerexecutors3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = new OASHudsonMasterComputerexecutors();

        System.assertEquals(hudsonMasterComputerexecutors1.hashCode(), hudsonMasterComputerexecutors1.hashCode());
        System.assertEquals(hudsonMasterComputerexecutors2.hashCode(), hudsonMasterComputerexecutors2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors1 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors2 = OASHudsonMasterComputerexecutors.getExample();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors3 = new OASHudsonMasterComputerexecutors();
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors4 = new OASHudsonMasterComputerexecutors();

        System.assert(hudsonMasterComputerexecutors1.equals(hudsonMasterComputerexecutors2));
        System.assert(hudsonMasterComputerexecutors3.equals(hudsonMasterComputerexecutors4));
        System.assertEquals(hudsonMasterComputerexecutors1.hashCode(), hudsonMasterComputerexecutors2.hashCode());
        System.assertEquals(hudsonMasterComputerexecutors3.hashCode(), hudsonMasterComputerexecutors4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASHudsonMasterComputerexecutors hudsonMasterComputerexecutors = new OASHudsonMasterComputerexecutors();
        Map<String, String> x-property-mappings = hudsonMasterComputerexecutors.getx-property-mappings();
        System.assertEquals('r_number', x-property-mappings.get('number'));
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
