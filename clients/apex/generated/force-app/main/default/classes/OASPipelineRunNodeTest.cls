@isTest
private class OASPipelineRunNodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunNode pipelineRunNode1 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode2 = pipelineRunNode1;
        OASPipelineRunNode pipelineRunNode3 = new OASPipelineRunNode();
        OASPipelineRunNode pipelineRunNode4 = pipelineRunNode3;

        System.assert(pipelineRunNode1.equals(pipelineRunNode2));
        System.assert(pipelineRunNode2.equals(pipelineRunNode1));
        System.assert(pipelineRunNode1.equals(pipelineRunNode1));
        System.assert(pipelineRunNode3.equals(pipelineRunNode4));
        System.assert(pipelineRunNode4.equals(pipelineRunNode3));
        System.assert(pipelineRunNode3.equals(pipelineRunNode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunNode pipelineRunNode1 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode2 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode3 = new OASPipelineRunNode();
        OASPipelineRunNode pipelineRunNode4 = new OASPipelineRunNode();

        System.assert(pipelineRunNode1.equals(pipelineRunNode2));
        System.assert(pipelineRunNode2.equals(pipelineRunNode1));
        System.assert(pipelineRunNode3.equals(pipelineRunNode4));
        System.assert(pipelineRunNode4.equals(pipelineRunNode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunNode pipelineRunNode1 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode2 = new OASPipelineRunNode();

        System.assertEquals(false, pipelineRunNode1.equals('foo'));
        System.assertEquals(false, pipelineRunNode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunNode pipelineRunNode1 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode2 = new OASPipelineRunNode();
        OASPipelineRunNode pipelineRunNode3;

        System.assertEquals(false, pipelineRunNode1.equals(pipelineRunNode3));
        System.assertEquals(false, pipelineRunNode2.equals(pipelineRunNode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunNode pipelineRunNode1 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode2 = new OASPipelineRunNode();

        System.assertEquals(pipelineRunNode1.hashCode(), pipelineRunNode1.hashCode());
        System.assertEquals(pipelineRunNode2.hashCode(), pipelineRunNode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunNode pipelineRunNode1 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode2 = OASPipelineRunNode.getExample();
        OASPipelineRunNode pipelineRunNode3 = new OASPipelineRunNode();
        OASPipelineRunNode pipelineRunNode4 = new OASPipelineRunNode();

        System.assert(pipelineRunNode1.equals(pipelineRunNode2));
        System.assert(pipelineRunNode3.equals(pipelineRunNode4));
        System.assertEquals(pipelineRunNode1.hashCode(), pipelineRunNode2.hashCode());
        System.assertEquals(pipelineRunNode3.hashCode(), pipelineRunNode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineRunNode pipelineRunNode = new OASPipelineRunNode();
        Map<String, String> x-property-mappings = pipelineRunNode.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPipelineRunNode pipelineRunNode = new OASPipelineRunNode();
        System.assertEquals(new List<OASPipelineRunNodeedges>(), pipelineRunNode.edges);
        System.assertEquals(null, pipelineRunNode.propertyClass);
        System.assertEquals(null, pipelineRunNode.displayName);
        System.assertEquals(null, pipelineRunNode.durationInMillis);
        System.assertEquals(null, pipelineRunNode.id);
        System.assertEquals(null, pipelineRunNode.result);
        System.assertEquals(null, pipelineRunNode.startTime);
        System.assertEquals(null, pipelineRunNode.state);
    }
}
