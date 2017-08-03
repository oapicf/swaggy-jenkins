@isTest
private class SwagPipelineImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineImpl pipelineImpl1 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl2 = pipelineImpl1;
        SwagPipelineImpl pipelineImpl3 = new SwagPipelineImpl();
        SwagPipelineImpl pipelineImpl4 = pipelineImpl3;

        System.assert(pipelineImpl1.equals(pipelineImpl2));
        System.assert(pipelineImpl2.equals(pipelineImpl1));
        System.assert(pipelineImpl1.equals(pipelineImpl1));
        System.assert(pipelineImpl3.equals(pipelineImpl4));
        System.assert(pipelineImpl4.equals(pipelineImpl3));
        System.assert(pipelineImpl3.equals(pipelineImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineImpl pipelineImpl1 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl2 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl3 = new SwagPipelineImpl();
        SwagPipelineImpl pipelineImpl4 = new SwagPipelineImpl();

        System.assert(pipelineImpl1.equals(pipelineImpl2));
        System.assert(pipelineImpl2.equals(pipelineImpl1));
        System.assert(pipelineImpl3.equals(pipelineImpl4));
        System.assert(pipelineImpl4.equals(pipelineImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineImpl pipelineImpl1 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl2 = new SwagPipelineImpl();

        System.assertEquals(false, pipelineImpl1.equals(pipelineImpl2));
        System.assertEquals(false, pipelineImpl2.equals(pipelineImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineImpl pipelineImpl1 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl2 = new SwagPipelineImpl();

        System.assertEquals(false, pipelineImpl1.equals('foo'));
        System.assertEquals(false, pipelineImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineImpl pipelineImpl1 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl2 = new SwagPipelineImpl();
        SwagPipelineImpl pipelineImpl3;

        System.assertEquals(false, pipelineImpl1.equals(pipelineImpl3));
        System.assertEquals(false, pipelineImpl2.equals(pipelineImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineImpl pipelineImpl1 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl2 = new SwagPipelineImpl();

        System.assertEquals(pipelineImpl1.hashCode(), pipelineImpl1.hashCode());
        System.assertEquals(pipelineImpl2.hashCode(), pipelineImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineImpl pipelineImpl1 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl2 = SwagPipelineImpl.getExample();
        SwagPipelineImpl pipelineImpl3 = new SwagPipelineImpl();
        SwagPipelineImpl pipelineImpl4 = new SwagPipelineImpl();

        System.assert(pipelineImpl1.equals(pipelineImpl2));
        System.assert(pipelineImpl3.equals(pipelineImpl4));
        System.assertEquals(pipelineImpl1.hashCode(), pipelineImpl2.hashCode());
        System.assertEquals(pipelineImpl3.hashCode(), pipelineImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineImpl pipelineImpl = new SwagPipelineImpl();
        Map<String, String> propertyMappings = pipelineImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
