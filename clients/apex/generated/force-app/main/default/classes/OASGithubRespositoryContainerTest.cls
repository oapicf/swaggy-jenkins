@isTest
private class OASGithubRespositoryContainerTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubRespositoryContainer githubRespositoryContainer1 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer2 = githubRespositoryContainer1;
        OASGithubRespositoryContainer githubRespositoryContainer3 = new OASGithubRespositoryContainer();
        OASGithubRespositoryContainer githubRespositoryContainer4 = githubRespositoryContainer3;

        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer2));
        System.assert(githubRespositoryContainer2.equals(githubRespositoryContainer1));
        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer1));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer4));
        System.assert(githubRespositoryContainer4.equals(githubRespositoryContainer3));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubRespositoryContainer githubRespositoryContainer1 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer2 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer3 = new OASGithubRespositoryContainer();
        OASGithubRespositoryContainer githubRespositoryContainer4 = new OASGithubRespositoryContainer();

        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer2));
        System.assert(githubRespositoryContainer2.equals(githubRespositoryContainer1));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer4));
        System.assert(githubRespositoryContainer4.equals(githubRespositoryContainer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubRespositoryContainer githubRespositoryContainer1 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer2 = new OASGithubRespositoryContainer();

        System.assertEquals(false, githubRespositoryContainer1.equals('foo'));
        System.assertEquals(false, githubRespositoryContainer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubRespositoryContainer githubRespositoryContainer1 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer2 = new OASGithubRespositoryContainer();
        OASGithubRespositoryContainer githubRespositoryContainer3;

        System.assertEquals(false, githubRespositoryContainer1.equals(githubRespositoryContainer3));
        System.assertEquals(false, githubRespositoryContainer2.equals(githubRespositoryContainer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubRespositoryContainer githubRespositoryContainer1 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer2 = new OASGithubRespositoryContainer();

        System.assertEquals(githubRespositoryContainer1.hashCode(), githubRespositoryContainer1.hashCode());
        System.assertEquals(githubRespositoryContainer2.hashCode(), githubRespositoryContainer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubRespositoryContainer githubRespositoryContainer1 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer2 = OASGithubRespositoryContainer.getExample();
        OASGithubRespositoryContainer githubRespositoryContainer3 = new OASGithubRespositoryContainer();
        OASGithubRespositoryContainer githubRespositoryContainer4 = new OASGithubRespositoryContainer();

        System.assert(githubRespositoryContainer1.equals(githubRespositoryContainer2));
        System.assert(githubRespositoryContainer3.equals(githubRespositoryContainer4));
        System.assertEquals(githubRespositoryContainer1.hashCode(), githubRespositoryContainer2.hashCode());
        System.assertEquals(githubRespositoryContainer3.hashCode(), githubRespositoryContainer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubRespositoryContainer githubRespositoryContainer = new OASGithubRespositoryContainer();
        Map<String, String> propertyMappings = githubRespositoryContainer.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
