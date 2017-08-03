@isTest
private class SwagGithubScmlinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubScmlinks githubScmlinks1 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks2 = githubScmlinks1;
        SwagGithubScmlinks githubScmlinks3 = new SwagGithubScmlinks();
        SwagGithubScmlinks githubScmlinks4 = githubScmlinks3;

        System.assert(githubScmlinks1.equals(githubScmlinks2));
        System.assert(githubScmlinks2.equals(githubScmlinks1));
        System.assert(githubScmlinks1.equals(githubScmlinks1));
        System.assert(githubScmlinks3.equals(githubScmlinks4));
        System.assert(githubScmlinks4.equals(githubScmlinks3));
        System.assert(githubScmlinks3.equals(githubScmlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubScmlinks githubScmlinks1 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks2 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks3 = new SwagGithubScmlinks();
        SwagGithubScmlinks githubScmlinks4 = new SwagGithubScmlinks();

        System.assert(githubScmlinks1.equals(githubScmlinks2));
        System.assert(githubScmlinks2.equals(githubScmlinks1));
        System.assert(githubScmlinks3.equals(githubScmlinks4));
        System.assert(githubScmlinks4.equals(githubScmlinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubScmlinks githubScmlinks1 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks2 = new SwagGithubScmlinks();

        System.assertEquals(false, githubScmlinks1.equals(githubScmlinks2));
        System.assertEquals(false, githubScmlinks2.equals(githubScmlinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubScmlinks githubScmlinks1 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks2 = new SwagGithubScmlinks();

        System.assertEquals(false, githubScmlinks1.equals('foo'));
        System.assertEquals(false, githubScmlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubScmlinks githubScmlinks1 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks2 = new SwagGithubScmlinks();
        SwagGithubScmlinks githubScmlinks3;

        System.assertEquals(false, githubScmlinks1.equals(githubScmlinks3));
        System.assertEquals(false, githubScmlinks2.equals(githubScmlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubScmlinks githubScmlinks1 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks2 = new SwagGithubScmlinks();

        System.assertEquals(githubScmlinks1.hashCode(), githubScmlinks1.hashCode());
        System.assertEquals(githubScmlinks2.hashCode(), githubScmlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubScmlinks githubScmlinks1 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks2 = SwagGithubScmlinks.getExample();
        SwagGithubScmlinks githubScmlinks3 = new SwagGithubScmlinks();
        SwagGithubScmlinks githubScmlinks4 = new SwagGithubScmlinks();

        System.assert(githubScmlinks1.equals(githubScmlinks2));
        System.assert(githubScmlinks3.equals(githubScmlinks4));
        System.assertEquals(githubScmlinks1.hashCode(), githubScmlinks2.hashCode());
        System.assertEquals(githubScmlinks3.hashCode(), githubScmlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubScmlinks githubScmlinks = new SwagGithubScmlinks();
        Map<String, String> propertyMappings = githubScmlinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
