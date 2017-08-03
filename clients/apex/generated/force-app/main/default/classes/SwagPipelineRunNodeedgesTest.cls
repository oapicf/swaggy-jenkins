@isTest
private class SwagPipelineRunNodeedgesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunNodeedges pipelineRunNodeedges1 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges2 = pipelineRunNodeedges1;
        SwagPipelineRunNodeedges pipelineRunNodeedges3 = new SwagPipelineRunNodeedges();
        SwagPipelineRunNodeedges pipelineRunNodeedges4 = pipelineRunNodeedges3;

        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges2));
        System.assert(pipelineRunNodeedges2.equals(pipelineRunNodeedges1));
        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges1));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges4));
        System.assert(pipelineRunNodeedges4.equals(pipelineRunNodeedges3));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunNodeedges pipelineRunNodeedges1 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges2 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges3 = new SwagPipelineRunNodeedges();
        SwagPipelineRunNodeedges pipelineRunNodeedges4 = new SwagPipelineRunNodeedges();

        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges2));
        System.assert(pipelineRunNodeedges2.equals(pipelineRunNodeedges1));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges4));
        System.assert(pipelineRunNodeedges4.equals(pipelineRunNodeedges3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunNodeedges pipelineRunNodeedges1 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges2 = new SwagPipelineRunNodeedges();

        System.assertEquals(false, pipelineRunNodeedges1.equals(pipelineRunNodeedges2));
        System.assertEquals(false, pipelineRunNodeedges2.equals(pipelineRunNodeedges1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunNodeedges pipelineRunNodeedges1 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges2 = new SwagPipelineRunNodeedges();

        System.assertEquals(false, pipelineRunNodeedges1.equals('foo'));
        System.assertEquals(false, pipelineRunNodeedges2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunNodeedges pipelineRunNodeedges1 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges2 = new SwagPipelineRunNodeedges();
        SwagPipelineRunNodeedges pipelineRunNodeedges3;

        System.assertEquals(false, pipelineRunNodeedges1.equals(pipelineRunNodeedges3));
        System.assertEquals(false, pipelineRunNodeedges2.equals(pipelineRunNodeedges3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunNodeedges pipelineRunNodeedges1 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges2 = new SwagPipelineRunNodeedges();

        System.assertEquals(pipelineRunNodeedges1.hashCode(), pipelineRunNodeedges1.hashCode());
        System.assertEquals(pipelineRunNodeedges2.hashCode(), pipelineRunNodeedges2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunNodeedges pipelineRunNodeedges1 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges2 = SwagPipelineRunNodeedges.getExample();
        SwagPipelineRunNodeedges pipelineRunNodeedges3 = new SwagPipelineRunNodeedges();
        SwagPipelineRunNodeedges pipelineRunNodeedges4 = new SwagPipelineRunNodeedges();

        System.assert(pipelineRunNodeedges1.equals(pipelineRunNodeedges2));
        System.assert(pipelineRunNodeedges3.equals(pipelineRunNodeedges4));
        System.assertEquals(pipelineRunNodeedges1.hashCode(), pipelineRunNodeedges2.hashCode());
        System.assertEquals(pipelineRunNodeedges3.hashCode(), pipelineRunNodeedges4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineRunNodeedges pipelineRunNodeedges = new SwagPipelineRunNodeedges();
        Map<String, String> propertyMappings = pipelineRunNodeedges.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
