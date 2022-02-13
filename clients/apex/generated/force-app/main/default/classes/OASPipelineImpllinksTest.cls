@isTest
private class OASPipelineImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineImpllinks pipelineImpllinks1 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks2 = pipelineImpllinks1;
        OASPipelineImpllinks pipelineImpllinks3 = new OASPipelineImpllinks();
        OASPipelineImpllinks pipelineImpllinks4 = pipelineImpllinks3;

        System.assert(pipelineImpllinks1.equals(pipelineImpllinks2));
        System.assert(pipelineImpllinks2.equals(pipelineImpllinks1));
        System.assert(pipelineImpllinks1.equals(pipelineImpllinks1));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks4));
        System.assert(pipelineImpllinks4.equals(pipelineImpllinks3));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineImpllinks pipelineImpllinks1 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks2 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks3 = new OASPipelineImpllinks();
        OASPipelineImpllinks pipelineImpllinks4 = new OASPipelineImpllinks();

        System.assert(pipelineImpllinks1.equals(pipelineImpllinks2));
        System.assert(pipelineImpllinks2.equals(pipelineImpllinks1));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks4));
        System.assert(pipelineImpllinks4.equals(pipelineImpllinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineImpllinks pipelineImpllinks1 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks2 = new OASPipelineImpllinks();

        System.assertEquals(false, pipelineImpllinks1.equals('foo'));
        System.assertEquals(false, pipelineImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineImpllinks pipelineImpllinks1 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks2 = new OASPipelineImpllinks();
        OASPipelineImpllinks pipelineImpllinks3;

        System.assertEquals(false, pipelineImpllinks1.equals(pipelineImpllinks3));
        System.assertEquals(false, pipelineImpllinks2.equals(pipelineImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineImpllinks pipelineImpllinks1 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks2 = new OASPipelineImpllinks();

        System.assertEquals(pipelineImpllinks1.hashCode(), pipelineImpllinks1.hashCode());
        System.assertEquals(pipelineImpllinks2.hashCode(), pipelineImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineImpllinks pipelineImpllinks1 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks2 = OASPipelineImpllinks.getExample();
        OASPipelineImpllinks pipelineImpllinks3 = new OASPipelineImpllinks();
        OASPipelineImpllinks pipelineImpllinks4 = new OASPipelineImpllinks();

        System.assert(pipelineImpllinks1.equals(pipelineImpllinks2));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks4));
        System.assertEquals(pipelineImpllinks1.hashCode(), pipelineImpllinks2.hashCode());
        System.assertEquals(pipelineImpllinks3.hashCode(), pipelineImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineImpllinks pipelineImpllinks = new OASPipelineImpllinks();
        Map<String, String> x-property-mappings = pipelineImpllinks.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
