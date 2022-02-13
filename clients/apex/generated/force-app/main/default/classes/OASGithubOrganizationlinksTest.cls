@isTest
private class OASGithubOrganizationlinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubOrganizationlinks githubOrganizationlinks1 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks2 = githubOrganizationlinks1;
        OASGithubOrganizationlinks githubOrganizationlinks3 = new OASGithubOrganizationlinks();
        OASGithubOrganizationlinks githubOrganizationlinks4 = githubOrganizationlinks3;

        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks2));
        System.assert(githubOrganizationlinks2.equals(githubOrganizationlinks1));
        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks1));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks4));
        System.assert(githubOrganizationlinks4.equals(githubOrganizationlinks3));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubOrganizationlinks githubOrganizationlinks1 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks2 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks3 = new OASGithubOrganizationlinks();
        OASGithubOrganizationlinks githubOrganizationlinks4 = new OASGithubOrganizationlinks();

        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks2));
        System.assert(githubOrganizationlinks2.equals(githubOrganizationlinks1));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks4));
        System.assert(githubOrganizationlinks4.equals(githubOrganizationlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubOrganizationlinks githubOrganizationlinks1 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks2 = new OASGithubOrganizationlinks();

        System.assertEquals(false, githubOrganizationlinks1.equals('foo'));
        System.assertEquals(false, githubOrganizationlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubOrganizationlinks githubOrganizationlinks1 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks2 = new OASGithubOrganizationlinks();
        OASGithubOrganizationlinks githubOrganizationlinks3;

        System.assertEquals(false, githubOrganizationlinks1.equals(githubOrganizationlinks3));
        System.assertEquals(false, githubOrganizationlinks2.equals(githubOrganizationlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubOrganizationlinks githubOrganizationlinks1 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks2 = new OASGithubOrganizationlinks();

        System.assertEquals(githubOrganizationlinks1.hashCode(), githubOrganizationlinks1.hashCode());
        System.assertEquals(githubOrganizationlinks2.hashCode(), githubOrganizationlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubOrganizationlinks githubOrganizationlinks1 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks2 = OASGithubOrganizationlinks.getExample();
        OASGithubOrganizationlinks githubOrganizationlinks3 = new OASGithubOrganizationlinks();
        OASGithubOrganizationlinks githubOrganizationlinks4 = new OASGithubOrganizationlinks();

        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks2));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks4));
        System.assertEquals(githubOrganizationlinks1.hashCode(), githubOrganizationlinks2.hashCode());
        System.assertEquals(githubOrganizationlinks3.hashCode(), githubOrganizationlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubOrganizationlinks githubOrganizationlinks = new OASGithubOrganizationlinks();
        Map<String, String> x-property-mappings = githubOrganizationlinks.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
