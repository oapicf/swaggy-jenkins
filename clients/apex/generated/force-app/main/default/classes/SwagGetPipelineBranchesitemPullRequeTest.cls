@isTest
private class SwagGetPipelineBranchesitemPullRequeTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest1 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest2 = getPipelineBranchesitemPullRequest1;
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest3 = new SwagGetPipelineBranchesitemPullReque();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest4 = getPipelineBranchesitemPullRequest3;

        System.assert(getPipelineBranchesitemPullRequest1.equals(getPipelineBranchesitemPullRequest2));
        System.assert(getPipelineBranchesitemPullRequest2.equals(getPipelineBranchesitemPullRequest1));
        System.assert(getPipelineBranchesitemPullRequest1.equals(getPipelineBranchesitemPullRequest1));
        System.assert(getPipelineBranchesitemPullRequest3.equals(getPipelineBranchesitemPullRequest4));
        System.assert(getPipelineBranchesitemPullRequest4.equals(getPipelineBranchesitemPullRequest3));
        System.assert(getPipelineBranchesitemPullRequest3.equals(getPipelineBranchesitemPullRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest1 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest2 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest3 = new SwagGetPipelineBranchesitemPullReque();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest4 = new SwagGetPipelineBranchesitemPullReque();

        System.assert(getPipelineBranchesitemPullRequest1.equals(getPipelineBranchesitemPullRequest2));
        System.assert(getPipelineBranchesitemPullRequest2.equals(getPipelineBranchesitemPullRequest1));
        System.assert(getPipelineBranchesitemPullRequest3.equals(getPipelineBranchesitemPullRequest4));
        System.assert(getPipelineBranchesitemPullRequest4.equals(getPipelineBranchesitemPullRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest1 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest2 = new SwagGetPipelineBranchesitemPullReque();

        System.assertEquals(false, getPipelineBranchesitemPullRequest1.equals(getPipelineBranchesitemPullRequest2));
        System.assertEquals(false, getPipelineBranchesitemPullRequest2.equals(getPipelineBranchesitemPullRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest1 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest2 = new SwagGetPipelineBranchesitemPullReque();

        System.assertEquals(false, getPipelineBranchesitemPullRequest1.equals('foo'));
        System.assertEquals(false, getPipelineBranchesitemPullRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest1 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest2 = new SwagGetPipelineBranchesitemPullReque();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest3;

        System.assertEquals(false, getPipelineBranchesitemPullRequest1.equals(getPipelineBranchesitemPullRequest3));
        System.assertEquals(false, getPipelineBranchesitemPullRequest2.equals(getPipelineBranchesitemPullRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest1 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest2 = new SwagGetPipelineBranchesitemPullReque();

        System.assertEquals(getPipelineBranchesitemPullRequest1.hashCode(), getPipelineBranchesitemPullRequest1.hashCode());
        System.assertEquals(getPipelineBranchesitemPullRequest2.hashCode(), getPipelineBranchesitemPullRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest1 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest2 = SwagGetPipelineBranchesitemPullReque.getExample();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest3 = new SwagGetPipelineBranchesitemPullReque();
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest4 = new SwagGetPipelineBranchesitemPullReque();

        System.assert(getPipelineBranchesitemPullRequest1.equals(getPipelineBranchesitemPullRequest2));
        System.assert(getPipelineBranchesitemPullRequest3.equals(getPipelineBranchesitemPullRequest4));
        System.assertEquals(getPipelineBranchesitemPullRequest1.hashCode(), getPipelineBranchesitemPullRequest2.hashCode());
        System.assertEquals(getPipelineBranchesitemPullRequest3.hashCode(), getPipelineBranchesitemPullRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGetPipelineBranchesitemPullReque getPipelineBranchesitemPullRequest = new SwagGetPipelineBranchesitemPullReque();
        Map<String, String> propertyMappings = getPipelineBranchesitemPullRequest.getPropertyMappings();
        System.assertEquals('links', propertyMappings.get('_links'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
