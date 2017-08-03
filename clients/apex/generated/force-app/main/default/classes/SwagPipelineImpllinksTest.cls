@isTest
private class SwagPipelineImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineImpllinks pipelineImpllinks1 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks2 = pipelineImpllinks1;
        SwagPipelineImpllinks pipelineImpllinks3 = new SwagPipelineImpllinks();
        SwagPipelineImpllinks pipelineImpllinks4 = pipelineImpllinks3;

        System.assert(pipelineImpllinks1.equals(pipelineImpllinks2));
        System.assert(pipelineImpllinks2.equals(pipelineImpllinks1));
        System.assert(pipelineImpllinks1.equals(pipelineImpllinks1));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks4));
        System.assert(pipelineImpllinks4.equals(pipelineImpllinks3));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineImpllinks pipelineImpllinks1 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks2 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks3 = new SwagPipelineImpllinks();
        SwagPipelineImpllinks pipelineImpllinks4 = new SwagPipelineImpllinks();

        System.assert(pipelineImpllinks1.equals(pipelineImpllinks2));
        System.assert(pipelineImpllinks2.equals(pipelineImpllinks1));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks4));
        System.assert(pipelineImpllinks4.equals(pipelineImpllinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineImpllinks pipelineImpllinks1 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks2 = new SwagPipelineImpllinks();

        System.assertEquals(false, pipelineImpllinks1.equals(pipelineImpllinks2));
        System.assertEquals(false, pipelineImpllinks2.equals(pipelineImpllinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineImpllinks pipelineImpllinks1 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks2 = new SwagPipelineImpllinks();

        System.assertEquals(false, pipelineImpllinks1.equals('foo'));
        System.assertEquals(false, pipelineImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineImpllinks pipelineImpllinks1 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks2 = new SwagPipelineImpllinks();
        SwagPipelineImpllinks pipelineImpllinks3;

        System.assertEquals(false, pipelineImpllinks1.equals(pipelineImpllinks3));
        System.assertEquals(false, pipelineImpllinks2.equals(pipelineImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineImpllinks pipelineImpllinks1 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks2 = new SwagPipelineImpllinks();

        System.assertEquals(pipelineImpllinks1.hashCode(), pipelineImpllinks1.hashCode());
        System.assertEquals(pipelineImpllinks2.hashCode(), pipelineImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineImpllinks pipelineImpllinks1 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks2 = SwagPipelineImpllinks.getExample();
        SwagPipelineImpllinks pipelineImpllinks3 = new SwagPipelineImpllinks();
        SwagPipelineImpllinks pipelineImpllinks4 = new SwagPipelineImpllinks();

        System.assert(pipelineImpllinks1.equals(pipelineImpllinks2));
        System.assert(pipelineImpllinks3.equals(pipelineImpllinks4));
        System.assertEquals(pipelineImpllinks1.hashCode(), pipelineImpllinks2.hashCode());
        System.assertEquals(pipelineImpllinks3.hashCode(), pipelineImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineImpllinks pipelineImpllinks = new SwagPipelineImpllinks();
        Map<String, String> propertyMappings = pipelineImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
