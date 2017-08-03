@isTest
private class SwagPipelinelatestRunartifactsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts1 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts2 = pipelinelatestRunartifacts1;
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts3 = new SwagPipelinelatestRunartifacts();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts4 = pipelinelatestRunartifacts3;

        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts2));
        System.assert(pipelinelatestRunartifacts2.equals(pipelinelatestRunartifacts1));
        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts1));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts4));
        System.assert(pipelinelatestRunartifacts4.equals(pipelinelatestRunartifacts3));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts1 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts2 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts3 = new SwagPipelinelatestRunartifacts();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts4 = new SwagPipelinelatestRunartifacts();

        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts2));
        System.assert(pipelinelatestRunartifacts2.equals(pipelinelatestRunartifacts1));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts4));
        System.assert(pipelinelatestRunartifacts4.equals(pipelinelatestRunartifacts3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts1 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts2 = new SwagPipelinelatestRunartifacts();

        System.assertEquals(false, pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts2));
        System.assertEquals(false, pipelinelatestRunartifacts2.equals(pipelinelatestRunartifacts1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts1 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts2 = new SwagPipelinelatestRunartifacts();

        System.assertEquals(false, pipelinelatestRunartifacts1.equals('foo'));
        System.assertEquals(false, pipelinelatestRunartifacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts1 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts2 = new SwagPipelinelatestRunartifacts();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts3;

        System.assertEquals(false, pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts3));
        System.assertEquals(false, pipelinelatestRunartifacts2.equals(pipelinelatestRunartifacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts1 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts2 = new SwagPipelinelatestRunartifacts();

        System.assertEquals(pipelinelatestRunartifacts1.hashCode(), pipelinelatestRunartifacts1.hashCode());
        System.assertEquals(pipelinelatestRunartifacts2.hashCode(), pipelinelatestRunartifacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts1 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts2 = SwagPipelinelatestRunartifacts.getExample();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts3 = new SwagPipelinelatestRunartifacts();
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts4 = new SwagPipelinelatestRunartifacts();

        System.assert(pipelinelatestRunartifacts1.equals(pipelinelatestRunartifacts2));
        System.assert(pipelinelatestRunartifacts3.equals(pipelinelatestRunartifacts4));
        System.assertEquals(pipelinelatestRunartifacts1.hashCode(), pipelinelatestRunartifacts2.hashCode());
        System.assertEquals(pipelinelatestRunartifacts3.hashCode(), pipelinelatestRunartifacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelinelatestRunartifacts pipelinelatestRunartifacts = new SwagPipelinelatestRunartifacts();
        Map<String, String> propertyMappings = pipelinelatestRunartifacts.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
