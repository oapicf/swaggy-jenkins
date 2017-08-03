@isTest
private class SwagPipelineFolderImplTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineFolderImpl pipelineFolderImpl1 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl2 = pipelineFolderImpl1;
        SwagPipelineFolderImpl pipelineFolderImpl3 = new SwagPipelineFolderImpl();
        SwagPipelineFolderImpl pipelineFolderImpl4 = pipelineFolderImpl3;

        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl2));
        System.assert(pipelineFolderImpl2.equals(pipelineFolderImpl1));
        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl1));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl4));
        System.assert(pipelineFolderImpl4.equals(pipelineFolderImpl3));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineFolderImpl pipelineFolderImpl1 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl2 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl3 = new SwagPipelineFolderImpl();
        SwagPipelineFolderImpl pipelineFolderImpl4 = new SwagPipelineFolderImpl();

        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl2));
        System.assert(pipelineFolderImpl2.equals(pipelineFolderImpl1));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl4));
        System.assert(pipelineFolderImpl4.equals(pipelineFolderImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineFolderImpl pipelineFolderImpl1 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl2 = new SwagPipelineFolderImpl();

        System.assertEquals(false, pipelineFolderImpl1.equals(pipelineFolderImpl2));
        System.assertEquals(false, pipelineFolderImpl2.equals(pipelineFolderImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineFolderImpl pipelineFolderImpl1 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl2 = new SwagPipelineFolderImpl();

        System.assertEquals(false, pipelineFolderImpl1.equals('foo'));
        System.assertEquals(false, pipelineFolderImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineFolderImpl pipelineFolderImpl1 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl2 = new SwagPipelineFolderImpl();
        SwagPipelineFolderImpl pipelineFolderImpl3;

        System.assertEquals(false, pipelineFolderImpl1.equals(pipelineFolderImpl3));
        System.assertEquals(false, pipelineFolderImpl2.equals(pipelineFolderImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineFolderImpl pipelineFolderImpl1 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl2 = new SwagPipelineFolderImpl();

        System.assertEquals(pipelineFolderImpl1.hashCode(), pipelineFolderImpl1.hashCode());
        System.assertEquals(pipelineFolderImpl2.hashCode(), pipelineFolderImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineFolderImpl pipelineFolderImpl1 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl2 = SwagPipelineFolderImpl.getExample();
        SwagPipelineFolderImpl pipelineFolderImpl3 = new SwagPipelineFolderImpl();
        SwagPipelineFolderImpl pipelineFolderImpl4 = new SwagPipelineFolderImpl();

        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl2));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl4));
        System.assertEquals(pipelineFolderImpl1.hashCode(), pipelineFolderImpl2.hashCode());
        System.assertEquals(pipelineFolderImpl3.hashCode(), pipelineFolderImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineFolderImpl pipelineFolderImpl = new SwagPipelineFolderImpl();
        Map<String, String> propertyMappings = pipelineFolderImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
