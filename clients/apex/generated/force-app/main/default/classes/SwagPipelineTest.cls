@isTest
private class SwagPipelineTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipeline pipeline1 = SwagPipeline.getExample();
        SwagPipeline pipeline2 = pipeline1;
        SwagPipeline pipeline3 = new SwagPipeline();
        SwagPipeline pipeline4 = pipeline3;

        System.assert(pipeline1.equals(pipeline2));
        System.assert(pipeline2.equals(pipeline1));
        System.assert(pipeline1.equals(pipeline1));
        System.assert(pipeline3.equals(pipeline4));
        System.assert(pipeline4.equals(pipeline3));
        System.assert(pipeline3.equals(pipeline3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipeline pipeline1 = SwagPipeline.getExample();
        SwagPipeline pipeline2 = SwagPipeline.getExample();
        SwagPipeline pipeline3 = new SwagPipeline();
        SwagPipeline pipeline4 = new SwagPipeline();

        System.assert(pipeline1.equals(pipeline2));
        System.assert(pipeline2.equals(pipeline1));
        System.assert(pipeline3.equals(pipeline4));
        System.assert(pipeline4.equals(pipeline3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipeline pipeline1 = SwagPipeline.getExample();
        SwagPipeline pipeline2 = new SwagPipeline();

        System.assertEquals(false, pipeline1.equals(pipeline2));
        System.assertEquals(false, pipeline2.equals(pipeline1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipeline pipeline1 = SwagPipeline.getExample();
        SwagPipeline pipeline2 = new SwagPipeline();

        System.assertEquals(false, pipeline1.equals('foo'));
        System.assertEquals(false, pipeline2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipeline pipeline1 = SwagPipeline.getExample();
        SwagPipeline pipeline2 = new SwagPipeline();
        SwagPipeline pipeline3;

        System.assertEquals(false, pipeline1.equals(pipeline3));
        System.assertEquals(false, pipeline2.equals(pipeline3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipeline pipeline1 = SwagPipeline.getExample();
        SwagPipeline pipeline2 = new SwagPipeline();

        System.assertEquals(pipeline1.hashCode(), pipeline1.hashCode());
        System.assertEquals(pipeline2.hashCode(), pipeline2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipeline pipeline1 = SwagPipeline.getExample();
        SwagPipeline pipeline2 = SwagPipeline.getExample();
        SwagPipeline pipeline3 = new SwagPipeline();
        SwagPipeline pipeline4 = new SwagPipeline();

        System.assert(pipeline1.equals(pipeline2));
        System.assert(pipeline3.equals(pipeline4));
        System.assertEquals(pipeline1.hashCode(), pipeline2.hashCode());
        System.assertEquals(pipeline3.hashCode(), pipeline4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPipeline pipeline = new SwagPipeline();
        Map<String, String> propertyMappings = pipeline.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
