@isTest
private class OASGithubRepositorylinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubRepositorylinks githubRepositorylinks1 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks2 = githubRepositorylinks1;
        OASGithubRepositorylinks githubRepositorylinks3 = new OASGithubRepositorylinks();
        OASGithubRepositorylinks githubRepositorylinks4 = githubRepositorylinks3;

        System.assert(githubRepositorylinks1.equals(githubRepositorylinks2));
        System.assert(githubRepositorylinks2.equals(githubRepositorylinks1));
        System.assert(githubRepositorylinks1.equals(githubRepositorylinks1));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks4));
        System.assert(githubRepositorylinks4.equals(githubRepositorylinks3));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubRepositorylinks githubRepositorylinks1 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks2 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks3 = new OASGithubRepositorylinks();
        OASGithubRepositorylinks githubRepositorylinks4 = new OASGithubRepositorylinks();

        System.assert(githubRepositorylinks1.equals(githubRepositorylinks2));
        System.assert(githubRepositorylinks2.equals(githubRepositorylinks1));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks4));
        System.assert(githubRepositorylinks4.equals(githubRepositorylinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubRepositorylinks githubRepositorylinks1 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks2 = new OASGithubRepositorylinks();

        System.assertEquals(false, githubRepositorylinks1.equals('foo'));
        System.assertEquals(false, githubRepositorylinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubRepositorylinks githubRepositorylinks1 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks2 = new OASGithubRepositorylinks();
        OASGithubRepositorylinks githubRepositorylinks3;

        System.assertEquals(false, githubRepositorylinks1.equals(githubRepositorylinks3));
        System.assertEquals(false, githubRepositorylinks2.equals(githubRepositorylinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubRepositorylinks githubRepositorylinks1 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks2 = new OASGithubRepositorylinks();

        System.assertEquals(githubRepositorylinks1.hashCode(), githubRepositorylinks1.hashCode());
        System.assertEquals(githubRepositorylinks2.hashCode(), githubRepositorylinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubRepositorylinks githubRepositorylinks1 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks2 = OASGithubRepositorylinks.getExample();
        OASGithubRepositorylinks githubRepositorylinks3 = new OASGithubRepositorylinks();
        OASGithubRepositorylinks githubRepositorylinks4 = new OASGithubRepositorylinks();

        System.assert(githubRepositorylinks1.equals(githubRepositorylinks2));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks4));
        System.assertEquals(githubRepositorylinks1.hashCode(), githubRepositorylinks2.hashCode());
        System.assertEquals(githubRepositorylinks3.hashCode(), githubRepositorylinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubRepositorylinks githubRepositorylinks = new OASGithubRepositorylinks();
        Map<String, String> x-property-mappings = githubRepositorylinks.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
