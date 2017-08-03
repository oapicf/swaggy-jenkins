@isTest
private class SwagGithubOrganizationTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubOrganization githubOrganization1 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization2 = githubOrganization1;
        SwagGithubOrganization githubOrganization3 = new SwagGithubOrganization();
        SwagGithubOrganization githubOrganization4 = githubOrganization3;

        System.assert(githubOrganization1.equals(githubOrganization2));
        System.assert(githubOrganization2.equals(githubOrganization1));
        System.assert(githubOrganization1.equals(githubOrganization1));
        System.assert(githubOrganization3.equals(githubOrganization4));
        System.assert(githubOrganization4.equals(githubOrganization3));
        System.assert(githubOrganization3.equals(githubOrganization3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubOrganization githubOrganization1 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization2 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization3 = new SwagGithubOrganization();
        SwagGithubOrganization githubOrganization4 = new SwagGithubOrganization();

        System.assert(githubOrganization1.equals(githubOrganization2));
        System.assert(githubOrganization2.equals(githubOrganization1));
        System.assert(githubOrganization3.equals(githubOrganization4));
        System.assert(githubOrganization4.equals(githubOrganization3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubOrganization githubOrganization1 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization2 = new SwagGithubOrganization();

        System.assertEquals(false, githubOrganization1.equals(githubOrganization2));
        System.assertEquals(false, githubOrganization2.equals(githubOrganization1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubOrganization githubOrganization1 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization2 = new SwagGithubOrganization();

        System.assertEquals(false, githubOrganization1.equals('foo'));
        System.assertEquals(false, githubOrganization2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubOrganization githubOrganization1 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization2 = new SwagGithubOrganization();
        SwagGithubOrganization githubOrganization3;

        System.assertEquals(false, githubOrganization1.equals(githubOrganization3));
        System.assertEquals(false, githubOrganization2.equals(githubOrganization3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubOrganization githubOrganization1 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization2 = new SwagGithubOrganization();

        System.assertEquals(githubOrganization1.hashCode(), githubOrganization1.hashCode());
        System.assertEquals(githubOrganization2.hashCode(), githubOrganization2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubOrganization githubOrganization1 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization2 = SwagGithubOrganization.getExample();
        SwagGithubOrganization githubOrganization3 = new SwagGithubOrganization();
        SwagGithubOrganization githubOrganization4 = new SwagGithubOrganization();

        System.assert(githubOrganization1.equals(githubOrganization2));
        System.assert(githubOrganization3.equals(githubOrganization4));
        System.assertEquals(githubOrganization1.hashCode(), githubOrganization2.hashCode());
        System.assertEquals(githubOrganization3.hashCode(), githubOrganization4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubOrganization githubOrganization = new SwagGithubOrganization();
        Map<String, String> propertyMappings = githubOrganization.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
