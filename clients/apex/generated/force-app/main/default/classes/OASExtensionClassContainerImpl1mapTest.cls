@isTest
private class OASExtensionClassContainerImpl1mapTest {
    @isTest
    private static void equalsSameInstance() {
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = extensionClassContainerImpl1map1;
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map3 = new OASExtensionClassContainerImpl1map();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map4 = extensionClassContainerImpl1map3;

        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map2));
        System.assert(extensionClassContainerImpl1map2.equals(extensionClassContainerImpl1map1));
        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map1));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map4));
        System.assert(extensionClassContainerImpl1map4.equals(extensionClassContainerImpl1map3));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map3 = new OASExtensionClassContainerImpl1map();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map4 = new OASExtensionClassContainerImpl1map();

        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map2));
        System.assert(extensionClassContainerImpl1map2.equals(extensionClassContainerImpl1map1));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map4));
        System.assert(extensionClassContainerImpl1map4.equals(extensionClassContainerImpl1map3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = new OASExtensionClassContainerImpl1map();

        System.assertEquals(false, extensionClassContainerImpl1map1.equals('foo'));
        System.assertEquals(false, extensionClassContainerImpl1map2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = new OASExtensionClassContainerImpl1map();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map3;

        System.assertEquals(false, extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map3));
        System.assertEquals(false, extensionClassContainerImpl1map2.equals(extensionClassContainerImpl1map3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = new OASExtensionClassContainerImpl1map();

        System.assertEquals(extensionClassContainerImpl1map1.hashCode(), extensionClassContainerImpl1map1.hashCode());
        System.assertEquals(extensionClassContainerImpl1map2.hashCode(), extensionClassContainerImpl1map2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map1 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map2 = OASExtensionClassContainerImpl1map.getExample();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map3 = new OASExtensionClassContainerImpl1map();
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map4 = new OASExtensionClassContainerImpl1map();

        System.assert(extensionClassContainerImpl1map1.equals(extensionClassContainerImpl1map2));
        System.assert(extensionClassContainerImpl1map3.equals(extensionClassContainerImpl1map4));
        System.assertEquals(extensionClassContainerImpl1map1.hashCode(), extensionClassContainerImpl1map2.hashCode());
        System.assertEquals(extensionClassContainerImpl1map3.hashCode(), extensionClassContainerImpl1map4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExtensionClassContainerImpl1map extensionClassContainerImpl1map = new OASExtensionClassContainerImpl1map();
        Map<String, String> x-property-mappings = extensionClassContainerImpl1map.getx-property-mappings();
        System.assertEquals('ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl', x-property-mappings.get('io.jenkins.blueocean.service.embedded.rest.PipelineImpl'));
        System.assertEquals('ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl', x-property-mappings.get('io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'));
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
