@isTest
private class OASPipelineRunImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunImpllinks pipelineRunImpllinks1 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks2 = pipelineRunImpllinks1;
        OASPipelineRunImpllinks pipelineRunImpllinks3 = new OASPipelineRunImpllinks();
        OASPipelineRunImpllinks pipelineRunImpllinks4 = pipelineRunImpllinks3;

        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks2));
        System.assert(pipelineRunImpllinks2.equals(pipelineRunImpllinks1));
        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks1));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks4));
        System.assert(pipelineRunImpllinks4.equals(pipelineRunImpllinks3));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunImpllinks pipelineRunImpllinks1 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks2 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks3 = new OASPipelineRunImpllinks();
        OASPipelineRunImpllinks pipelineRunImpllinks4 = new OASPipelineRunImpllinks();

        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks2));
        System.assert(pipelineRunImpllinks2.equals(pipelineRunImpllinks1));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks4));
        System.assert(pipelineRunImpllinks4.equals(pipelineRunImpllinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunImpllinks pipelineRunImpllinks1 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks2 = new OASPipelineRunImpllinks();

        System.assertEquals(false, pipelineRunImpllinks1.equals('foo'));
        System.assertEquals(false, pipelineRunImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunImpllinks pipelineRunImpllinks1 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks2 = new OASPipelineRunImpllinks();
        OASPipelineRunImpllinks pipelineRunImpllinks3;

        System.assertEquals(false, pipelineRunImpllinks1.equals(pipelineRunImpllinks3));
        System.assertEquals(false, pipelineRunImpllinks2.equals(pipelineRunImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunImpllinks pipelineRunImpllinks1 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks2 = new OASPipelineRunImpllinks();

        System.assertEquals(pipelineRunImpllinks1.hashCode(), pipelineRunImpllinks1.hashCode());
        System.assertEquals(pipelineRunImpllinks2.hashCode(), pipelineRunImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunImpllinks pipelineRunImpllinks1 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks2 = OASPipelineRunImpllinks.getExample();
        OASPipelineRunImpllinks pipelineRunImpllinks3 = new OASPipelineRunImpllinks();
        OASPipelineRunImpllinks pipelineRunImpllinks4 = new OASPipelineRunImpllinks();

        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks2));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks4));
        System.assertEquals(pipelineRunImpllinks1.hashCode(), pipelineRunImpllinks2.hashCode());
        System.assertEquals(pipelineRunImpllinks3.hashCode(), pipelineRunImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineRunImpllinks pipelineRunImpllinks = new OASPipelineRunImpllinks();
        Map<String, String> propertyMappings = pipelineRunImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
