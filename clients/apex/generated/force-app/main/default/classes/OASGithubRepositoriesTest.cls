@isTest
private class OASGithubRepositoriesTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubRepositories githubRepositories1 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories2 = githubRepositories1;
        OASGithubRepositories githubRepositories3 = new OASGithubRepositories();
        OASGithubRepositories githubRepositories4 = githubRepositories3;

        System.assert(githubRepositories1.equals(githubRepositories2));
        System.assert(githubRepositories2.equals(githubRepositories1));
        System.assert(githubRepositories1.equals(githubRepositories1));
        System.assert(githubRepositories3.equals(githubRepositories4));
        System.assert(githubRepositories4.equals(githubRepositories3));
        System.assert(githubRepositories3.equals(githubRepositories3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubRepositories githubRepositories1 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories2 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories3 = new OASGithubRepositories();
        OASGithubRepositories githubRepositories4 = new OASGithubRepositories();

        System.assert(githubRepositories1.equals(githubRepositories2));
        System.assert(githubRepositories2.equals(githubRepositories1));
        System.assert(githubRepositories3.equals(githubRepositories4));
        System.assert(githubRepositories4.equals(githubRepositories3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubRepositories githubRepositories1 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories2 = new OASGithubRepositories();

        System.assertEquals(false, githubRepositories1.equals('foo'));
        System.assertEquals(false, githubRepositories2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubRepositories githubRepositories1 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories2 = new OASGithubRepositories();
        OASGithubRepositories githubRepositories3;

        System.assertEquals(false, githubRepositories1.equals(githubRepositories3));
        System.assertEquals(false, githubRepositories2.equals(githubRepositories3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubRepositories githubRepositories1 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories2 = new OASGithubRepositories();

        System.assertEquals(githubRepositories1.hashCode(), githubRepositories1.hashCode());
        System.assertEquals(githubRepositories2.hashCode(), githubRepositories2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubRepositories githubRepositories1 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories2 = OASGithubRepositories.getExample();
        OASGithubRepositories githubRepositories3 = new OASGithubRepositories();
        OASGithubRepositories githubRepositories4 = new OASGithubRepositories();

        System.assert(githubRepositories1.equals(githubRepositories2));
        System.assert(githubRepositories3.equals(githubRepositories4));
        System.assertEquals(githubRepositories1.hashCode(), githubRepositories2.hashCode());
        System.assertEquals(githubRepositories3.hashCode(), githubRepositories4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubRepositories githubRepositories = new OASGithubRepositories();
        Map<String, String> x-property-mappings = githubRepositories.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGithubRepositories githubRepositories = new OASGithubRepositories();
        System.assertEquals(new List<OASGithubRepository>(), githubRepositories.items);
        System.assertEquals(null, githubRepositories.propertyClass);
        System.assertEquals(null, githubRepositories.links);
        System.assertEquals(null, githubRepositories.lastPage);
        System.assertEquals(null, githubRepositories.nextPage);
        System.assertEquals(null, githubRepositories.pageSize);
    }
}
