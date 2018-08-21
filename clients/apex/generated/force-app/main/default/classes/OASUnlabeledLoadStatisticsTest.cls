@isTest
private class OASUnlabeledLoadStatisticsTest {
    @isTest
    private static void equalsSameInstance() {
        OASUnlabeledLoadStatistics unlabeledLoadStatistics1 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics2 = unlabeledLoadStatistics1;
        OASUnlabeledLoadStatistics unlabeledLoadStatistics3 = new OASUnlabeledLoadStatistics();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics4 = unlabeledLoadStatistics3;

        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics2));
        System.assert(unlabeledLoadStatistics2.equals(unlabeledLoadStatistics1));
        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics1));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics4));
        System.assert(unlabeledLoadStatistics4.equals(unlabeledLoadStatistics3));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUnlabeledLoadStatistics unlabeledLoadStatistics1 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics2 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics3 = new OASUnlabeledLoadStatistics();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics4 = new OASUnlabeledLoadStatistics();

        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics2));
        System.assert(unlabeledLoadStatistics2.equals(unlabeledLoadStatistics1));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics4));
        System.assert(unlabeledLoadStatistics4.equals(unlabeledLoadStatistics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUnlabeledLoadStatistics unlabeledLoadStatistics1 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics2 = new OASUnlabeledLoadStatistics();

        System.assertEquals(false, unlabeledLoadStatistics1.equals('foo'));
        System.assertEquals(false, unlabeledLoadStatistics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUnlabeledLoadStatistics unlabeledLoadStatistics1 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics2 = new OASUnlabeledLoadStatistics();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics3;

        System.assertEquals(false, unlabeledLoadStatistics1.equals(unlabeledLoadStatistics3));
        System.assertEquals(false, unlabeledLoadStatistics2.equals(unlabeledLoadStatistics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUnlabeledLoadStatistics unlabeledLoadStatistics1 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics2 = new OASUnlabeledLoadStatistics();

        System.assertEquals(unlabeledLoadStatistics1.hashCode(), unlabeledLoadStatistics1.hashCode());
        System.assertEquals(unlabeledLoadStatistics2.hashCode(), unlabeledLoadStatistics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUnlabeledLoadStatistics unlabeledLoadStatistics1 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics2 = OASUnlabeledLoadStatistics.getExample();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics3 = new OASUnlabeledLoadStatistics();
        OASUnlabeledLoadStatistics unlabeledLoadStatistics4 = new OASUnlabeledLoadStatistics();

        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics2));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics4));
        System.assertEquals(unlabeledLoadStatistics1.hashCode(), unlabeledLoadStatistics2.hashCode());
        System.assertEquals(unlabeledLoadStatistics3.hashCode(), unlabeledLoadStatistics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUnlabeledLoadStatistics unlabeledLoadStatistics = new OASUnlabeledLoadStatistics();
        Map<String, String> propertyMappings = unlabeledLoadStatistics.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
