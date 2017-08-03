@isTest
private class SwagPipelineStepImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineStepImpl pipelineStepImpl1 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl2 = pipelineStepImpl1;
        SwagPipelineStepImpl pipelineStepImpl3 = new SwagPipelineStepImpl();
        SwagPipelineStepImpl pipelineStepImpl4 = pipelineStepImpl3;

        System.assert(pipelineStepImpl1.equals(pipelineStepImpl2));
        System.assert(pipelineStepImpl2.equals(pipelineStepImpl1));
        System.assert(pipelineStepImpl1.equals(pipelineStepImpl1));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl4));
        System.assert(pipelineStepImpl4.equals(pipelineStepImpl3));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineStepImpl pipelineStepImpl1 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl2 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl3 = new SwagPipelineStepImpl();
        SwagPipelineStepImpl pipelineStepImpl4 = new SwagPipelineStepImpl();

        System.assert(pipelineStepImpl1.equals(pipelineStepImpl2));
        System.assert(pipelineStepImpl2.equals(pipelineStepImpl1));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl4));
        System.assert(pipelineStepImpl4.equals(pipelineStepImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineStepImpl pipelineStepImpl1 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl2 = new SwagPipelineStepImpl();

        System.assertEquals(false, pipelineStepImpl1.equals(pipelineStepImpl2));
        System.assertEquals(false, pipelineStepImpl2.equals(pipelineStepImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineStepImpl pipelineStepImpl1 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl2 = new SwagPipelineStepImpl();

        System.assertEquals(false, pipelineStepImpl1.equals('foo'));
        System.assertEquals(false, pipelineStepImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineStepImpl pipelineStepImpl1 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl2 = new SwagPipelineStepImpl();
        SwagPipelineStepImpl pipelineStepImpl3;

        System.assertEquals(false, pipelineStepImpl1.equals(pipelineStepImpl3));
        System.assertEquals(false, pipelineStepImpl2.equals(pipelineStepImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineStepImpl pipelineStepImpl1 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl2 = new SwagPipelineStepImpl();

        System.assertEquals(pipelineStepImpl1.hashCode(), pipelineStepImpl1.hashCode());
        System.assertEquals(pipelineStepImpl2.hashCode(), pipelineStepImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineStepImpl pipelineStepImpl1 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl2 = SwagPipelineStepImpl.getExample();
        SwagPipelineStepImpl pipelineStepImpl3 = new SwagPipelineStepImpl();
        SwagPipelineStepImpl pipelineStepImpl4 = new SwagPipelineStepImpl();

        System.assert(pipelineStepImpl1.equals(pipelineStepImpl2));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl4));
        System.assertEquals(pipelineStepImpl1.hashCode(), pipelineStepImpl2.hashCode());
        System.assertEquals(pipelineStepImpl3.hashCode(), pipelineStepImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineStepImpl pipelineStepImpl = new SwagPipelineStepImpl();
        Map<String, String> propertyMappings = pipelineStepImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
