@isTest
private class OASGithubOrganizationTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubOrganization githubOrganization1 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization2 = githubOrganization1;
        OASGithubOrganization githubOrganization3 = new OASGithubOrganization();
        OASGithubOrganization githubOrganization4 = githubOrganization3;

        System.assert(githubOrganization1.equals(githubOrganization2));
        System.assert(githubOrganization2.equals(githubOrganization1));
        System.assert(githubOrganization1.equals(githubOrganization1));
        System.assert(githubOrganization3.equals(githubOrganization4));
        System.assert(githubOrganization4.equals(githubOrganization3));
        System.assert(githubOrganization3.equals(githubOrganization3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubOrganization githubOrganization1 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization2 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization3 = new OASGithubOrganization();
        OASGithubOrganization githubOrganization4 = new OASGithubOrganization();

        System.assert(githubOrganization1.equals(githubOrganization2));
        System.assert(githubOrganization2.equals(githubOrganization1));
        System.assert(githubOrganization3.equals(githubOrganization4));
        System.assert(githubOrganization4.equals(githubOrganization3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubOrganization githubOrganization1 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization2 = new OASGithubOrganization();

        System.assertEquals(false, githubOrganization1.equals('foo'));
        System.assertEquals(false, githubOrganization2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubOrganization githubOrganization1 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization2 = new OASGithubOrganization();
        OASGithubOrganization githubOrganization3;

        System.assertEquals(false, githubOrganization1.equals(githubOrganization3));
        System.assertEquals(false, githubOrganization2.equals(githubOrganization3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubOrganization githubOrganization1 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization2 = new OASGithubOrganization();

        System.assertEquals(githubOrganization1.hashCode(), githubOrganization1.hashCode());
        System.assertEquals(githubOrganization2.hashCode(), githubOrganization2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubOrganization githubOrganization1 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization2 = OASGithubOrganization.getExample();
        OASGithubOrganization githubOrganization3 = new OASGithubOrganization();
        OASGithubOrganization githubOrganization4 = new OASGithubOrganization();

        System.assert(githubOrganization1.equals(githubOrganization2));
        System.assert(githubOrganization3.equals(githubOrganization4));
        System.assertEquals(githubOrganization1.hashCode(), githubOrganization2.hashCode());
        System.assertEquals(githubOrganization3.hashCode(), githubOrganization4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubOrganization githubOrganization = new OASGithubOrganization();
        Map<String, String> propertyMappings = githubOrganization.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
