@isTest
private class OASPipelineRunartifactsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineRunartifacts pipelineRunartifacts1 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts2 = pipelineRunartifacts1;
        OASPipelineRunartifacts pipelineRunartifacts3 = new OASPipelineRunartifacts();
        OASPipelineRunartifacts pipelineRunartifacts4 = pipelineRunartifacts3;

        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts2));
        System.assert(pipelineRunartifacts2.equals(pipelineRunartifacts1));
        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts1));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts4));
        System.assert(pipelineRunartifacts4.equals(pipelineRunartifacts3));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineRunartifacts pipelineRunartifacts1 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts2 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts3 = new OASPipelineRunartifacts();
        OASPipelineRunartifacts pipelineRunartifacts4 = new OASPipelineRunartifacts();

        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts2));
        System.assert(pipelineRunartifacts2.equals(pipelineRunartifacts1));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts4));
        System.assert(pipelineRunartifacts4.equals(pipelineRunartifacts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineRunartifacts pipelineRunartifacts1 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts2 = new OASPipelineRunartifacts();

        System.assertEquals(false, pipelineRunartifacts1.equals('foo'));
        System.assertEquals(false, pipelineRunartifacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineRunartifacts pipelineRunartifacts1 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts2 = new OASPipelineRunartifacts();
        OASPipelineRunartifacts pipelineRunartifacts3;

        System.assertEquals(false, pipelineRunartifacts1.equals(pipelineRunartifacts3));
        System.assertEquals(false, pipelineRunartifacts2.equals(pipelineRunartifacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineRunartifacts pipelineRunartifacts1 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts2 = new OASPipelineRunartifacts();

        System.assertEquals(pipelineRunartifacts1.hashCode(), pipelineRunartifacts1.hashCode());
        System.assertEquals(pipelineRunartifacts2.hashCode(), pipelineRunartifacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineRunartifacts pipelineRunartifacts1 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts2 = OASPipelineRunartifacts.getExample();
        OASPipelineRunartifacts pipelineRunartifacts3 = new OASPipelineRunartifacts();
        OASPipelineRunartifacts pipelineRunartifacts4 = new OASPipelineRunartifacts();

        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts2));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts4));
        System.assertEquals(pipelineRunartifacts1.hashCode(), pipelineRunartifacts2.hashCode());
        System.assertEquals(pipelineRunartifacts3.hashCode(), pipelineRunartifacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineRunartifacts pipelineRunartifacts = new OASPipelineRunartifacts();
        Map<String, String> x-property-mappings = pipelineRunartifacts.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
