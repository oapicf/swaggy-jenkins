@isTest
private class SwagGithubRepositorylinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubRepositorylinks githubRepositorylinks1 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks2 = githubRepositorylinks1;
        SwagGithubRepositorylinks githubRepositorylinks3 = new SwagGithubRepositorylinks();
        SwagGithubRepositorylinks githubRepositorylinks4 = githubRepositorylinks3;

        System.assert(githubRepositorylinks1.equals(githubRepositorylinks2));
        System.assert(githubRepositorylinks2.equals(githubRepositorylinks1));
        System.assert(githubRepositorylinks1.equals(githubRepositorylinks1));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks4));
        System.assert(githubRepositorylinks4.equals(githubRepositorylinks3));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubRepositorylinks githubRepositorylinks1 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks2 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks3 = new SwagGithubRepositorylinks();
        SwagGithubRepositorylinks githubRepositorylinks4 = new SwagGithubRepositorylinks();

        System.assert(githubRepositorylinks1.equals(githubRepositorylinks2));
        System.assert(githubRepositorylinks2.equals(githubRepositorylinks1));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks4));
        System.assert(githubRepositorylinks4.equals(githubRepositorylinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubRepositorylinks githubRepositorylinks1 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks2 = new SwagGithubRepositorylinks();

        System.assertEquals(false, githubRepositorylinks1.equals(githubRepositorylinks2));
        System.assertEquals(false, githubRepositorylinks2.equals(githubRepositorylinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubRepositorylinks githubRepositorylinks1 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks2 = new SwagGithubRepositorylinks();

        System.assertEquals(false, githubRepositorylinks1.equals('foo'));
        System.assertEquals(false, githubRepositorylinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubRepositorylinks githubRepositorylinks1 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks2 = new SwagGithubRepositorylinks();
        SwagGithubRepositorylinks githubRepositorylinks3;

        System.assertEquals(false, githubRepositorylinks1.equals(githubRepositorylinks3));
        System.assertEquals(false, githubRepositorylinks2.equals(githubRepositorylinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubRepositorylinks githubRepositorylinks1 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks2 = new SwagGithubRepositorylinks();

        System.assertEquals(githubRepositorylinks1.hashCode(), githubRepositorylinks1.hashCode());
        System.assertEquals(githubRepositorylinks2.hashCode(), githubRepositorylinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubRepositorylinks githubRepositorylinks1 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks2 = SwagGithubRepositorylinks.getExample();
        SwagGithubRepositorylinks githubRepositorylinks3 = new SwagGithubRepositorylinks();
        SwagGithubRepositorylinks githubRepositorylinks4 = new SwagGithubRepositorylinks();

        System.assert(githubRepositorylinks1.equals(githubRepositorylinks2));
        System.assert(githubRepositorylinks3.equals(githubRepositorylinks4));
        System.assertEquals(githubRepositorylinks1.hashCode(), githubRepositorylinks2.hashCode());
        System.assertEquals(githubRepositorylinks3.hashCode(), githubRepositorylinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubRepositorylinks githubRepositorylinks = new SwagGithubRepositorylinks();
        Map<String, String> propertyMappings = githubRepositorylinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
