@isTest
private class SwagPipelineBranchesitempullRequestTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = pipelineBranchesitempullRequest1;
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest3 = new SwagPipelineBranchesitempullRequest();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest4 = pipelineBranchesitempullRequest3;

        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest2));
        System.assert(pipelineBranchesitempullRequest2.equals(pipelineBranchesitempullRequest1));
        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest1));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest4));
        System.assert(pipelineBranchesitempullRequest4.equals(pipelineBranchesitempullRequest3));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest3 = new SwagPipelineBranchesitempullRequest();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest4 = new SwagPipelineBranchesitempullRequest();

        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest2));
        System.assert(pipelineBranchesitempullRequest2.equals(pipelineBranchesitempullRequest1));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest4));
        System.assert(pipelineBranchesitempullRequest4.equals(pipelineBranchesitempullRequest3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = new SwagPipelineBranchesitempullRequest();

        System.assertEquals(false, pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest2));
        System.assertEquals(false, pipelineBranchesitempullRequest2.equals(pipelineBranchesitempullRequest1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = new SwagPipelineBranchesitempullRequest();

        System.assertEquals(false, pipelineBranchesitempullRequest1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitempullRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = new SwagPipelineBranchesitempullRequest();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest3;

        System.assertEquals(false, pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest3));
        System.assertEquals(false, pipelineBranchesitempullRequest2.equals(pipelineBranchesitempullRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = new SwagPipelineBranchesitempullRequest();

        System.assertEquals(pipelineBranchesitempullRequest1.hashCode(), pipelineBranchesitempullRequest1.hashCode());
        System.assertEquals(pipelineBranchesitempullRequest2.hashCode(), pipelineBranchesitempullRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = SwagPipelineBranchesitempullRequest.getExample();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest3 = new SwagPipelineBranchesitempullRequest();
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest4 = new SwagPipelineBranchesitempullRequest();

        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest2));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest4));
        System.assertEquals(pipelineBranchesitempullRequest1.hashCode(), pipelineBranchesitempullRequest2.hashCode());
        System.assertEquals(pipelineBranchesitempullRequest3.hashCode(), pipelineBranchesitempullRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineBranchesitempullRequest pipelineBranchesitempullRequest = new SwagPipelineBranchesitempullRequest();
        Map<String, String> propertyMappings = pipelineBranchesitempullRequest.getPropertyMappings();
        System.assertEquals('links', propertyMappings.get('_links'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
