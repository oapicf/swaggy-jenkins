@isTest
private class SwagGithubRepositoryTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGithubRepository githubRepository1 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository2 = githubRepository1;
        SwagGithubRepository githubRepository3 = new SwagGithubRepository();
        SwagGithubRepository githubRepository4 = githubRepository3;

        System.assert(githubRepository1.equals(githubRepository2));
        System.assert(githubRepository2.equals(githubRepository1));
        System.assert(githubRepository1.equals(githubRepository1));
        System.assert(githubRepository3.equals(githubRepository4));
        System.assert(githubRepository4.equals(githubRepository3));
        System.assert(githubRepository3.equals(githubRepository3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGithubRepository githubRepository1 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository2 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository3 = new SwagGithubRepository();
        SwagGithubRepository githubRepository4 = new SwagGithubRepository();

        System.assert(githubRepository1.equals(githubRepository2));
        System.assert(githubRepository2.equals(githubRepository1));
        System.assert(githubRepository3.equals(githubRepository4));
        System.assert(githubRepository4.equals(githubRepository3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGithubRepository githubRepository1 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository2 = new SwagGithubRepository();

        System.assertEquals(false, githubRepository1.equals(githubRepository2));
        System.assertEquals(false, githubRepository2.equals(githubRepository1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGithubRepository githubRepository1 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository2 = new SwagGithubRepository();

        System.assertEquals(false, githubRepository1.equals('foo'));
        System.assertEquals(false, githubRepository2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGithubRepository githubRepository1 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository2 = new SwagGithubRepository();
        SwagGithubRepository githubRepository3;

        System.assertEquals(false, githubRepository1.equals(githubRepository3));
        System.assertEquals(false, githubRepository2.equals(githubRepository3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGithubRepository githubRepository1 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository2 = new SwagGithubRepository();

        System.assertEquals(githubRepository1.hashCode(), githubRepository1.hashCode());
        System.assertEquals(githubRepository2.hashCode(), githubRepository2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGithubRepository githubRepository1 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository2 = SwagGithubRepository.getExample();
        SwagGithubRepository githubRepository3 = new SwagGithubRepository();
        SwagGithubRepository githubRepository4 = new SwagGithubRepository();

        System.assert(githubRepository1.equals(githubRepository2));
        System.assert(githubRepository3.equals(githubRepository4));
        System.assertEquals(githubRepository1.hashCode(), githubRepository2.hashCode());
        System.assertEquals(githubRepository3.hashCode(), githubRepository4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGithubRepository githubRepository = new SwagGithubRepository();
        Map<String, String> propertyMappings = githubRepository.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
        System.assertEquals('r_private', propertyMappings.get('private'));
    }
}
