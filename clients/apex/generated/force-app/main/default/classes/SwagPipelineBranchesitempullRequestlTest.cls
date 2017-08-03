@isTest
private class SwagPipelineBranchesitempullRequestlTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks1 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks2 = pipelineBranchesitempullRequestlinks1;
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks3 = new SwagPipelineBranchesitempullRequestl();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks4 = pipelineBranchesitempullRequestlinks3;

        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks2));
        System.assert(pipelineBranchesitempullRequestlinks2.equals(pipelineBranchesitempullRequestlinks1));
        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks1));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks4));
        System.assert(pipelineBranchesitempullRequestlinks4.equals(pipelineBranchesitempullRequestlinks3));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks1 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks2 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks3 = new SwagPipelineBranchesitempullRequestl();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks4 = new SwagPipelineBranchesitempullRequestl();

        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks2));
        System.assert(pipelineBranchesitempullRequestlinks2.equals(pipelineBranchesitempullRequestlinks1));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks4));
        System.assert(pipelineBranchesitempullRequestlinks4.equals(pipelineBranchesitempullRequestlinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks1 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks2 = new SwagPipelineBranchesitempullRequestl();

        System.assertEquals(false, pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks2));
        System.assertEquals(false, pipelineBranchesitempullRequestlinks2.equals(pipelineBranchesitempullRequestlinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks1 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks2 = new SwagPipelineBranchesitempullRequestl();

        System.assertEquals(false, pipelineBranchesitempullRequestlinks1.equals('foo'));
        System.assertEquals(false, pipelineBranchesitempullRequestlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks1 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks2 = new SwagPipelineBranchesitempullRequestl();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks3;

        System.assertEquals(false, pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks3));
        System.assertEquals(false, pipelineBranchesitempullRequestlinks2.equals(pipelineBranchesitempullRequestlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks1 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks2 = new SwagPipelineBranchesitempullRequestl();

        System.assertEquals(pipelineBranchesitempullRequestlinks1.hashCode(), pipelineBranchesitempullRequestlinks1.hashCode());
        System.assertEquals(pipelineBranchesitempullRequestlinks2.hashCode(), pipelineBranchesitempullRequestlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks1 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks2 = SwagPipelineBranchesitempullRequestl.getExample();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks3 = new SwagPipelineBranchesitempullRequestl();
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks4 = new SwagPipelineBranchesitempullRequestl();

        System.assert(pipelineBranchesitempullRequestlinks1.equals(pipelineBranchesitempullRequestlinks2));
        System.assert(pipelineBranchesitempullRequestlinks3.equals(pipelineBranchesitempullRequestlinks4));
        System.assertEquals(pipelineBranchesitempullRequestlinks1.hashCode(), pipelineBranchesitempullRequestlinks2.hashCode());
        System.assertEquals(pipelineBranchesitempullRequestlinks3.hashCode(), pipelineBranchesitempullRequestlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineBranchesitempullRequestl pipelineBranchesitempullRequestlinks = new SwagPipelineBranchesitempullRequestl();
        Map<String, String> propertyMappings = pipelineBranchesitempullRequestlinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
