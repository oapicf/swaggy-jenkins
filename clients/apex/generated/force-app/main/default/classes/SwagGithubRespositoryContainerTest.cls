@isTest
private class SwagGithubRespositoryContainerTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubRespositoryContainer githubRespositoryContainer1 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer2 = githubRespositoryContainer1;
        SwagGithubRespositoryContainer githubRespositoryContainer3 = new SwagGithubRespositoryContainer();
        SwagGithubRespositoryContainer githubRespositoryContainer4 = githubRespositoryContainer3;

        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer2));
        System.assert(githubRespositoryContainer2.equals(githubRespositoryContainer1));
        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer1));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer4));
        System.assert(githubRespositoryContainer4.equals(githubRespositoryContainer3));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubRespositoryContainer githubRespositoryContainer1 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer2 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer3 = new SwagGithubRespositoryContainer();
        SwagGithubRespositoryContainer githubRespositoryContainer4 = new SwagGithubRespositoryContainer();

        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer2));
        System.assert(githubRespositoryContainer2.equals(githubRespositoryContainer1));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer4));
        System.assert(githubRespositoryContainer4.equals(githubRespositoryContainer3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubRespositoryContainer githubRespositoryContainer1 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer2 = new SwagGithubRespositoryContainer();

        System.assertEquals(false, githubRespositoryContainer1.equals(githubRespositoryContainer2));
        System.assertEquals(false, githubRespositoryContainer2.equals(githubRespositoryContainer1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubRespositoryContainer githubRespositoryContainer1 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer2 = new SwagGithubRespositoryContainer();

        System.assertEquals(false, githubRespositoryContainer1.equals('foo'));
        System.assertEquals(false, githubRespositoryContainer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubRespositoryContainer githubRespositoryContainer1 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer2 = new SwagGithubRespositoryContainer();
        SwagGithubRespositoryContainer githubRespositoryContainer3;

        System.assertEquals(false, githubRespositoryContainer1.equals(githubRespositoryContainer3));
        System.assertEquals(false, githubRespositoryContainer2.equals(githubRespositoryContainer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubRespositoryContainer githubRespositoryContainer1 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer2 = new SwagGithubRespositoryContainer();

        System.assertEquals(githubRespositoryContainer1.hashCode(), githubRespositoryContainer1.hashCode());
        System.assertEquals(githubRespositoryContainer2.hashCode(), githubRespositoryContainer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubRespositoryContainer githubRespositoryContainer1 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer2 = SwagGithubRespositoryContainer.getExample();
        SwagGithubRespositoryContainer githubRespositoryContainer3 = new SwagGithubRespositoryContainer();
        SwagGithubRespositoryContainer githubRespositoryContainer4 = new SwagGithubRespositoryContainer();

        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer2));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer4));
        System.assertEquals(githubRespositoryContainer1.hashCode(), githubRespositoryContainer2.hashCode());
        System.assertEquals(githubRespositoryContainer3.hashCode(), githubRespositoryContainer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubRespositoryContainer githubRespositoryContainer = new SwagGithubRespositoryContainer();
        Map<String, String> propertyMappings = githubRespositoryContainer.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
