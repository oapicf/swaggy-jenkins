@isTest
private class OASPipelineActivityartifactsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelineActivityartifacts pipelineActivityartifacts1 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts2 = pipelineActivityartifacts1;
        OASPipelineActivityartifacts pipelineActivityartifacts3 = new OASPipelineActivityartifacts();
        OASPipelineActivityartifacts pipelineActivityartifacts4 = pipelineActivityartifacts3;

        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts2));
        System.assert(pipelineActivityartifacts2.equals(pipelineActivityartifacts1));
        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts1));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts4));
        System.assert(pipelineActivityartifacts4.equals(pipelineActivityartifacts3));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelineActivityartifacts pipelineActivityartifacts1 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts2 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts3 = new OASPipelineActivityartifacts();
        OASPipelineActivityartifacts pipelineActivityartifacts4 = new OASPipelineActivityartifacts();

        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts2));
        System.assert(pipelineActivityartifacts2.equals(pipelineActivityartifacts1));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts4));
        System.assert(pipelineActivityartifacts4.equals(pipelineActivityartifacts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelineActivityartifacts pipelineActivityartifacts1 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts2 = new OASPipelineActivityartifacts();

        System.assertEquals(false, pipelineActivityartifacts1.equals('foo'));
        System.assertEquals(false, pipelineActivityartifacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelineActivityartifacts pipelineActivityartifacts1 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts2 = new OASPipelineActivityartifacts();
        OASPipelineActivityartifacts pipelineActivityartifacts3;

        System.assertEquals(false, pipelineActivityartifacts1.equals(pipelineActivityartifacts3));
        System.assertEquals(false, pipelineActivityartifacts2.equals(pipelineActivityartifacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelineActivityartifacts pipelineActivityartifacts1 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts2 = new OASPipelineActivityartifacts();

        System.assertEquals(pipelineActivityartifacts1.hashCode(), pipelineActivityartifacts1.hashCode());
        System.assertEquals(pipelineActivityartifacts2.hashCode(), pipelineActivityartifacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelineActivityartifacts pipelineActivityartifacts1 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts2 = OASPipelineActivityartifacts.getExample();
        OASPipelineActivityartifacts pipelineActivityartifacts3 = new OASPipelineActivityartifacts();
        OASPipelineActivityartifacts pipelineActivityartifacts4 = new OASPipelineActivityartifacts();

        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts2));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts4));
        System.assertEquals(pipelineActivityartifacts1.hashCode(), pipelineActivityartifacts2.hashCode());
        System.assertEquals(pipelineActivityartifacts3.hashCode(), pipelineActivityartifacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelineActivityartifacts pipelineActivityartifacts = new OASPipelineActivityartifacts();
        Map<String, String> propertyMappings = pipelineActivityartifacts.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
