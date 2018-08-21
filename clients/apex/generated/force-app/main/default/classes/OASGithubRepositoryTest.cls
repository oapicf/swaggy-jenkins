@isTest
private class OASGithubRepositoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASGithubRepository githubRepository1 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository2 = githubRepository1;
        OASGithubRepository githubRepository3 = new OASGithubRepository();
        OASGithubRepository githubRepository4 = githubRepository3;

        System.assert(githubRepository1.equals(githubRepository2));
        System.assert(githubRepository2.equals(githubRepository1));
        System.assert(githubRepository1.equals(githubRepository1));
        System.assert(githubRepository3.equals(githubRepository4));
        System.assert(githubRepository4.equals(githubRepository3));
        System.assert(githubRepository3.equals(githubRepository3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGithubRepository githubRepository1 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository2 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository3 = new OASGithubRepository();
        OASGithubRepository githubRepository4 = new OASGithubRepository();

        System.assert(githubRepository1.equals(githubRepository2));
        System.assert(githubRepository2.equals(githubRepository1));
        System.assert(githubRepository3.equals(githubRepository4));
        System.assert(githubRepository4.equals(githubRepository3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGithubRepository githubRepository1 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository2 = new OASGithubRepository();

        System.assertEquals(false, githubRepository1.equals('foo'));
        System.assertEquals(false, githubRepository2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGithubRepository githubRepository1 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository2 = new OASGithubRepository();
        OASGithubRepository githubRepository3;

        System.assertEquals(false, githubRepository1.equals(githubRepository3));
        System.assertEquals(false, githubRepository2.equals(githubRepository3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGithubRepository githubRepository1 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository2 = new OASGithubRepository();

        System.assertEquals(githubRepository1.hashCode(), githubRepository1.hashCode());
        System.assertEquals(githubRepository2.hashCode(), githubRepository2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGithubRepository githubRepository1 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository2 = OASGithubRepository.getExample();
        OASGithubRepository githubRepository3 = new OASGithubRepository();
        OASGithubRepository githubRepository4 = new OASGithubRepository();

        System.assert(githubRepository1.equals(githubRepository2));
        System.assert(githubRepository3.equals(githubRepository4));
        System.assertEquals(githubRepository1.hashCode(), githubRepository2.hashCode());
        System.assertEquals(githubRepository3.hashCode(), githubRepository4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGithubRepository githubRepository = new OASGithubRepository();
        Map<String, String> propertyMappings = githubRepository.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
        System.assertEquals('r_private', propertyMappings.get('private'));
    }
}
