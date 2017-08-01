@isTest
private class SwagSwaggyjenkinsPipelineLatestRunarTest {
    @isTest
    private static void equalsSameInstance() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts1 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts2 = swaggyjenkinsPipelineLatestRunartifacts1;
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts3 = new SwagSwaggyjenkinsPipelineLatestRunar();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts4 = swaggyjenkinsPipelineLatestRunartifacts3;

        System.assert(swaggyjenkinsPipelineLatestRunartifacts1.equals(swaggyjenkinsPipelineLatestRunartifacts2));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts2.equals(swaggyjenkinsPipelineLatestRunartifacts1));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts1.equals(swaggyjenkinsPipelineLatestRunartifacts1));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts3.equals(swaggyjenkinsPipelineLatestRunartifacts4));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts4.equals(swaggyjenkinsPipelineLatestRunartifacts3));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts3.equals(swaggyjenkinsPipelineLatestRunartifacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts1 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts2 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts3 = new SwagSwaggyjenkinsPipelineLatestRunar();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts4 = new SwagSwaggyjenkinsPipelineLatestRunar();

        System.assert(swaggyjenkinsPipelineLatestRunartifacts1.equals(swaggyjenkinsPipelineLatestRunartifacts2));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts2.equals(swaggyjenkinsPipelineLatestRunartifacts1));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts3.equals(swaggyjenkinsPipelineLatestRunartifacts4));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts4.equals(swaggyjenkinsPipelineLatestRunartifacts3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts1 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts2 = new SwagSwaggyjenkinsPipelineLatestRunar();

        System.assertEquals(false, swaggyjenkinsPipelineLatestRunartifacts1.equals(swaggyjenkinsPipelineLatestRunartifacts2));
        System.assertEquals(false, swaggyjenkinsPipelineLatestRunartifacts2.equals(swaggyjenkinsPipelineLatestRunartifacts1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts1 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts2 = new SwagSwaggyjenkinsPipelineLatestRunar();

        System.assertEquals(false, swaggyjenkinsPipelineLatestRunartifacts1.equals('foo'));
        System.assertEquals(false, swaggyjenkinsPipelineLatestRunartifacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts1 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts2 = new SwagSwaggyjenkinsPipelineLatestRunar();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts3;

        System.assertEquals(false, swaggyjenkinsPipelineLatestRunartifacts1.equals(swaggyjenkinsPipelineLatestRunartifacts3));
        System.assertEquals(false, swaggyjenkinsPipelineLatestRunartifacts2.equals(swaggyjenkinsPipelineLatestRunartifacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts1 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts2 = new SwagSwaggyjenkinsPipelineLatestRunar();

        System.assertEquals(swaggyjenkinsPipelineLatestRunartifacts1.hashCode(), swaggyjenkinsPipelineLatestRunartifacts1.hashCode());
        System.assertEquals(swaggyjenkinsPipelineLatestRunartifacts2.hashCode(), swaggyjenkinsPipelineLatestRunartifacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts1 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts2 = SwagSwaggyjenkinsPipelineLatestRunar.getExample();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts3 = new SwagSwaggyjenkinsPipelineLatestRunar();
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts4 = new SwagSwaggyjenkinsPipelineLatestRunar();

        System.assert(swaggyjenkinsPipelineLatestRunartifacts1.equals(swaggyjenkinsPipelineLatestRunartifacts2));
        System.assert(swaggyjenkinsPipelineLatestRunartifacts3.equals(swaggyjenkinsPipelineLatestRunartifacts4));
        System.assertEquals(swaggyjenkinsPipelineLatestRunartifacts1.hashCode(), swaggyjenkinsPipelineLatestRunartifacts2.hashCode());
        System.assertEquals(swaggyjenkinsPipelineLatestRunartifacts3.hashCode(), swaggyjenkinsPipelineLatestRunartifacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagSwaggyjenkinsPipelineLatestRunar swaggyjenkinsPipelineLatestRunartifacts = new SwagSwaggyjenkinsPipelineLatestRunar();
        Map<String, String> propertyMappings = swaggyjenkinsPipelineLatestRunartifacts.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
