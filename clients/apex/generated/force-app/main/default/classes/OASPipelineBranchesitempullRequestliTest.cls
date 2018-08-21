@isTest
private class OASPipelineBranchesitempullRequestliTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks1 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks2 = pipelineBranchesitempullRequestlinks1;
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks3 = new OASPipelineBranchesitempullRequestli();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks4 = pipelineBranchesitempullRequestlinks3;

        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks2));
        System.assert(pipelineBranchesitempullRequestlinks2.equals(pipelineBranchesitempullRequestlinks1));
        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks1));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks4));
        System.assert(pipelineBranchesitempullRequestlinks4.equals(pipelineBranchesitempullRequestlinks3));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks1 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks2 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks3 = new OASPipelineBranchesitempullRequestli();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks4 = new OASPipelineBranchesitempullRequestli();

        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks2));
        System.assert(pipelineBranchesitempullRequestlinks2.equals(pipelineBranchesitempullRequestlinks1));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks4));
        System.assert(pipelineBranchesitempullRequestlinks4.equals(pipelineBranchesitempullRequestlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks1 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks2 = new OASPipelineBranchesitempullRequestli();

        System.assertEquals(false, pipelineBranchesitempullRequestlinks1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitempullRequestlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks1 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks2 = new OASPipelineBranchesitempullRequestli();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks3;

        System.assertEquals(false, pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks3));
        System.assertEquals(false, pipelineBranchesitempullRequestlinks2.equals(pipelineBranchesitempullRequestlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks1 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks2 = new OASPipelineBranchesitempullRequestli();

        System.assertEquals(pipelineBranchesitempullRequestlinks1.hashCode(), pipelineBranchesitempullRequestlinks1.hashCode());
        System.assertEquals(pipelineBranchesitempullRequestlinks2.hashCode(), pipelineBranchesitempullRequestlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks1 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks2 = OASPipelineBranchesitempullRequestli.getExample();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks3 = new OASPipelineBranchesitempullRequestli();
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks4 = new OASPipelineBranchesitempullRequestli();

        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks2));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks4));
        System.assertEquals(pipelineBranchesitempullRequestlinks1.hashCode(), pipelineBranchesitempullRequestlinks2.hashCode());
        System.assertEquals(pipelineBranchesitempullRequestlinks3.hashCode(), pipelineBranchesitempullRequestlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineBranchesitempullRequestli pipelineBranchesitempullRequestlinks = new OASPipelineBranchesitempullRequestli();
        Map<String, String> propertyMappings = pipelineBranchesitempullRequestlinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
