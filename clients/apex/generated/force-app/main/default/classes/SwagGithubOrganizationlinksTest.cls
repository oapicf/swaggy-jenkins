@isTest
private class SwagGithubOrganizationlinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubOrganizationlinks githubOrganizationlinks1 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks2 = githubOrganizationlinks1;
        SwagGithubOrganizationlinks githubOrganizationlinks3 = new SwagGithubOrganizationlinks();
        SwagGithubOrganizationlinks githubOrganizationlinks4 = githubOrganizationlinks3;

        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks2));
        System.assert(githubOrganizationlinks2.equals(githubOrganizationlinks1));
        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks1));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks4));
        System.assert(githubOrganizationlinks4.equals(githubOrganizationlinks3));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubOrganizationlinks githubOrganizationlinks1 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks2 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks3 = new SwagGithubOrganizationlinks();
        SwagGithubOrganizationlinks githubOrganizationlinks4 = new SwagGithubOrganizationlinks();

        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks2));
        System.assert(githubOrganizationlinks2.equals(githubOrganizationlinks1));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks4));
        System.assert(githubOrganizationlinks4.equals(githubOrganizationlinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubOrganizationlinks githubOrganizationlinks1 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks2 = new SwagGithubOrganizationlinks();

        System.assertEquals(false, githubOrganizationlinks1.equals(githubOrganizationlinks2));
        System.assertEquals(false, githubOrganizationlinks2.equals(githubOrganizationlinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubOrganizationlinks githubOrganizationlinks1 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks2 = new SwagGithubOrganizationlinks();

        System.assertEquals(false, githubOrganizationlinks1.equals('foo'));
        System.assertEquals(false, githubOrganizationlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubOrganizationlinks githubOrganizationlinks1 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks2 = new SwagGithubOrganizationlinks();
        SwagGithubOrganizationlinks githubOrganizationlinks3;

        System.assertEquals(false, githubOrganizationlinks1.equals(githubOrganizationlinks3));
        System.assertEquals(false, githubOrganizationlinks2.equals(githubOrganizationlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubOrganizationlinks githubOrganizationlinks1 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks2 = new SwagGithubOrganizationlinks();

        System.assertEquals(githubOrganizationlinks1.hashCode(), githubOrganizationlinks1.hashCode());
        System.assertEquals(githubOrganizationlinks2.hashCode(), githubOrganizationlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubOrganizationlinks githubOrganizationlinks1 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks2 = SwagGithubOrganizationlinks.getExample();
        SwagGithubOrganizationlinks githubOrganizationlinks3 = new SwagGithubOrganizationlinks();
        SwagGithubOrganizationlinks githubOrganizationlinks4 = new SwagGithubOrganizationlinks();

        System.assert(githubOrganizationlinks1.equals(githubOrganizationlinks2));
        System.assert(githubOrganizationlinks3.equals(githubOrganizationlinks4));
        System.assertEquals(githubOrganizationlinks1.hashCode(), githubOrganizationlinks2.hashCode());
        System.assertEquals(githubOrganizationlinks3.hashCode(), githubOrganizationlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubOrganizationlinks githubOrganizationlinks = new SwagGithubOrganizationlinks();
        Map<String, String> propertyMappings = githubOrganizationlinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
