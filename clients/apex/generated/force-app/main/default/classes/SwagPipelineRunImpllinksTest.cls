@isTest
private class SwagPipelineRunImpllinksTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunImpllinks pipelineRunImpllinks1 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks2 = pipelineRunImpllinks1;
        SwagPipelineRunImpllinks pipelineRunImpllinks3 = new SwagPipelineRunImpllinks();
        SwagPipelineRunImpllinks pipelineRunImpllinks4 = pipelineRunImpllinks3;

        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks2));
        System.assert(pipelineRunImpllinks2.equals(pipelineRunImpllinks1));
        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks1));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks4));
        System.assert(pipelineRunImpllinks4.equals(pipelineRunImpllinks3));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunImpllinks pipelineRunImpllinks1 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks2 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks3 = new SwagPipelineRunImpllinks();
        SwagPipelineRunImpllinks pipelineRunImpllinks4 = new SwagPipelineRunImpllinks();

        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks2));
        System.assert(pipelineRunImpllinks2.equals(pipelineRunImpllinks1));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks4));
        System.assert(pipelineRunImpllinks4.equals(pipelineRunImpllinks3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunImpllinks pipelineRunImpllinks1 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks2 = new SwagPipelineRunImpllinks();

        System.assertEquals(false, pipelineRunImpllinks1.equals(pipelineRunImpllinks2));
        System.assertEquals(false, pipelineRunImpllinks2.equals(pipelineRunImpllinks1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunImpllinks pipelineRunImpllinks1 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks2 = new SwagPipelineRunImpllinks();

        System.assertEquals(false, pipelineRunImpllinks1.equals('foo'));
        System.assertEquals(false, pipelineRunImpllinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunImpllinks pipelineRunImpllinks1 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks2 = new SwagPipelineRunImpllinks();
        SwagPipelineRunImpllinks pipelineRunImpllinks3;

        System.assertEquals(false, pipelineRunImpllinks1.equals(pipelineRunImpllinks3));
        System.assertEquals(false, pipelineRunImpllinks2.equals(pipelineRunImpllinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunImpllinks pipelineRunImpllinks1 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks2 = new SwagPipelineRunImpllinks();

        System.assertEquals(pipelineRunImpllinks1.hashCode(), pipelineRunImpllinks1.hashCode());
        System.assertEquals(pipelineRunImpllinks2.hashCode(), pipelineRunImpllinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunImpllinks pipelineRunImpllinks1 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks2 = SwagPipelineRunImpllinks.getExample();
        SwagPipelineRunImpllinks pipelineRunImpllinks3 = new SwagPipelineRunImpllinks();
        SwagPipelineRunImpllinks pipelineRunImpllinks4 = new SwagPipelineRunImpllinks();

        System.assert(pipelineRunImpllinks1.equals(pipelineRunImpllinks2));
        System.assert(pipelineRunImpllinks3.equals(pipelineRunImpllinks4));
        System.assertEquals(pipelineRunImpllinks1.hashCode(), pipelineRunImpllinks2.hashCode());
        System.assertEquals(pipelineRunImpllinks3.hashCode(), pipelineRunImpllinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineRunImpllinks pipelineRunImpllinks = new SwagPipelineRunImpllinks();
        Map<String, String> propertyMappings = pipelineRunImpllinks.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
