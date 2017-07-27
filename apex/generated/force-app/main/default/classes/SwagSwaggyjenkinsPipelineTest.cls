@isTest
private class SwagSwaggyjenkinsPipelineTest {
    @isTest
    private static void equalsSameInstance() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline1 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline2 = swaggyjenkinsPipeline1;
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline3 = new SwagSwaggyjenkinsPipeline();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline4 = swaggyjenkinsPipeline3;

        System.assert(swaggyjenkinsPipeline1.equals(swaggyjenkinsPipeline2));
        System.assert(swaggyjenkinsPipeline2.equals(swaggyjenkinsPipeline1));
        System.assert(swaggyjenkinsPipeline1.equals(swaggyjenkinsPipeline1));
        System.assert(swaggyjenkinsPipeline3.equals(swaggyjenkinsPipeline4));
        System.assert(swaggyjenkinsPipeline4.equals(swaggyjenkinsPipeline3));
        System.assert(swaggyjenkinsPipeline3.equals(swaggyjenkinsPipeline3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline1 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline2 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline3 = new SwagSwaggyjenkinsPipeline();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline4 = new SwagSwaggyjenkinsPipeline();

        System.assert(swaggyjenkinsPipeline1.equals(swaggyjenkinsPipeline2));
        System.assert(swaggyjenkinsPipeline2.equals(swaggyjenkinsPipeline1));
        System.assert(swaggyjenkinsPipeline3.equals(swaggyjenkinsPipeline4));
        System.assert(swaggyjenkinsPipeline4.equals(swaggyjenkinsPipeline3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline1 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline2 = new SwagSwaggyjenkinsPipeline();

        System.assertEquals(false, swaggyjenkinsPipeline1.equals(swaggyjenkinsPipeline2));
        System.assertEquals(false, swaggyjenkinsPipeline2.equals(swaggyjenkinsPipeline1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline1 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline2 = new SwagSwaggyjenkinsPipeline();

        System.assertEquals(false, swaggyjenkinsPipeline1.equals('foo'));
        System.assertEquals(false, swaggyjenkinsPipeline2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline1 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline2 = new SwagSwaggyjenkinsPipeline();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline3;

        System.assertEquals(false, swaggyjenkinsPipeline1.equals(swaggyjenkinsPipeline3));
        System.assertEquals(false, swaggyjenkinsPipeline2.equals(swaggyjenkinsPipeline3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline1 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline2 = new SwagSwaggyjenkinsPipeline();

        System.assertEquals(swaggyjenkinsPipeline1.hashCode(), swaggyjenkinsPipeline1.hashCode());
        System.assertEquals(swaggyjenkinsPipeline2.hashCode(), swaggyjenkinsPipeline2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline1 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline2 = SwagSwaggyjenkinsPipeline.getExample();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline3 = new SwagSwaggyjenkinsPipeline();
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline4 = new SwagSwaggyjenkinsPipeline();

        System.assert(swaggyjenkinsPipeline1.equals(swaggyjenkinsPipeline2));
        System.assert(swaggyjenkinsPipeline3.equals(swaggyjenkinsPipeline4));
        System.assertEquals(swaggyjenkinsPipeline1.hashCode(), swaggyjenkinsPipeline2.hashCode());
        System.assertEquals(swaggyjenkinsPipeline3.hashCode(), swaggyjenkinsPipeline4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagSwaggyjenkinsPipeline swaggyjenkinsPipeline = new SwagSwaggyjenkinsPipeline();
        Map<String, String> propertyMappings = swaggyjenkinsPipeline.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
