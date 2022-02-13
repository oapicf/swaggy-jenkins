@isTest
private class OASGithubScmTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubScm githubScm1 = OASGithubScm.getExample();
        OASGithubScm githubScm2 = githubScm1;
        OASGithubScm githubScm3 = new OASGithubScm();
        OASGithubScm githubScm4 = githubScm3;

        System.assert(githubScm1.equals(githubScm2));
        System.assert(githubScm2.equals(githubScm1));
        System.assert(githubScm1.equals(githubScm1));
        System.assert(githubScm3.equals(githubScm4));
        System.assert(githubScm4.equals(githubScm3));
        System.assert(githubScm3.equals(githubScm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubScm githubScm1 = OASGithubScm.getExample();
        OASGithubScm githubScm2 = OASGithubScm.getExample();
        OASGithubScm githubScm3 = new OASGithubScm();
        OASGithubScm githubScm4 = new OASGithubScm();

        System.assert(githubScm1.equals(githubScm2));
        System.assert(githubScm2.equals(githubScm1));
        System.assert(githubScm3.equals(githubScm4));
        System.assert(githubScm4.equals(githubScm3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubScm githubScm1 = OASGithubScm.getExample();
        OASGithubScm githubScm2 = new OASGithubScm();

        System.assertEquals(false, githubScm1.equals('foo'));
        System.assertEquals(false, githubScm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubScm githubScm1 = OASGithubScm.getExample();
        OASGithubScm githubScm2 = new OASGithubScm();
        OASGithubScm githubScm3;

        System.assertEquals(false, githubScm1.equals(githubScm3));
        System.assertEquals(false, githubScm2.equals(githubScm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubScm githubScm1 = OASGithubScm.getExample();
        OASGithubScm githubScm2 = new OASGithubScm();

        System.assertEquals(githubScm1.hashCode(), githubScm1.hashCode());
        System.assertEquals(githubScm2.hashCode(), githubScm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubScm githubScm1 = OASGithubScm.getExample();
        OASGithubScm githubScm2 = OASGithubScm.getExample();
        OASGithubScm githubScm3 = new OASGithubScm();
        OASGithubScm githubScm4 = new OASGithubScm();

        System.assert(githubScm1.equals(githubScm2));
        System.assert(githubScm3.equals(githubScm4));
        System.assertEquals(githubScm1.hashCode(), githubScm2.hashCode());
        System.assertEquals(githubScm3.hashCode(), githubScm4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubScm githubScm = new OASGithubScm();
        Map<String, String> x-property-mappings = githubScm.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
