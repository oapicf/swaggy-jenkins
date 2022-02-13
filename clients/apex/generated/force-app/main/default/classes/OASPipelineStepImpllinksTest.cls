@isTest
private class OASPipelineStepImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineStepImpllinks pipelineStepImpllinks1 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks2 = pipelineStepImpllinks1;
        OASPipelineStepImpllinks pipelineStepImpllinks3 = new OASPipelineStepImpllinks();
        OASPipelineStepImpllinks pipelineStepImpllinks4 = pipelineStepImpllinks3;

        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks2));
        System.assert(pipelineStepImpllinks2.equals(pipelineStepImpllinks1));
        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks1));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks4));
        System.assert(pipelineStepImpllinks4.equals(pipelineStepImpllinks3));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineStepImpllinks pipelineStepImpllinks1 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks2 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks3 = new OASPipelineStepImpllinks();
        OASPipelineStepImpllinks pipelineStepImpllinks4 = new OASPipelineStepImpllinks();

        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks2));
        System.assert(pipelineStepImpllinks2.equals(pipelineStepImpllinks1));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks4));
        System.assert(pipelineStepImpllinks4.equals(pipelineStepImpllinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineStepImpllinks pipelineStepImpllinks1 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks2 = new OASPipelineStepImpllinks();

        System.assertEquals(false, pipelineStepImpllinks1.equals('foo'));
        System.assertEquals(false, pipelineStepImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineStepImpllinks pipelineStepImpllinks1 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks2 = new OASPipelineStepImpllinks();
        OASPipelineStepImpllinks pipelineStepImpllinks3;

        System.assertEquals(false, pipelineStepImpllinks1.equals(pipelineStepImpllinks3));
        System.assertEquals(false, pipelineStepImpllinks2.equals(pipelineStepImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineStepImpllinks pipelineStepImpllinks1 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks2 = new OASPipelineStepImpllinks();

        System.assertEquals(pipelineStepImpllinks1.hashCode(), pipelineStepImpllinks1.hashCode());
        System.assertEquals(pipelineStepImpllinks2.hashCode(), pipelineStepImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineStepImpllinks pipelineStepImpllinks1 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks2 = OASPipelineStepImpllinks.getExample();
        OASPipelineStepImpllinks pipelineStepImpllinks3 = new OASPipelineStepImpllinks();
        OASPipelineStepImpllinks pipelineStepImpllinks4 = new OASPipelineStepImpllinks();

        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks2));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks4));
        System.assertEquals(pipelineStepImpllinks1.hashCode(), pipelineStepImpllinks2.hashCode());
        System.assertEquals(pipelineStepImpllinks3.hashCode(), pipelineStepImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineStepImpllinks pipelineStepImpllinks = new OASPipelineStepImpllinks();
        Map<String, String> x-property-mappings = pipelineStepImpllinks.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
