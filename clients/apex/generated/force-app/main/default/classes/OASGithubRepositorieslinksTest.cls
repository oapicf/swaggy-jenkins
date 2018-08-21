@isTest
private class OASGithubRepositorieslinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubRepositorieslinks githubRepositorieslinks1 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks2 = githubRepositorieslinks1;
        OASGithubRepositorieslinks githubRepositorieslinks3 = new OASGithubRepositorieslinks();
        OASGithubRepositorieslinks githubRepositorieslinks4 = githubRepositorieslinks3;

        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks2));
        System.assert(githubRepositorieslinks2.equals(githubRepositorieslinks1));
        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks1));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks4));
        System.assert(githubRepositorieslinks4.equals(githubRepositorieslinks3));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubRepositorieslinks githubRepositorieslinks1 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks2 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks3 = new OASGithubRepositorieslinks();
        OASGithubRepositorieslinks githubRepositorieslinks4 = new OASGithubRepositorieslinks();

        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks2));
        System.assert(githubRepositorieslinks2.equals(githubRepositorieslinks1));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks4));
        System.assert(githubRepositorieslinks4.equals(githubRepositorieslinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubRepositorieslinks githubRepositorieslinks1 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks2 = new OASGithubRepositorieslinks();

        System.assertEquals(false, githubRepositorieslinks1.equals('foo'));
        System.assertEquals(false, githubRepositorieslinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubRepositorieslinks githubRepositorieslinks1 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks2 = new OASGithubRepositorieslinks();
        OASGithubRepositorieslinks githubRepositorieslinks3;

        System.assertEquals(false, githubRepositorieslinks1.equals(githubRepositorieslinks3));
        System.assertEquals(false, githubRepositorieslinks2.equals(githubRepositorieslinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubRepositorieslinks githubRepositorieslinks1 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks2 = new OASGithubRepositorieslinks();

        System.assertEquals(githubRepositorieslinks1.hashCode(), githubRepositorieslinks1.hashCode());
        System.assertEquals(githubRepositorieslinks2.hashCode(), githubRepositorieslinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubRepositorieslinks githubRepositorieslinks1 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks2 = OASGithubRepositorieslinks.getExample();
        OASGithubRepositorieslinks githubRepositorieslinks3 = new OASGithubRepositorieslinks();
        OASGithubRepositorieslinks githubRepositorieslinks4 = new OASGithubRepositorieslinks();

        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks2));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks4));
        System.assertEquals(githubRepositorieslinks1.hashCode(), githubRepositorieslinks2.hashCode());
        System.assertEquals(githubRepositorieslinks3.hashCode(), githubRepositorieslinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubRepositorieslinks githubRepositorieslinks = new OASGithubRepositorieslinks();
        Map<String, String> propertyMappings = githubRepositorieslinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
