@isTest
private class OASGithubScmlinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubScmlinks githubScmlinks1 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks2 = githubScmlinks1;
        OASGithubScmlinks githubScmlinks3 = new OASGithubScmlinks();
        OASGithubScmlinks githubScmlinks4 = githubScmlinks3;

        System.assert(githubScmlinks1.equals(githubScmlinks2));
        System.assert(githubScmlinks2.equals(githubScmlinks1));
        System.assert(githubScmlinks1.equals(githubScmlinks1));
        System.assert(githubScmlinks3.equals(githubScmlinks4));
        System.assert(githubScmlinks4.equals(githubScmlinks3));
        System.assert(githubScmlinks3.equals(githubScmlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubScmlinks githubScmlinks1 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks2 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks3 = new OASGithubScmlinks();
        OASGithubScmlinks githubScmlinks4 = new OASGithubScmlinks();

        System.assert(githubScmlinks1.equals(githubScmlinks2));
        System.assert(githubScmlinks2.equals(githubScmlinks1));
        System.assert(githubScmlinks3.equals(githubScmlinks4));
        System.assert(githubScmlinks4.equals(githubScmlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubScmlinks githubScmlinks1 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks2 = new OASGithubScmlinks();

        System.assertEquals(false, githubScmlinks1.equals('foo'));
        System.assertEquals(false, githubScmlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubScmlinks githubScmlinks1 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks2 = new OASGithubScmlinks();
        OASGithubScmlinks githubScmlinks3;

        System.assertEquals(false, githubScmlinks1.equals(githubScmlinks3));
        System.assertEquals(false, githubScmlinks2.equals(githubScmlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubScmlinks githubScmlinks1 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks2 = new OASGithubScmlinks();

        System.assertEquals(githubScmlinks1.hashCode(), githubScmlinks1.hashCode());
        System.assertEquals(githubScmlinks2.hashCode(), githubScmlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubScmlinks githubScmlinks1 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks2 = OASGithubScmlinks.getExample();
        OASGithubScmlinks githubScmlinks3 = new OASGithubScmlinks();
        OASGithubScmlinks githubScmlinks4 = new OASGithubScmlinks();

        System.assert(githubScmlinks1.equals(githubScmlinks2));
        System.assert(githubScmlinks3.equals(githubScmlinks4));
        System.assertEquals(githubScmlinks1.hashCode(), githubScmlinks2.hashCode());
        System.assertEquals(githubScmlinks3.hashCode(), githubScmlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubScmlinks githubScmlinks = new OASGithubScmlinks();
        Map<String, String> x-property-mappings = githubScmlinks.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
