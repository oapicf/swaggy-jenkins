@isTest
private class SwagGithubRepositoriesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubRepositories githubRepositories1 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories2 = githubRepositories1;
        SwagGithubRepositories githubRepositories3 = new SwagGithubRepositories();
        SwagGithubRepositories githubRepositories4 = githubRepositories3;

        System.assert(githubRepositories1.equals(githubRepositories2));
        System.assert(githubRepositories2.equals(githubRepositories1));
        System.assert(githubRepositories1.equals(githubRepositories1));
        System.assert(githubRepositories3.equals(githubRepositories4));
        System.assert(githubRepositories4.equals(githubRepositories3));
        System.assert(githubRepositories3.equals(githubRepositories3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubRepositories githubRepositories1 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories2 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories3 = new SwagGithubRepositories();
        SwagGithubRepositories githubRepositories4 = new SwagGithubRepositories();

        System.assert(githubRepositories1.equals(githubRepositories2));
        System.assert(githubRepositories2.equals(githubRepositories1));
        System.assert(githubRepositories3.equals(githubRepositories4));
        System.assert(githubRepositories4.equals(githubRepositories3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubRepositories githubRepositories1 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories2 = new SwagGithubRepositories();

        System.assertEquals(false, githubRepositories1.equals(githubRepositories2));
        System.assertEquals(false, githubRepositories2.equals(githubRepositories1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubRepositories githubRepositories1 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories2 = new SwagGithubRepositories();

        System.assertEquals(false, githubRepositories1.equals('foo'));
        System.assertEquals(false, githubRepositories2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubRepositories githubRepositories1 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories2 = new SwagGithubRepositories();
        SwagGithubRepositories githubRepositories3;

        System.assertEquals(false, githubRepositories1.equals(githubRepositories3));
        System.assertEquals(false, githubRepositories2.equals(githubRepositories3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubRepositories githubRepositories1 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories2 = new SwagGithubRepositories();

        System.assertEquals(githubRepositories1.hashCode(), githubRepositories1.hashCode());
        System.assertEquals(githubRepositories2.hashCode(), githubRepositories2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubRepositories githubRepositories1 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories2 = SwagGithubRepositories.getExample();
        SwagGithubRepositories githubRepositories3 = new SwagGithubRepositories();
        SwagGithubRepositories githubRepositories4 = new SwagGithubRepositories();

        System.assert(githubRepositories1.equals(githubRepositories2));
        System.assert(githubRepositories3.equals(githubRepositories4));
        System.assertEquals(githubRepositories1.hashCode(), githubRepositories2.hashCode());
        System.assertEquals(githubRepositories3.hashCode(), githubRepositories4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubRepositories githubRepositories = new SwagGithubRepositories();
        Map<String, String> propertyMappings = githubRepositories.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagGithubRepositories githubRepositories = new SwagGithubRepositories();
        System.assertEquals(new List<SwagGithubRepository>(), githubRepositories.items);
        System.assertEquals(null, githubRepositories.propertyClass);
        System.assertEquals(null, githubRepositories.links);
        System.assertEquals(null, githubRepositories.lastPage);
        System.assertEquals(null, githubRepositories.nextPage);
        System.assertEquals(null, githubRepositories.pageSize);
    }
}
