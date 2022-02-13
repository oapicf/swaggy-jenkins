@isTest
private class OASPipelineStepImplTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineStepImpl pipelineStepImpl1 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl2 = pipelineStepImpl1;
        OASPipelineStepImpl pipelineStepImpl3 = new OASPipelineStepImpl();
        OASPipelineStepImpl pipelineStepImpl4 = pipelineStepImpl3;

        System.assert(pipelineStepImpl1.equals(pipelineStepImpl2));
        System.assert(pipelineStepImpl2.equals(pipelineStepImpl1));
        System.assert(pipelineStepImpl1.equals(pipelineStepImpl1));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl4));
        System.assert(pipelineStepImpl4.equals(pipelineStepImpl3));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineStepImpl pipelineStepImpl1 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl2 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl3 = new OASPipelineStepImpl();
        OASPipelineStepImpl pipelineStepImpl4 = new OASPipelineStepImpl();

        System.assert(pipelineStepImpl1.equals(pipelineStepImpl2));
        System.assert(pipelineStepImpl2.equals(pipelineStepImpl1));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl4));
        System.assert(pipelineStepImpl4.equals(pipelineStepImpl3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineStepImpl pipelineStepImpl1 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl2 = new OASPipelineStepImpl();

        System.assertEquals(false, pipelineStepImpl1.equals('foo'));
        System.assertEquals(false, pipelineStepImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineStepImpl pipelineStepImpl1 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl2 = new OASPipelineStepImpl();
        OASPipelineStepImpl pipelineStepImpl3;

        System.assertEquals(false, pipelineStepImpl1.equals(pipelineStepImpl3));
        System.assertEquals(false, pipelineStepImpl2.equals(pipelineStepImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineStepImpl pipelineStepImpl1 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl2 = new OASPipelineStepImpl();

        System.assertEquals(pipelineStepImpl1.hashCode(), pipelineStepImpl1.hashCode());
        System.assertEquals(pipelineStepImpl2.hashCode(), pipelineStepImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineStepImpl pipelineStepImpl1 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl2 = OASPipelineStepImpl.getExample();
        OASPipelineStepImpl pipelineStepImpl3 = new OASPipelineStepImpl();
        OASPipelineStepImpl pipelineStepImpl4 = new OASPipelineStepImpl();

        System.assert(pipelineStepImpl1.equals(pipelineStepImpl2));
        System.assert(pipelineStepImpl3.equals(pipelineStepImpl4));
        System.assertEquals(pipelineStepImpl1.hashCode(), pipelineStepImpl2.hashCode());
        System.assertEquals(pipelineStepImpl3.hashCode(), pipelineStepImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineStepImpl pipelineStepImpl = new OASPipelineStepImpl();
        Map<String, String> x-property-mappings = pipelineStepImpl.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
