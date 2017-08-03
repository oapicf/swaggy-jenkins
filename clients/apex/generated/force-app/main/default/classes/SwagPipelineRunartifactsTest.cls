@isTest
private class SwagPipelineRunartifactsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelineRunartifacts pipelineRunartifacts1 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts2 = pipelineRunartifacts1;
        SwagPipelineRunartifacts pipelineRunartifacts3 = new SwagPipelineRunartifacts();
        SwagPipelineRunartifacts pipelineRunartifacts4 = pipelineRunartifacts3;

        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts2));
        System.assert(pipelineRunartifacts2.equals(pipelineRunartifacts1));
        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts1));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts4));
        System.assert(pipelineRunartifacts4.equals(pipelineRunartifacts3));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelineRunartifacts pipelineRunartifacts1 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts2 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts3 = new SwagPipelineRunartifacts();
        SwagPipelineRunartifacts pipelineRunartifacts4 = new SwagPipelineRunartifacts();

        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts2));
        System.assert(pipelineRunartifacts2.equals(pipelineRunartifacts1));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts4));
        System.assert(pipelineRunartifacts4.equals(pipelineRunartifacts3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelineRunartifacts pipelineRunartifacts1 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts2 = new SwagPipelineRunartifacts();

        System.assertEquals(false, pipelineRunartifacts1.equals(pipelineRunartifacts2));
        System.assertEquals(false, pipelineRunartifacts2.equals(pipelineRunartifacts1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelineRunartifacts pipelineRunartifacts1 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts2 = new SwagPipelineRunartifacts();

        System.assertEquals(false, pipelineRunartifacts1.equals('foo'));
        System.assertEquals(false, pipelineRunartifacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelineRunartifacts pipelineRunartifacts1 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts2 = new SwagPipelineRunartifacts();
        SwagPipelineRunartifacts pipelineRunartifacts3;

        System.assertEquals(false, pipelineRunartifacts1.equals(pipelineRunartifacts3));
        System.assertEquals(false, pipelineRunartifacts2.equals(pipelineRunartifacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelineRunartifacts pipelineRunartifacts1 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts2 = new SwagPipelineRunartifacts();

        System.assertEquals(pipelineRunartifacts1.hashCode(), pipelineRunartifacts1.hashCode());
        System.assertEquals(pipelineRunartifacts2.hashCode(), pipelineRunartifacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelineRunartifacts pipelineRunartifacts1 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts2 = SwagPipelineRunartifacts.getExample();
        SwagPipelineRunartifacts pipelineRunartifacts3 = new SwagPipelineRunartifacts();
        SwagPipelineRunartifacts pipelineRunartifacts4 = new SwagPipelineRunartifacts();

        System.assert(pipelineRunartifacts1.equals(pipelineRunartifacts2));
        System.assert(pipelineRunartifacts3.equals(pipelineRunartifacts4));
        System.assertEquals(pipelineRunartifacts1.hashCode(), pipelineRunartifacts2.hashCode());
        System.assertEquals(pipelineRunartifacts3.hashCode(), pipelineRunartifacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipelineRunartifacts pipelineRunartifacts = new SwagPipelineRunartifacts();
        Map<String, String> propertyMappings = pipelineRunartifacts.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
