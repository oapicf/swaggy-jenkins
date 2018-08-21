@isTest
private class OASGithubRepositorypermissionsTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubRepositorypermissions githubRepositorypermissions1 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions2 = githubRepositorypermissions1;
        OASGithubRepositorypermissions githubRepositorypermissions3 = new OASGithubRepositorypermissions();
        OASGithubRepositorypermissions githubRepositorypermissions4 = githubRepositorypermissions3;

        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions2));
        System.assert(githubRepositorypermissions2.equals(githubRepositorypermissions1));
        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions1));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions4));
        System.assert(githubRepositorypermissions4.equals(githubRepositorypermissions3));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubRepositorypermissions githubRepositorypermissions1 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions2 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions3 = new OASGithubRepositorypermissions();
        OASGithubRepositorypermissions githubRepositorypermissions4 = new OASGithubRepositorypermissions();

        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions2));
        System.assert(githubRepositorypermissions2.equals(githubRepositorypermissions1));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions4));
        System.assert(githubRepositorypermissions4.equals(githubRepositorypermissions3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubRepositorypermissions githubRepositorypermissions1 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions2 = new OASGithubRepositorypermissions();

        System.assertEquals(false, githubRepositorypermissions1.equals('foo'));
        System.assertEquals(false, githubRepositorypermissions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubRepositorypermissions githubRepositorypermissions1 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions2 = new OASGithubRepositorypermissions();
        OASGithubRepositorypermissions githubRepositorypermissions3;

        System.assertEquals(false, githubRepositorypermissions1.equals(githubRepositorypermissions3));
        System.assertEquals(false, githubRepositorypermissions2.equals(githubRepositorypermissions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubRepositorypermissions githubRepositorypermissions1 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions2 = new OASGithubRepositorypermissions();

        System.assertEquals(githubRepositorypermissions1.hashCode(), githubRepositorypermissions1.hashCode());
        System.assertEquals(githubRepositorypermissions2.hashCode(), githubRepositorypermissions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubRepositorypermissions githubRepositorypermissions1 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions2 = OASGithubRepositorypermissions.getExample();
        OASGithubRepositorypermissions githubRepositorypermissions3 = new OASGithubRepositorypermissions();
        OASGithubRepositorypermissions githubRepositorypermissions4 = new OASGithubRepositorypermissions();

        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions2));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions4));
        System.assertEquals(githubRepositorypermissions1.hashCode(), githubRepositorypermissions2.hashCode());
        System.assertEquals(githubRepositorypermissions3.hashCode(), githubRepositorypermissions4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubRepositorypermissions githubRepositorypermissions = new OASGithubRepositorypermissions();
        Map<String, String> propertyMappings = githubRepositorypermissions.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
