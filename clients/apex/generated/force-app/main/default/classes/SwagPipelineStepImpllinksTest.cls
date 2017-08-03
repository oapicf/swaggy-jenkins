@isTest
private class SwagPipelineStepImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineStepImpllinks pipelineStepImpllinks1 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks2 = pipelineStepImpllinks1;
        SwagPipelineStepImpllinks pipelineStepImpllinks3 = new SwagPipelineStepImpllinks();
        SwagPipelineStepImpllinks pipelineStepImpllinks4 = pipelineStepImpllinks3;

        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks2));
        System.assert(pipelineStepImpllinks2.equals(pipelineStepImpllinks1));
        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks1));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks4));
        System.assert(pipelineStepImpllinks4.equals(pipelineStepImpllinks3));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineStepImpllinks pipelineStepImpllinks1 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks2 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks3 = new SwagPipelineStepImpllinks();
        SwagPipelineStepImpllinks pipelineStepImpllinks4 = new SwagPipelineStepImpllinks();

        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks2));
        System.assert(pipelineStepImpllinks2.equals(pipelineStepImpllinks1));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks4));
        System.assert(pipelineStepImpllinks4.equals(pipelineStepImpllinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineStepImpllinks pipelineStepImpllinks1 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks2 = new SwagPipelineStepImpllinks();

        System.assertEquals(false, pipelineStepImpllinks1.equals(pipelineStepImpllinks2));
        System.assertEquals(false, pipelineStepImpllinks2.equals(pipelineStepImpllinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineStepImpllinks pipelineStepImpllinks1 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks2 = new SwagPipelineStepImpllinks();

        System.assertEquals(false, pipelineStepImpllinks1.equals('foo'));
        System.assertEquals(false, pipelineStepImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineStepImpllinks pipelineStepImpllinks1 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks2 = new SwagPipelineStepImpllinks();
        SwagPipelineStepImpllinks pipelineStepImpllinks3;

        System.assertEquals(false, pipelineStepImpllinks1.equals(pipelineStepImpllinks3));
        System.assertEquals(false, pipelineStepImpllinks2.equals(pipelineStepImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineStepImpllinks pipelineStepImpllinks1 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks2 = new SwagPipelineStepImpllinks();

        System.assertEquals(pipelineStepImpllinks1.hashCode(), pipelineStepImpllinks1.hashCode());
        System.assertEquals(pipelineStepImpllinks2.hashCode(), pipelineStepImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineStepImpllinks pipelineStepImpllinks1 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks2 = SwagPipelineStepImpllinks.getExample();
        SwagPipelineStepImpllinks pipelineStepImpllinks3 = new SwagPipelineStepImpllinks();
        SwagPipelineStepImpllinks pipelineStepImpllinks4 = new SwagPipelineStepImpllinks();

        System.assert(pipelineStepImpllinks1.equals(pipelineStepImpllinks2));
        System.assert(pipelineStepImpllinks3.equals(pipelineStepImpllinks4));
        System.assertEquals(pipelineStepImpllinks1.hashCode(), pipelineStepImpllinks2.hashCode());
        System.assertEquals(pipelineStepImpllinks3.hashCode(), pipelineStepImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineStepImpllinks pipelineStepImpllinks = new SwagPipelineStepImpllinks();
        Map<String, String> propertyMappings = pipelineStepImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
