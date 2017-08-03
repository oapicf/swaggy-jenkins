@isTest
private class SwagGithubFileTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubFile githubFile1 = SwagGithubFile.getExample();
        SwagGithubFile githubFile2 = githubFile1;
        SwagGithubFile githubFile3 = new SwagGithubFile();
        SwagGithubFile githubFile4 = githubFile3;

        System.assert(githubFile1.equals(githubFile2));
        System.assert(githubFile2.equals(githubFile1));
        System.assert(githubFile1.equals(githubFile1));
        System.assert(githubFile3.equals(githubFile4));
        System.assert(githubFile4.equals(githubFile3));
        System.assert(githubFile3.equals(githubFile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubFile githubFile1 = SwagGithubFile.getExample();
        SwagGithubFile githubFile2 = SwagGithubFile.getExample();
        SwagGithubFile githubFile3 = new SwagGithubFile();
        SwagGithubFile githubFile4 = new SwagGithubFile();

        System.assert(githubFile1.equals(githubFile2));
        System.assert(githubFile2.equals(githubFile1));
        System.assert(githubFile3.equals(githubFile4));
        System.assert(githubFile4.equals(githubFile3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubFile githubFile1 = SwagGithubFile.getExample();
        SwagGithubFile githubFile2 = new SwagGithubFile();

        System.assertEquals(false, githubFile1.equals(githubFile2));
        System.assertEquals(false, githubFile2.equals(githubFile1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubFile githubFile1 = SwagGithubFile.getExample();
        SwagGithubFile githubFile2 = new SwagGithubFile();

        System.assertEquals(false, githubFile1.equals('foo'));
        System.assertEquals(false, githubFile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubFile githubFile1 = SwagGithubFile.getExample();
        SwagGithubFile githubFile2 = new SwagGithubFile();
        SwagGithubFile githubFile3;

        System.assertEquals(false, githubFile1.equals(githubFile3));
        System.assertEquals(false, githubFile2.equals(githubFile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubFile githubFile1 = SwagGithubFile.getExample();
        SwagGithubFile githubFile2 = new SwagGithubFile();

        System.assertEquals(githubFile1.hashCode(), githubFile1.hashCode());
        System.assertEquals(githubFile2.hashCode(), githubFile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubFile githubFile1 = SwagGithubFile.getExample();
        SwagGithubFile githubFile2 = SwagGithubFile.getExample();
        SwagGithubFile githubFile3 = new SwagGithubFile();
        SwagGithubFile githubFile4 = new SwagGithubFile();

        System.assert(githubFile1.equals(githubFile2));
        System.assert(githubFile3.equals(githubFile4));
        System.assertEquals(githubFile1.hashCode(), githubFile2.hashCode());
        System.assertEquals(githubFile3.hashCode(), githubFile4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubFile githubFile = new SwagGithubFile();
        Map<String, String> propertyMappings = githubFile.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
