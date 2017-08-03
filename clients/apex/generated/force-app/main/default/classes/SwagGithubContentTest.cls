@isTest
private class SwagGithubContentTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubContent githubContent1 = SwagGithubContent.getExample();
        SwagGithubContent githubContent2 = githubContent1;
        SwagGithubContent githubContent3 = new SwagGithubContent();
        SwagGithubContent githubContent4 = githubContent3;

        System.assert(githubContent1.equals(githubContent2));
        System.assert(githubContent2.equals(githubContent1));
        System.assert(githubContent1.equals(githubContent1));
        System.assert(githubContent3.equals(githubContent4));
        System.assert(githubContent4.equals(githubContent3));
        System.assert(githubContent3.equals(githubContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubContent githubContent1 = SwagGithubContent.getExample();
        SwagGithubContent githubContent2 = SwagGithubContent.getExample();
        SwagGithubContent githubContent3 = new SwagGithubContent();
        SwagGithubContent githubContent4 = new SwagGithubContent();

        System.assert(githubContent1.equals(githubContent2));
        System.assert(githubContent2.equals(githubContent1));
        System.assert(githubContent3.equals(githubContent4));
        System.assert(githubContent4.equals(githubContent3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubContent githubContent1 = SwagGithubContent.getExample();
        SwagGithubContent githubContent2 = new SwagGithubContent();

        System.assertEquals(false, githubContent1.equals(githubContent2));
        System.assertEquals(false, githubContent2.equals(githubContent1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubContent githubContent1 = SwagGithubContent.getExample();
        SwagGithubContent githubContent2 = new SwagGithubContent();

        System.assertEquals(false, githubContent1.equals('foo'));
        System.assertEquals(false, githubContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubContent githubContent1 = SwagGithubContent.getExample();
        SwagGithubContent githubContent2 = new SwagGithubContent();
        SwagGithubContent githubContent3;

        System.assertEquals(false, githubContent1.equals(githubContent3));
        System.assertEquals(false, githubContent2.equals(githubContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubContent githubContent1 = SwagGithubContent.getExample();
        SwagGithubContent githubContent2 = new SwagGithubContent();

        System.assertEquals(githubContent1.hashCode(), githubContent1.hashCode());
        System.assertEquals(githubContent2.hashCode(), githubContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubContent githubContent1 = SwagGithubContent.getExample();
        SwagGithubContent githubContent2 = SwagGithubContent.getExample();
        SwagGithubContent githubContent3 = new SwagGithubContent();
        SwagGithubContent githubContent4 = new SwagGithubContent();

        System.assert(githubContent1.equals(githubContent2));
        System.assert(githubContent3.equals(githubContent4));
        System.assertEquals(githubContent1.hashCode(), githubContent2.hashCode());
        System.assertEquals(githubContent3.hashCode(), githubContent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubContent githubContent = new SwagGithubContent();
        Map<String, String> propertyMappings = githubContent.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
