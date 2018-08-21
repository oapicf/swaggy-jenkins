@isTest
private class OASPipelineFolderImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineFolderImpl pipelineFolderImpl1 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl2 = pipelineFolderImpl1;
        OASPipelineFolderImpl pipelineFolderImpl3 = new OASPipelineFolderImpl();
        OASPipelineFolderImpl pipelineFolderImpl4 = pipelineFolderImpl3;

        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl2));
        System.assert(pipelineFolderImpl2.equals(pipelineFolderImpl1));
        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl1));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl4));
        System.assert(pipelineFolderImpl4.equals(pipelineFolderImpl3));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineFolderImpl pipelineFolderImpl1 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl2 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl3 = new OASPipelineFolderImpl();
        OASPipelineFolderImpl pipelineFolderImpl4 = new OASPipelineFolderImpl();

        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl2));
        System.assert(pipelineFolderImpl2.equals(pipelineFolderImpl1));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl4));
        System.assert(pipelineFolderImpl4.equals(pipelineFolderImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineFolderImpl pipelineFolderImpl1 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl2 = new OASPipelineFolderImpl();

        System.assertEquals(false, pipelineFolderImpl1.equals('foo'));
        System.assertEquals(false, pipelineFolderImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineFolderImpl pipelineFolderImpl1 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl2 = new OASPipelineFolderImpl();
        OASPipelineFolderImpl pipelineFolderImpl3;

        System.assertEquals(false, pipelineFolderImpl1.equals(pipelineFolderImpl3));
        System.assertEquals(false, pipelineFolderImpl2.equals(pipelineFolderImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineFolderImpl pipelineFolderImpl1 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl2 = new OASPipelineFolderImpl();

        System.assertEquals(pipelineFolderImpl1.hashCode(), pipelineFolderImpl1.hashCode());
        System.assertEquals(pipelineFolderImpl2.hashCode(), pipelineFolderImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineFolderImpl pipelineFolderImpl1 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl2 = OASPipelineFolderImpl.getExample();
        OASPipelineFolderImpl pipelineFolderImpl3 = new OASPipelineFolderImpl();
        OASPipelineFolderImpl pipelineFolderImpl4 = new OASPipelineFolderImpl();

        System.assert(pipelineFolderImpl1.equals(pipelineFolderImpl2));
        System.assert(pipelineFolderImpl3.equals(pipelineFolderImpl4));
        System.assertEquals(pipelineFolderImpl1.hashCode(), pipelineFolderImpl2.hashCode());
        System.assertEquals(pipelineFolderImpl3.hashCode(), pipelineFolderImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineFolderImpl pipelineFolderImpl = new OASPipelineFolderImpl();
        Map<String, String> propertyMappings = pipelineFolderImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
