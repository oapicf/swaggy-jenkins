@isTest
private class SwagGithubScmTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubScm githubScm1 = SwagGithubScm.getExample();
        SwagGithubScm githubScm2 = githubScm1;
        SwagGithubScm githubScm3 = new SwagGithubScm();
        SwagGithubScm githubScm4 = githubScm3;

        System.assert(githubScm1.equals(githubScm2));
        System.assert(githubScm2.equals(githubScm1));
        System.assert(githubScm1.equals(githubScm1));
        System.assert(githubScm3.equals(githubScm4));
        System.assert(githubScm4.equals(githubScm3));
        System.assert(githubScm3.equals(githubScm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubScm githubScm1 = SwagGithubScm.getExample();
        SwagGithubScm githubScm2 = SwagGithubScm.getExample();
        SwagGithubScm githubScm3 = new SwagGithubScm();
        SwagGithubScm githubScm4 = new SwagGithubScm();

        System.assert(githubScm1.equals(githubScm2));
        System.assert(githubScm2.equals(githubScm1));
        System.assert(githubScm3.equals(githubScm4));
        System.assert(githubScm4.equals(githubScm3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubScm githubScm1 = SwagGithubScm.getExample();
        SwagGithubScm githubScm2 = new SwagGithubScm();

        System.assertEquals(false, githubScm1.equals(githubScm2));
        System.assertEquals(false, githubScm2.equals(githubScm1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubScm githubScm1 = SwagGithubScm.getExample();
        SwagGithubScm githubScm2 = new SwagGithubScm();

        System.assertEquals(false, githubScm1.equals('foo'));
        System.assertEquals(false, githubScm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubScm githubScm1 = SwagGithubScm.getExample();
        SwagGithubScm githubScm2 = new SwagGithubScm();
        SwagGithubScm githubScm3;

        System.assertEquals(false, githubScm1.equals(githubScm3));
        System.assertEquals(false, githubScm2.equals(githubScm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubScm githubScm1 = SwagGithubScm.getExample();
        SwagGithubScm githubScm2 = new SwagGithubScm();

        System.assertEquals(githubScm1.hashCode(), githubScm1.hashCode());
        System.assertEquals(githubScm2.hashCode(), githubScm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubScm githubScm1 = SwagGithubScm.getExample();
        SwagGithubScm githubScm2 = SwagGithubScm.getExample();
        SwagGithubScm githubScm3 = new SwagGithubScm();
        SwagGithubScm githubScm4 = new SwagGithubScm();

        System.assert(githubScm1.equals(githubScm2));
        System.assert(githubScm3.equals(githubScm4));
        System.assertEquals(githubScm1.hashCode(), githubScm2.hashCode());
        System.assertEquals(githubScm3.hashCode(), githubScm4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubScm githubScm = new SwagGithubScm();
        Map<String, String> propertyMappings = githubScm.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
