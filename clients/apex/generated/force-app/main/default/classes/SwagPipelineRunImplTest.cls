@isTest
private class SwagPipelineRunImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunImpl pipelineRunImpl1 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl2 = pipelineRunImpl1;
        SwagPipelineRunImpl pipelineRunImpl3 = new SwagPipelineRunImpl();
        SwagPipelineRunImpl pipelineRunImpl4 = pipelineRunImpl3;

        System.assert(pipelineRunImpl1.equals(pipelineRunImpl2));
        System.assert(pipelineRunImpl2.equals(pipelineRunImpl1));
        System.assert(pipelineRunImpl1.equals(pipelineRunImpl1));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl4));
        System.assert(pipelineRunImpl4.equals(pipelineRunImpl3));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunImpl pipelineRunImpl1 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl2 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl3 = new SwagPipelineRunImpl();
        SwagPipelineRunImpl pipelineRunImpl4 = new SwagPipelineRunImpl();

        System.assert(pipelineRunImpl1.equals(pipelineRunImpl2));
        System.assert(pipelineRunImpl2.equals(pipelineRunImpl1));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl4));
        System.assert(pipelineRunImpl4.equals(pipelineRunImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunImpl pipelineRunImpl1 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl2 = new SwagPipelineRunImpl();

        System.assertEquals(false, pipelineRunImpl1.equals(pipelineRunImpl2));
        System.assertEquals(false, pipelineRunImpl2.equals(pipelineRunImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunImpl pipelineRunImpl1 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl2 = new SwagPipelineRunImpl();

        System.assertEquals(false, pipelineRunImpl1.equals('foo'));
        System.assertEquals(false, pipelineRunImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunImpl pipelineRunImpl1 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl2 = new SwagPipelineRunImpl();
        SwagPipelineRunImpl pipelineRunImpl3;

        System.assertEquals(false, pipelineRunImpl1.equals(pipelineRunImpl3));
        System.assertEquals(false, pipelineRunImpl2.equals(pipelineRunImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunImpl pipelineRunImpl1 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl2 = new SwagPipelineRunImpl();

        System.assertEquals(pipelineRunImpl1.hashCode(), pipelineRunImpl1.hashCode());
        System.assertEquals(pipelineRunImpl2.hashCode(), pipelineRunImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunImpl pipelineRunImpl1 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl2 = SwagPipelineRunImpl.getExample();
        SwagPipelineRunImpl pipelineRunImpl3 = new SwagPipelineRunImpl();
        SwagPipelineRunImpl pipelineRunImpl4 = new SwagPipelineRunImpl();

        System.assert(pipelineRunImpl1.equals(pipelineRunImpl2));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl4));
        System.assertEquals(pipelineRunImpl1.hashCode(), pipelineRunImpl2.hashCode());
        System.assertEquals(pipelineRunImpl3.hashCode(), pipelineRunImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineRunImpl pipelineRunImpl = new SwagPipelineRunImpl();
        Map<String, String> propertyMappings = pipelineRunImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
        System.assertEquals('r_type', propertyMappings.get('type'));
    }
}
