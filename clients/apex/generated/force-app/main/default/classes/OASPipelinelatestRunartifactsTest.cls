@isTest
private class OASPipelinelatestRunartifactsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts1 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts2 = pipelinelatestRunartifacts1;
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts3 = new OASPipelinelatestRunartifacts();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts4 = pipelinelatestRunartifacts3;

        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts2));
        System.assert(pipelinelatestRunartifacts2.equals(pipelinelatestRunartifacts1));
        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts1));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts4));
        System.assert(pipelinelatestRunartifacts4.equals(pipelinelatestRunartifacts3));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts1 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts2 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts3 = new OASPipelinelatestRunartifacts();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts4 = new OASPipelinelatestRunartifacts();

        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts2));
        System.assert(pipelinelatestRunartifacts2.equals(pipelinelatestRunartifacts1));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts4));
        System.assert(pipelinelatestRunartifacts4.equals(pipelinelatestRunartifacts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts1 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts2 = new OASPipelinelatestRunartifacts();

        System.assertEquals(false, pipelinelatestRunartifacts1.equals('foo'));
        System.assertEquals(false, pipelinelatestRunartifacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts1 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts2 = new OASPipelinelatestRunartifacts();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts3;

        System.assertEquals(false, pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts3));
        System.assertEquals(false, pipelinelatestRunartifacts2.equals(pipelinelatestRunartifacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts1 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts2 = new OASPipelinelatestRunartifacts();

        System.assertEquals(pipelinelatestRunartifacts1.hashCode(), pipelinelatestRunartifacts1.hashCode());
        System.assertEquals(pipelinelatestRunartifacts2.hashCode(), pipelinelatestRunartifacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts1 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts2 = OASPipelinelatestRunartifacts.getExample();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts3 = new OASPipelinelatestRunartifacts();
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts4 = new OASPipelinelatestRunartifacts();

        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts2));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts4));
        System.assertEquals(pipelinelatestRunartifacts1.hashCode(), pipelinelatestRunartifacts2.hashCode());
        System.assertEquals(pipelinelatestRunartifacts3.hashCode(), pipelinelatestRunartifacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPipelinelatestRunartifacts pipelinelatestRunartifacts = new OASPipelinelatestRunartifacts();
        Map<String, String> x-property-mappings = pipelinelatestRunartifacts.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
