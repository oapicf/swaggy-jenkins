@isTest
private class OASPipelineRunNodeedgesTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunNodeedges pipelineRunNodeedges1 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges2 = pipelineRunNodeedges1;
        OASPipelineRunNodeedges pipelineRunNodeedges3 = new OASPipelineRunNodeedges();
        OASPipelineRunNodeedges pipelineRunNodeedges4 = pipelineRunNodeedges3;

        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges2));
        System.assert(pipelineRunNodeedges2.equals(pipelineRunNodeedges1));
        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges1));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges4));
        System.assert(pipelineRunNodeedges4.equals(pipelineRunNodeedges3));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunNodeedges pipelineRunNodeedges1 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges2 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges3 = new OASPipelineRunNodeedges();
        OASPipelineRunNodeedges pipelineRunNodeedges4 = new OASPipelineRunNodeedges();

        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges2));
        System.assert(pipelineRunNodeedges2.equals(pipelineRunNodeedges1));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges4));
        System.assert(pipelineRunNodeedges4.equals(pipelineRunNodeedges3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunNodeedges pipelineRunNodeedges1 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges2 = new OASPipelineRunNodeedges();

        System.assertEquals(false, pipelineRunNodeedges1.equals('foo'));
        System.assertEquals(false, pipelineRunNodeedges2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunNodeedges pipelineRunNodeedges1 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges2 = new OASPipelineRunNodeedges();
        OASPipelineRunNodeedges pipelineRunNodeedges3;

        System.assertEquals(false, pipelineRunNodeedges1.equals(pipelineRunNodeedges3));
        System.assertEquals(false, pipelineRunNodeedges2.equals(pipelineRunNodeedges3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunNodeedges pipelineRunNodeedges1 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges2 = new OASPipelineRunNodeedges();

        System.assertEquals(pipelineRunNodeedges1.hashCode(), pipelineRunNodeedges1.hashCode());
        System.assertEquals(pipelineRunNodeedges2.hashCode(), pipelineRunNodeedges2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunNodeedges pipelineRunNodeedges1 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges2 = OASPipelineRunNodeedges.getExample();
        OASPipelineRunNodeedges pipelineRunNodeedges3 = new OASPipelineRunNodeedges();
        OASPipelineRunNodeedges pipelineRunNodeedges4 = new OASPipelineRunNodeedges();

        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges2));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges4));
        System.assertEquals(pipelineRunNodeedges1.hashCode(), pipelineRunNodeedges2.hashCode());
        System.assertEquals(pipelineRunNodeedges3.hashCode(), pipelineRunNodeedges4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineRunNodeedges pipelineRunNodeedges = new OASPipelineRunNodeedges();
        Map<String, String> x-property-mappings = pipelineRunNodeedges.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
