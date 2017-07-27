@isTest
private class SwagJenkinsmodelUnlabeledLoadStatistTest {
    @isTest
    private static void equalsSameInstance() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics1 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics2 = jenkinsmodelUnlabeledLoadStatistics1;
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics3 = new SwagJenkinsmodelUnlabeledLoadStatist();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics4 = jenkinsmodelUnlabeledLoadStatistics3;

        System.assert(jenkinsmodelUnlabeledLoadStatistics1.equals(jenkinsmodelUnlabeledLoadStatistics2));
        System.assert(jenkinsmodelUnlabeledLoadStatistics2.equals(jenkinsmodelUnlabeledLoadStatistics1));
        System.assert(jenkinsmodelUnlabeledLoadStatistics1.equals(jenkinsmodelUnlabeledLoadStatistics1));
        System.assert(jenkinsmodelUnlabeledLoadStatistics3.equals(jenkinsmodelUnlabeledLoadStatistics4));
        System.assert(jenkinsmodelUnlabeledLoadStatistics4.equals(jenkinsmodelUnlabeledLoadStatistics3));
        System.assert(jenkinsmodelUnlabeledLoadStatistics3.equals(jenkinsmodelUnlabeledLoadStatistics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics1 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics2 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics3 = new SwagJenkinsmodelUnlabeledLoadStatist();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics4 = new SwagJenkinsmodelUnlabeledLoadStatist();

        System.assert(jenkinsmodelUnlabeledLoadStatistics1.equals(jenkinsmodelUnlabeledLoadStatistics2));
        System.assert(jenkinsmodelUnlabeledLoadStatistics2.equals(jenkinsmodelUnlabeledLoadStatistics1));
        System.assert(jenkinsmodelUnlabeledLoadStatistics3.equals(jenkinsmodelUnlabeledLoadStatistics4));
        System.assert(jenkinsmodelUnlabeledLoadStatistics4.equals(jenkinsmodelUnlabeledLoadStatistics3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics1 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics2 = new SwagJenkinsmodelUnlabeledLoadStatist();

        System.assertEquals(false, jenkinsmodelUnlabeledLoadStatistics1.equals(jenkinsmodelUnlabeledLoadStatistics2));
        System.assertEquals(false, jenkinsmodelUnlabeledLoadStatistics2.equals(jenkinsmodelUnlabeledLoadStatistics1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics1 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics2 = new SwagJenkinsmodelUnlabeledLoadStatist();

        System.assertEquals(false, jenkinsmodelUnlabeledLoadStatistics1.equals('foo'));
        System.assertEquals(false, jenkinsmodelUnlabeledLoadStatistics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics1 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics2 = new SwagJenkinsmodelUnlabeledLoadStatist();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics3;

        System.assertEquals(false, jenkinsmodelUnlabeledLoadStatistics1.equals(jenkinsmodelUnlabeledLoadStatistics3));
        System.assertEquals(false, jenkinsmodelUnlabeledLoadStatistics2.equals(jenkinsmodelUnlabeledLoadStatistics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics1 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics2 = new SwagJenkinsmodelUnlabeledLoadStatist();

        System.assertEquals(jenkinsmodelUnlabeledLoadStatistics1.hashCode(), jenkinsmodelUnlabeledLoadStatistics1.hashCode());
        System.assertEquals(jenkinsmodelUnlabeledLoadStatistics2.hashCode(), jenkinsmodelUnlabeledLoadStatistics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics1 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics2 = SwagJenkinsmodelUnlabeledLoadStatist.getExample();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics3 = new SwagJenkinsmodelUnlabeledLoadStatist();
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics4 = new SwagJenkinsmodelUnlabeledLoadStatist();

        System.assert(jenkinsmodelUnlabeledLoadStatistics1.equals(jenkinsmodelUnlabeledLoadStatistics2));
        System.assert(jenkinsmodelUnlabeledLoadStatistics3.equals(jenkinsmodelUnlabeledLoadStatistics4));
        System.assertEquals(jenkinsmodelUnlabeledLoadStatistics1.hashCode(), jenkinsmodelUnlabeledLoadStatistics2.hashCode());
        System.assertEquals(jenkinsmodelUnlabeledLoadStatistics3.hashCode(), jenkinsmodelUnlabeledLoadStatistics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagJenkinsmodelUnlabeledLoadStatist jenkinsmodelUnlabeledLoadStatistics = new SwagJenkinsmodelUnlabeledLoadStatist();
        Map<String, String> propertyMappings = jenkinsmodelUnlabeledLoadStatistics.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
