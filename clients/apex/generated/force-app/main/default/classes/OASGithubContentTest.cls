@isTest
private class OASGithubContentTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubContent githubContent1 = OASGithubContent.getExample();
        OASGithubContent githubContent2 = githubContent1;
        OASGithubContent githubContent3 = new OASGithubContent();
        OASGithubContent githubContent4 = githubContent3;

        System.assert(githubContent1.equals(githubContent2));
        System.assert(githubContent2.equals(githubContent1));
        System.assert(githubContent1.equals(githubContent1));
        System.assert(githubContent3.equals(githubContent4));
        System.assert(githubContent4.equals(githubContent3));
        System.assert(githubContent3.equals(githubContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubContent githubContent1 = OASGithubContent.getExample();
        OASGithubContent githubContent2 = OASGithubContent.getExample();
        OASGithubContent githubContent3 = new OASGithubContent();
        OASGithubContent githubContent4 = new OASGithubContent();

        System.assert(githubContent1.equals(githubContent2));
        System.assert(githubContent2.equals(githubContent1));
        System.assert(githubContent3.equals(githubContent4));
        System.assert(githubContent4.equals(githubContent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubContent githubContent1 = OASGithubContent.getExample();
        OASGithubContent githubContent2 = new OASGithubContent();

        System.assertEquals(false, githubContent1.equals('foo'));
        System.assertEquals(false, githubContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubContent githubContent1 = OASGithubContent.getExample();
        OASGithubContent githubContent2 = new OASGithubContent();
        OASGithubContent githubContent3;

        System.assertEquals(false, githubContent1.equals(githubContent3));
        System.assertEquals(false, githubContent2.equals(githubContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubContent githubContent1 = OASGithubContent.getExample();
        OASGithubContent githubContent2 = new OASGithubContent();

        System.assertEquals(githubContent1.hashCode(), githubContent1.hashCode());
        System.assertEquals(githubContent2.hashCode(), githubContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubContent githubContent1 = OASGithubContent.getExample();
        OASGithubContent githubContent2 = OASGithubContent.getExample();
        OASGithubContent githubContent3 = new OASGithubContent();
        OASGithubContent githubContent4 = new OASGithubContent();

        System.assert(githubContent1.equals(githubContent2));
        System.assert(githubContent3.equals(githubContent4));
        System.assertEquals(githubContent1.hashCode(), githubContent2.hashCode());
        System.assertEquals(githubContent3.hashCode(), githubContent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubContent githubContent = new OASGithubContent();
        Map<String, String> propertyMappings = githubContent.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
