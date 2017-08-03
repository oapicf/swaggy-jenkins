@isTest
private class SwagPipelineRunNodeTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunNode pipelineRunNode1 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode2 = pipelineRunNode1;
        SwagPipelineRunNode pipelineRunNode3 = new SwagPipelineRunNode();
        SwagPipelineRunNode pipelineRunNode4 = pipelineRunNode3;

        System.assert(pipelineRunNode1.equals(pipelineRunNode2));
        System.assert(pipelineRunNode2.equals(pipelineRunNode1));
        System.assert(pipelineRunNode1.equals(pipelineRunNode1));
        System.assert(pipelineRunNode3.equals(pipelineRunNode4));
        System.assert(pipelineRunNode4.equals(pipelineRunNode3));
        System.assert(pipelineRunNode3.equals(pipelineRunNode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunNode pipelineRunNode1 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode2 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode3 = new SwagPipelineRunNode();
        SwagPipelineRunNode pipelineRunNode4 = new SwagPipelineRunNode();

        System.assert(pipelineRunNode1.equals(pipelineRunNode2));
        System.assert(pipelineRunNode2.equals(pipelineRunNode1));
        System.assert(pipelineRunNode3.equals(pipelineRunNode4));
        System.assert(pipelineRunNode4.equals(pipelineRunNode3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunNode pipelineRunNode1 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode2 = new SwagPipelineRunNode();

        System.assertEquals(false, pipelineRunNode1.equals(pipelineRunNode2));
        System.assertEquals(false, pipelineRunNode2.equals(pipelineRunNode1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunNode pipelineRunNode1 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode2 = new SwagPipelineRunNode();

        System.assertEquals(false, pipelineRunNode1.equals('foo'));
        System.assertEquals(false, pipelineRunNode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunNode pipelineRunNode1 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode2 = new SwagPipelineRunNode();
        SwagPipelineRunNode pipelineRunNode3;

        System.assertEquals(false, pipelineRunNode1.equals(pipelineRunNode3));
        System.assertEquals(false, pipelineRunNode2.equals(pipelineRunNode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunNode pipelineRunNode1 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode2 = new SwagPipelineRunNode();

        System.assertEquals(pipelineRunNode1.hashCode(), pipelineRunNode1.hashCode());
        System.assertEquals(pipelineRunNode2.hashCode(), pipelineRunNode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunNode pipelineRunNode1 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode2 = SwagPipelineRunNode.getExample();
        SwagPipelineRunNode pipelineRunNode3 = new SwagPipelineRunNode();
        SwagPipelineRunNode pipelineRunNode4 = new SwagPipelineRunNode();

        System.assert(pipelineRunNode1.equals(pipelineRunNode2));
        System.assert(pipelineRunNode3.equals(pipelineRunNode4));
        System.assertEquals(pipelineRunNode1.hashCode(), pipelineRunNode2.hashCode());
        System.assertEquals(pipelineRunNode3.hashCode(), pipelineRunNode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineRunNode pipelineRunNode = new SwagPipelineRunNode();
        Map<String, String> propertyMappings = pipelineRunNode.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPipelineRunNode pipelineRunNode = new SwagPipelineRunNode();
        System.assertEquals(new List<SwagPipelineRunNodeedges>(), pipelineRunNode.edges);
        System.assertEquals(null, pipelineRunNode.propertyClass);
        System.assertEquals(null, pipelineRunNode.displayName);
        System.assertEquals(null, pipelineRunNode.durationInMillis);
        System.assertEquals(null, pipelineRunNode.id);
        System.assertEquals(null, pipelineRunNode.result);
        System.assertEquals(null, pipelineRunNode.startTime);
        System.assertEquals(null, pipelineRunNode.state);
    }
}
