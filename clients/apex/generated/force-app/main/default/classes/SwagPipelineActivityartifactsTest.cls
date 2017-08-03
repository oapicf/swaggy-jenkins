@isTest
private class SwagPipelineActivityartifactsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineActivityartifacts pipelineActivityartifacts1 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts2 = pipelineActivityartifacts1;
        SwagPipelineActivityartifacts pipelineActivityartifacts3 = new SwagPipelineActivityartifacts();
        SwagPipelineActivityartifacts pipelineActivityartifacts4 = pipelineActivityartifacts3;

        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts2));
        System.assert(pipelineActivityartifacts2.equals(pipelineActivityartifacts1));
        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts1));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts4));
        System.assert(pipelineActivityartifacts4.equals(pipelineActivityartifacts3));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineActivityartifacts pipelineActivityartifacts1 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts2 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts3 = new SwagPipelineActivityartifacts();
        SwagPipelineActivityartifacts pipelineActivityartifacts4 = new SwagPipelineActivityartifacts();

        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts2));
        System.assert(pipelineActivityartifacts2.equals(pipelineActivityartifacts1));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts4));
        System.assert(pipelineActivityartifacts4.equals(pipelineActivityartifacts3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineActivityartifacts pipelineActivityartifacts1 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts2 = new SwagPipelineActivityartifacts();

        System.assertEquals(false, pipelineActivityartifacts1.equals(pipelineActivityartifacts2));
        System.assertEquals(false, pipelineActivityartifacts2.equals(pipelineActivityartifacts1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineActivityartifacts pipelineActivityartifacts1 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts2 = new SwagPipelineActivityartifacts();

        System.assertEquals(false, pipelineActivityartifacts1.equals('foo'));
        System.assertEquals(false, pipelineActivityartifacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineActivityartifacts pipelineActivityartifacts1 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts2 = new SwagPipelineActivityartifacts();
        SwagPipelineActivityartifacts pipelineActivityartifacts3;

        System.assertEquals(false, pipelineActivityartifacts1.equals(pipelineActivityartifacts3));
        System.assertEquals(false, pipelineActivityartifacts2.equals(pipelineActivityartifacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineActivityartifacts pipelineActivityartifacts1 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts2 = new SwagPipelineActivityartifacts();

        System.assertEquals(pipelineActivityartifacts1.hashCode(), pipelineActivityartifacts1.hashCode());
        System.assertEquals(pipelineActivityartifacts2.hashCode(), pipelineActivityartifacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineActivityartifacts pipelineActivityartifacts1 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts2 = SwagPipelineActivityartifacts.getExample();
        SwagPipelineActivityartifacts pipelineActivityartifacts3 = new SwagPipelineActivityartifacts();
        SwagPipelineActivityartifacts pipelineActivityartifacts4 = new SwagPipelineActivityartifacts();

        System.assert(pipelineActivityartifacts1.equals(pipelineActivityartifacts2));
        System.assert(pipelineActivityartifacts3.equals(pipelineActivityartifacts4));
        System.assertEquals(pipelineActivityartifacts1.hashCode(), pipelineActivityartifacts2.hashCode());
        System.assertEquals(pipelineActivityartifacts3.hashCode(), pipelineActivityartifacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineActivityartifacts pipelineActivityartifacts = new SwagPipelineActivityartifacts();
        Map<String, String> propertyMappings = pipelineActivityartifacts.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
