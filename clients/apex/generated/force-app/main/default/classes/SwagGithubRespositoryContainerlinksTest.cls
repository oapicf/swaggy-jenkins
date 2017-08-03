@isTest
private class SwagGithubRespositoryContainerlinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = githubRespositoryContainerlinks1;
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks3 = new SwagGithubRespositoryContainerlinks();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks4 = githubRespositoryContainerlinks3;

        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks2));
        System.assert(githubRespositoryContainerlinks2.equals(githubRespositoryContainerlinks1));
        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks1));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks4));
        System.assert(githubRespositoryContainerlinks4.equals(githubRespositoryContainerlinks3));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks3 = new SwagGithubRespositoryContainerlinks();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks4 = new SwagGithubRespositoryContainerlinks();

        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks2));
        System.assert(githubRespositoryContainerlinks2.equals(githubRespositoryContainerlinks1));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks4));
        System.assert(githubRespositoryContainerlinks4.equals(githubRespositoryContainerlinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = new SwagGithubRespositoryContainerlinks();

        System.assertEquals(false, githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks2));
        System.assertEquals(false, githubRespositoryContainerlinks2.equals(githubRespositoryContainerlinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = new SwagGithubRespositoryContainerlinks();

        System.assertEquals(false, githubRespositoryContainerlinks1.equals('foo'));
        System.assertEquals(false, githubRespositoryContainerlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = new SwagGithubRespositoryContainerlinks();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks3;

        System.assertEquals(false, githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks3));
        System.assertEquals(false, githubRespositoryContainerlinks2.equals(githubRespositoryContainerlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = new SwagGithubRespositoryContainerlinks();

        System.assertEquals(githubRespositoryContainerlinks1.hashCode(), githubRespositoryContainerlinks1.hashCode());
        System.assertEquals(githubRespositoryContainerlinks2.hashCode(), githubRespositoryContainerlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = SwagGithubRespositoryContainerlinks.getExample();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks3 = new SwagGithubRespositoryContainerlinks();
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks4 = new SwagGithubRespositoryContainerlinks();

        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks2));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks4));
        System.assertEquals(githubRespositoryContainerlinks1.hashCode(), githubRespositoryContainerlinks2.hashCode());
        System.assertEquals(githubRespositoryContainerlinks3.hashCode(), githubRespositoryContainerlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubRespositoryContainerlinks githubRespositoryContainerlinks = new SwagGithubRespositoryContainerlinks();
        Map<String, String> propertyMappings = githubRespositoryContainerlinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
