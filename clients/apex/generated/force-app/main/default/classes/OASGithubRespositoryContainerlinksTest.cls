@isTest
private class OASGithubRespositoryContainerlinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = githubRespositoryContainerlinks1;
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks3 = new OASGithubRespositoryContainerlinks();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks4 = githubRespositoryContainerlinks3;

        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks2));
        System.assert(githubRespositoryContainerlinks2.equals(githubRespositoryContainerlinks1));
        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks1));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks4));
        System.assert(githubRespositoryContainerlinks4.equals(githubRespositoryContainerlinks3));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks3 = new OASGithubRespositoryContainerlinks();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks4 = new OASGithubRespositoryContainerlinks();

        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks2));
        System.assert(githubRespositoryContainerlinks2.equals(githubRespositoryContainerlinks1));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks4));
        System.assert(githubRespositoryContainerlinks4.equals(githubRespositoryContainerlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = new OASGithubRespositoryContainerlinks();

        System.assertEquals(false, githubRespositoryContainerlinks1.equals('foo'));
        System.assertEquals(false, githubRespositoryContainerlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = new OASGithubRespositoryContainerlinks();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks3;

        System.assertEquals(false, githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks3));
        System.assertEquals(false, githubRespositoryContainerlinks2.equals(githubRespositoryContainerlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = new OASGithubRespositoryContainerlinks();

        System.assertEquals(githubRespositoryContainerlinks1.hashCode(), githubRespositoryContainerlinks1.hashCode());
        System.assertEquals(githubRespositoryContainerlinks2.hashCode(), githubRespositoryContainerlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks1 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks2 = OASGithubRespositoryContainerlinks.getExample();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks3 = new OASGithubRespositoryContainerlinks();
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks4 = new OASGithubRespositoryContainerlinks();

        System.assert(githubRespositoryContainerlinks1.equals(githubRespositoryContainerlinks2));
        System.assert(githubRespositoryContainerlinks3.equals(githubRespositoryContainerlinks4));
        System.assertEquals(githubRespositoryContainerlinks1.hashCode(), githubRespositoryContainerlinks2.hashCode());
        System.assertEquals(githubRespositoryContainerlinks3.hashCode(), githubRespositoryContainerlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubRespositoryContainerlinks githubRespositoryContainerlinks = new OASGithubRespositoryContainerlinks();
        Map<String, String> x-property-mappings = githubRespositoryContainerlinks.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
