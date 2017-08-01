@isTest
private class SwagIojenkinsblueoceanserviceembeddeTest {
    @isTest
    private static void equalsSameInstance() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2 = iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1;
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3 = new SwagIojenkinsblueoceanserviceembedde();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4 = iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3;

        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3 = new SwagIojenkinsblueoceanserviceembedde();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4 = new SwagIojenkinsblueoceanserviceembedde();

        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2 = new SwagIojenkinsblueoceanserviceembedde();

        System.assertEquals(false, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2));
        System.assertEquals(false, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2 = new SwagIojenkinsblueoceanserviceembedde();

        System.assertEquals(false, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.equals('foo'));
        System.assertEquals(false, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2 = new SwagIojenkinsblueoceanserviceembedde();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3;

        System.assertEquals(false, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3));
        System.assertEquals(false, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2 = new SwagIojenkinsblueoceanserviceembedde();

        System.assertEquals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.hashCode(), iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.hashCode());
        System.assertEquals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.hashCode(), iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2 = SwagIojenkinsblueoceanserviceembedde.getExample();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3 = new SwagIojenkinsblueoceanserviceembedde();
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4 = new SwagIojenkinsblueoceanserviceembedde();

        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2));
        System.assert(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3.equals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4));
        System.assertEquals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl1.hashCode(), iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl2.hashCode());
        System.assertEquals(iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl3.hashCode(), iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagIojenkinsblueoceanserviceembedde iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl = new SwagIojenkinsblueoceanserviceembedde();
        Map<String, String> propertyMappings = iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
