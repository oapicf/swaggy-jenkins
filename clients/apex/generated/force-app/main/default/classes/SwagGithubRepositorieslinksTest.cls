@isTest
private class SwagGithubRepositorieslinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubRepositorieslinks githubRepositorieslinks1 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks2 = githubRepositorieslinks1;
        SwagGithubRepositorieslinks githubRepositorieslinks3 = new SwagGithubRepositorieslinks();
        SwagGithubRepositorieslinks githubRepositorieslinks4 = githubRepositorieslinks3;

        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks2));
        System.assert(githubRepositorieslinks2.equals(githubRepositorieslinks1));
        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks1));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks4));
        System.assert(githubRepositorieslinks4.equals(githubRepositorieslinks3));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubRepositorieslinks githubRepositorieslinks1 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks2 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks3 = new SwagGithubRepositorieslinks();
        SwagGithubRepositorieslinks githubRepositorieslinks4 = new SwagGithubRepositorieslinks();

        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks2));
        System.assert(githubRepositorieslinks2.equals(githubRepositorieslinks1));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks4));
        System.assert(githubRepositorieslinks4.equals(githubRepositorieslinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubRepositorieslinks githubRepositorieslinks1 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks2 = new SwagGithubRepositorieslinks();

        System.assertEquals(false, githubRepositorieslinks1.equals(githubRepositorieslinks2));
        System.assertEquals(false, githubRepositorieslinks2.equals(githubRepositorieslinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubRepositorieslinks githubRepositorieslinks1 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks2 = new SwagGithubRepositorieslinks();

        System.assertEquals(false, githubRepositorieslinks1.equals('foo'));
        System.assertEquals(false, githubRepositorieslinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubRepositorieslinks githubRepositorieslinks1 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks2 = new SwagGithubRepositorieslinks();
        SwagGithubRepositorieslinks githubRepositorieslinks3;

        System.assertEquals(false, githubRepositorieslinks1.equals(githubRepositorieslinks3));
        System.assertEquals(false, githubRepositorieslinks2.equals(githubRepositorieslinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubRepositorieslinks githubRepositorieslinks1 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks2 = new SwagGithubRepositorieslinks();

        System.assertEquals(githubRepositorieslinks1.hashCode(), githubRepositorieslinks1.hashCode());
        System.assertEquals(githubRepositorieslinks2.hashCode(), githubRepositorieslinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubRepositorieslinks githubRepositorieslinks1 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks2 = SwagGithubRepositorieslinks.getExample();
        SwagGithubRepositorieslinks githubRepositorieslinks3 = new SwagGithubRepositorieslinks();
        SwagGithubRepositorieslinks githubRepositorieslinks4 = new SwagGithubRepositorieslinks();

        System.assert(githubRepositorieslinks1.equals(githubRepositorieslinks2));
        System.assert(githubRepositorieslinks3.equals(githubRepositorieslinks4));
        System.assertEquals(githubRepositorieslinks1.hashCode(), githubRepositorieslinks2.hashCode());
        System.assertEquals(githubRepositorieslinks3.hashCode(), githubRepositorieslinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubRepositorieslinks githubRepositorieslinks = new SwagGithubRepositorieslinks();
        Map<String, String> propertyMappings = githubRepositorieslinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
