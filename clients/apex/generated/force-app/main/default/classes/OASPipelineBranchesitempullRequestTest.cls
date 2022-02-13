@isTest
private class OASPipelineBranchesitempullRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = pipelineBranchesitempullRequest1;
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest3 = new OASPipelineBranchesitempullRequest();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest4 = pipelineBranchesitempullRequest3;

        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest2));
        System.assert(pipelineBranchesitempullRequest2.equals(pipelineBranchesitempullRequest1));
        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest1));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest4));
        System.assert(pipelineBranchesitempullRequest4.equals(pipelineBranchesitempullRequest3));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest3 = new OASPipelineBranchesitempullRequest();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest4 = new OASPipelineBranchesitempullRequest();

        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest2));
        System.assert(pipelineBranchesitempullRequest2.equals(pipelineBranchesitempullRequest1));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest4));
        System.assert(pipelineBranchesitempullRequest4.equals(pipelineBranchesitempullRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = new OASPipelineBranchesitempullRequest();

        System.assertEquals(false, pipelineBranchesitempullRequest1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitempullRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = new OASPipelineBranchesitempullRequest();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest3;

        System.assertEquals(false, pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest3));
        System.assertEquals(false, pipelineBranchesitempullRequest2.equals(pipelineBranchesitempullRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = new OASPipelineBranchesitempullRequest();

        System.assertEquals(pipelineBranchesitempullRequest1.hashCode(), pipelineBranchesitempullRequest1.hashCode());
        System.assertEquals(pipelineBranchesitempullRequest2.hashCode(), pipelineBranchesitempullRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest1 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest2 = OASPipelineBranchesitempullRequest.getExample();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest3 = new OASPipelineBranchesitempullRequest();
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest4 = new OASPipelineBranchesitempullRequest();

        System.assert(pipelineBranchesitempullRequest1.equals(pipelineBranchesitempullRequest2));
        System.assert(pipelineBranchesitempullRequest3.equals(pipelineBranchesitempullRequest4));
        System.assertEquals(pipelineBranchesitempullRequest1.hashCode(), pipelineBranchesitempullRequest2.hashCode());
        System.assertEquals(pipelineBranchesitempullRequest3.hashCode(), pipelineBranchesitempullRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineBranchesitempullRequest pipelineBranchesitempullRequest = new OASPipelineBranchesitempullRequest();
        Map<String, String> x-property-mappings = pipelineBranchesitempullRequest.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
