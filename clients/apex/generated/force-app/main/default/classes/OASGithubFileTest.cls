@isTest
private class OASGithubFileTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubFile githubFile1 = OASGithubFile.getExample();
        OASGithubFile githubFile2 = githubFile1;
        OASGithubFile githubFile3 = new OASGithubFile();
        OASGithubFile githubFile4 = githubFile3;

        System.assert(githubFile1.equals(githubFile2));
        System.assert(githubFile2.equals(githubFile1));
        System.assert(githubFile1.equals(githubFile1));
        System.assert(githubFile3.equals(githubFile4));
        System.assert(githubFile4.equals(githubFile3));
        System.assert(githubFile3.equals(githubFile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubFile githubFile1 = OASGithubFile.getExample();
        OASGithubFile githubFile2 = OASGithubFile.getExample();
        OASGithubFile githubFile3 = new OASGithubFile();
        OASGithubFile githubFile4 = new OASGithubFile();

        System.assert(githubFile1.equals(githubFile2));
        System.assert(githubFile2.equals(githubFile1));
        System.assert(githubFile3.equals(githubFile4));
        System.assert(githubFile4.equals(githubFile3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubFile githubFile1 = OASGithubFile.getExample();
        OASGithubFile githubFile2 = new OASGithubFile();

        System.assertEquals(false, githubFile1.equals('foo'));
        System.assertEquals(false, githubFile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubFile githubFile1 = OASGithubFile.getExample();
        OASGithubFile githubFile2 = new OASGithubFile();
        OASGithubFile githubFile3;

        System.assertEquals(false, githubFile1.equals(githubFile3));
        System.assertEquals(false, githubFile2.equals(githubFile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubFile githubFile1 = OASGithubFile.getExample();
        OASGithubFile githubFile2 = new OASGithubFile();

        System.assertEquals(githubFile1.hashCode(), githubFile1.hashCode());
        System.assertEquals(githubFile2.hashCode(), githubFile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubFile githubFile1 = OASGithubFile.getExample();
        OASGithubFile githubFile2 = OASGithubFile.getExample();
        OASGithubFile githubFile3 = new OASGithubFile();
        OASGithubFile githubFile4 = new OASGithubFile();

        System.assert(githubFile1.equals(githubFile2));
        System.assert(githubFile3.equals(githubFile4));
        System.assertEquals(githubFile1.hashCode(), githubFile2.hashCode());
        System.assertEquals(githubFile3.hashCode(), githubFile4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubFile githubFile = new OASGithubFile();
        Map<String, String> propertyMappings = githubFile.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
