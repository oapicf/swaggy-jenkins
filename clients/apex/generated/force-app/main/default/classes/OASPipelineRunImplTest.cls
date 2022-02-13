@isTest
private class OASPipelineRunImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunImpl pipelineRunImpl1 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl2 = pipelineRunImpl1;
        OASPipelineRunImpl pipelineRunImpl3 = new OASPipelineRunImpl();
        OASPipelineRunImpl pipelineRunImpl4 = pipelineRunImpl3;

        System.assert(pipelineRunImpl1.equals(pipelineRunImpl2));
        System.assert(pipelineRunImpl2.equals(pipelineRunImpl1));
        System.assert(pipelineRunImpl1.equals(pipelineRunImpl1));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl4));
        System.assert(pipelineRunImpl4.equals(pipelineRunImpl3));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunImpl pipelineRunImpl1 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl2 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl3 = new OASPipelineRunImpl();
        OASPipelineRunImpl pipelineRunImpl4 = new OASPipelineRunImpl();

        System.assert(pipelineRunImpl1.equals(pipelineRunImpl2));
        System.assert(pipelineRunImpl2.equals(pipelineRunImpl1));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl4));
        System.assert(pipelineRunImpl4.equals(pipelineRunImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunImpl pipelineRunImpl1 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl2 = new OASPipelineRunImpl();

        System.assertEquals(false, pipelineRunImpl1.equals('foo'));
        System.assertEquals(false, pipelineRunImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunImpl pipelineRunImpl1 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl2 = new OASPipelineRunImpl();
        OASPipelineRunImpl pipelineRunImpl3;

        System.assertEquals(false, pipelineRunImpl1.equals(pipelineRunImpl3));
        System.assertEquals(false, pipelineRunImpl2.equals(pipelineRunImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunImpl pipelineRunImpl1 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl2 = new OASPipelineRunImpl();

        System.assertEquals(pipelineRunImpl1.hashCode(), pipelineRunImpl1.hashCode());
        System.assertEquals(pipelineRunImpl2.hashCode(), pipelineRunImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunImpl pipelineRunImpl1 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl2 = OASPipelineRunImpl.getExample();
        OASPipelineRunImpl pipelineRunImpl3 = new OASPipelineRunImpl();
        OASPipelineRunImpl pipelineRunImpl4 = new OASPipelineRunImpl();

        System.assert(pipelineRunImpl1.equals(pipelineRunImpl2));
        System.assert(pipelineRunImpl3.equals(pipelineRunImpl4));
        System.assertEquals(pipelineRunImpl1.hashCode(), pipelineRunImpl2.hashCode());
        System.assertEquals(pipelineRunImpl3.hashCode(), pipelineRunImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineRunImpl pipelineRunImpl = new OASPipelineRunImpl();
        Map<String, String> x-property-mappings = pipelineRunImpl.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
