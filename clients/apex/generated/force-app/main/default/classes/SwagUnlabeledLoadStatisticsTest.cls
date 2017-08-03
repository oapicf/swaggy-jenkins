@isTest
private class SwagUnlabeledLoadStatisticsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics1 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics2 = unlabeledLoadStatistics1;
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics3 = new SwagUnlabeledLoadStatistics();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics4 = unlabeledLoadStatistics3;

        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics2));
        System.assert(unlabeledLoadStatistics2.equals(unlabeledLoadStatistics1));
        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics1));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics4));
        System.assert(unlabeledLoadStatistics4.equals(unlabeledLoadStatistics3));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics1 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics2 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics3 = new SwagUnlabeledLoadStatistics();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics4 = new SwagUnlabeledLoadStatistics();

        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics2));
        System.assert(unlabeledLoadStatistics2.equals(unlabeledLoadStatistics1));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics4));
        System.assert(unlabeledLoadStatistics4.equals(unlabeledLoadStatistics3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics1 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics2 = new SwagUnlabeledLoadStatistics();

        System.assertEquals(false, unlabeledLoadStatistics1.equals(unlabeledLoadStatistics2));
        System.assertEquals(false, unlabeledLoadStatistics2.equals(unlabeledLoadStatistics1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics1 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics2 = new SwagUnlabeledLoadStatistics();

        System.assertEquals(false, unlabeledLoadStatistics1.equals('foo'));
        System.assertEquals(false, unlabeledLoadStatistics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics1 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics2 = new SwagUnlabeledLoadStatistics();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics3;

        System.assertEquals(false, unlabeledLoadStatistics1.equals(unlabeledLoadStatistics3));
        System.assertEquals(false, unlabeledLoadStatistics2.equals(unlabeledLoadStatistics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics1 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics2 = new SwagUnlabeledLoadStatistics();

        System.assertEquals(unlabeledLoadStatistics1.hashCode(), unlabeledLoadStatistics1.hashCode());
        System.assertEquals(unlabeledLoadStatistics2.hashCode(), unlabeledLoadStatistics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics1 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics2 = SwagUnlabeledLoadStatistics.getExample();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics3 = new SwagUnlabeledLoadStatistics();
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics4 = new SwagUnlabeledLoadStatistics();

        System.assert(unlabeledLoadStatistics1.equals(unlabeledLoadStatistics2));
        System.assert(unlabeledLoadStatistics3.equals(unlabeledLoadStatistics4));
        System.assertEquals(unlabeledLoadStatistics1.hashCode(), unlabeledLoadStatistics2.hashCode());
        System.assertEquals(unlabeledLoadStatistics3.hashCode(), unlabeledLoadStatistics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagUnlabeledLoadStatistics unlabeledLoadStatistics = new SwagUnlabeledLoadStatistics();
        Map<String, String> propertyMappings = unlabeledLoadStatistics.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
