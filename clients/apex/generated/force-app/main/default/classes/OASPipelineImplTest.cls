@isTest
private class OASPipelineImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineImpl pipelineImpl1 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl2 = pipelineImpl1;
        OASPipelineImpl pipelineImpl3 = new OASPipelineImpl();
        OASPipelineImpl pipelineImpl4 = pipelineImpl3;

        System.assert(pipelineImpl1.equals(pipelineImpl2));
        System.assert(pipelineImpl2.equals(pipelineImpl1));
        System.assert(pipelineImpl1.equals(pipelineImpl1));
        System.assert(pipelineImpl3.equals(pipelineImpl4));
        System.assert(pipelineImpl4.equals(pipelineImpl3));
        System.assert(pipelineImpl3.equals(pipelineImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineImpl pipelineImpl1 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl2 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl3 = new OASPipelineImpl();
        OASPipelineImpl pipelineImpl4 = new OASPipelineImpl();

        System.assert(pipelineImpl1.equals(pipelineImpl2));
        System.assert(pipelineImpl2.equals(pipelineImpl1));
        System.assert(pipelineImpl3.equals(pipelineImpl4));
        System.assert(pipelineImpl4.equals(pipelineImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineImpl pipelineImpl1 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl2 = new OASPipelineImpl();

        System.assertEquals(false, pipelineImpl1.equals('foo'));
        System.assertEquals(false, pipelineImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineImpl pipelineImpl1 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl2 = new OASPipelineImpl();
        OASPipelineImpl pipelineImpl3;

        System.assertEquals(false, pipelineImpl1.equals(pipelineImpl3));
        System.assertEquals(false, pipelineImpl2.equals(pipelineImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineImpl pipelineImpl1 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl2 = new OASPipelineImpl();

        System.assertEquals(pipelineImpl1.hashCode(), pipelineImpl1.hashCode());
        System.assertEquals(pipelineImpl2.hashCode(), pipelineImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineImpl pipelineImpl1 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl2 = OASPipelineImpl.getExample();
        OASPipelineImpl pipelineImpl3 = new OASPipelineImpl();
        OASPipelineImpl pipelineImpl4 = new OASPipelineImpl();

        System.assert(pipelineImpl1.equals(pipelineImpl2));
        System.assert(pipelineImpl3.equals(pipelineImpl4));
        System.assertEquals(pipelineImpl1.hashCode(), pipelineImpl2.hashCode());
        System.assertEquals(pipelineImpl3.hashCode(), pipelineImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineImpl pipelineImpl = new OASPipelineImpl();
        Map<String, String> propertyMappings = pipelineImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('links', propertyMappings.get('_links'));
    }
}
