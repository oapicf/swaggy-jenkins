@isTest
private class SwagGithubRepositorypermissionsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubRepositorypermissions githubRepositorypermissions1 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions2 = githubRepositorypermissions1;
        SwagGithubRepositorypermissions githubRepositorypermissions3 = new SwagGithubRepositorypermissions();
        SwagGithubRepositorypermissions githubRepositorypermissions4 = githubRepositorypermissions3;

        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions2));
        System.assert(githubRepositorypermissions2.equals(githubRepositorypermissions1));
        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions1));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions4));
        System.assert(githubRepositorypermissions4.equals(githubRepositorypermissions3));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubRepositorypermissions githubRepositorypermissions1 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions2 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions3 = new SwagGithubRepositorypermissions();
        SwagGithubRepositorypermissions githubRepositorypermissions4 = new SwagGithubRepositorypermissions();

        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions2));
        System.assert(githubRepositorypermissions2.equals(githubRepositorypermissions1));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions4));
        System.assert(githubRepositorypermissions4.equals(githubRepositorypermissions3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubRepositorypermissions githubRepositorypermissions1 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions2 = new SwagGithubRepositorypermissions();

        System.assertEquals(false, githubRepositorypermissions1.equals(githubRepositorypermissions2));
        System.assertEquals(false, githubRepositorypermissions2.equals(githubRepositorypermissions1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubRepositorypermissions githubRepositorypermissions1 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions2 = new SwagGithubRepositorypermissions();

        System.assertEquals(false, githubRepositorypermissions1.equals('foo'));
        System.assertEquals(false, githubRepositorypermissions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubRepositorypermissions githubRepositorypermissions1 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions2 = new SwagGithubRepositorypermissions();
        SwagGithubRepositorypermissions githubRepositorypermissions3;

        System.assertEquals(false, githubRepositorypermissions1.equals(githubRepositorypermissions3));
        System.assertEquals(false, githubRepositorypermissions2.equals(githubRepositorypermissions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubRepositorypermissions githubRepositorypermissions1 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions2 = new SwagGithubRepositorypermissions();

        System.assertEquals(githubRepositorypermissions1.hashCode(), githubRepositorypermissions1.hashCode());
        System.assertEquals(githubRepositorypermissions2.hashCode(), githubRepositorypermissions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubRepositorypermissions githubRepositorypermissions1 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions2 = SwagGithubRepositorypermissions.getExample();
        SwagGithubRepositorypermissions githubRepositorypermissions3 = new SwagGithubRepositorypermissions();
        SwagGithubRepositorypermissions githubRepositorypermissions4 = new SwagGithubRepositorypermissions();

        System.assert(githubRepositorypermissions1.equals(githubRepositorypermissions2));
        System.assert(githubRepositorypermissions3.equals(githubRepositorypermissions4));
        System.assertEquals(githubRepositorypermissions1.hashCode(), githubRepositorypermissions2.hashCode());
        System.assertEquals(githubRepositorypermissions3.hashCode(), githubRepositorypermissions4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubRepositorypermissions githubRepositorypermissions = new SwagGithubRepositorypermissions();
        Map<String, String> propertyMappings = githubRepositorypermissions.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
