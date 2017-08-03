@isTest
private class SwagExtensionClassContainerImpl1mapTest {
    @isTest
    private static void equalsSameInstance() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = extensionClassContainerImpl1map1;
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map3 = new SwagExtensionClassContainerImpl1map();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map4 = extensionClassContainerImpl1map3;

        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map2));
        System.assert(extensionClassContainerImpl1map2.equals(extensionClassContainerImpl1map1));
        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map1));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map4));
        System.assert(extensionClassContainerImpl1map4.equals(extensionClassContainerImpl1map3));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map3 = new SwagExtensionClassContainerImpl1map();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map4 = new SwagExtensionClassContainerImpl1map();

        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map2));
        System.assert(extensionClassContainerImpl1map2.equals(extensionClassContainerImpl1map1));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map4));
        System.assert(extensionClassContainerImpl1map4.equals(extensionClassContainerImpl1map3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = new SwagExtensionClassContainerImpl1map();

        System.assertEquals(false, extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map2));
        System.assertEquals(false, extensionClassContainerImpl1map2.equals(extensionClassContainerImpl1map1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = new SwagExtensionClassContainerImpl1map();

        System.assertEquals(false, extensionClassContainerImpl1map1.equals('foo'));
        System.assertEquals(false, extensionClassContainerImpl1map2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = new SwagExtensionClassContainerImpl1map();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map3;

        System.assertEquals(false, extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map3));
        System.assertEquals(false, extensionClassContainerImpl1map2.equals(extensionClassContainerImpl1map3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = new SwagExtensionClassContainerImpl1map();

        System.assertEquals(extensionClassContainerImpl1map1.hashCode(), extensionClassContainerImpl1map1.hashCode());
        System.assertEquals(extensionClassContainerImpl1map2.hashCode(), extensionClassContainerImpl1map2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = SwagExtensionClassContainerImpl1map.getExample();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map3 = new SwagExtensionClassContainerImpl1map();
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map4 = new SwagExtensionClassContainerImpl1map();

        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map2));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map4));
        System.assertEquals(extensionClassContainerImpl1map1.hashCode(), extensionClassContainerImpl1map2.hashCode());
        System.assertEquals(extensionClassContainerImpl1map3.hashCode(), extensionClassContainerImpl1map4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagExtensionClassContainerImpl1map extensionClassContainerImpl1map = new SwagExtensionClassContainerImpl1map();
        Map<String, String> propertyMappings = extensionClassContainerImpl1map.getPropertyMappings();
        System.assertEquals('ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl', propertyMappings.get('io.jenkins.blueocean.service.embedded.rest.PipelineImpl'));
        System.assertEquals('ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl', propertyMappings.get('io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
