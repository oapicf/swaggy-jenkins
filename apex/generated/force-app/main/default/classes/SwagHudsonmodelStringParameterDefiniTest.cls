@isTest
private class SwagHudsonmodelStringParameterDefiniTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition1 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition2 = hudsonmodelStringParameterDefinition1;
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition3 = new SwagHudsonmodelStringParameterDefini();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition4 = hudsonmodelStringParameterDefinition3;

        System.assert(hudsonmodelStringParameterDefinition1.equals(hudsonmodelStringParameterDefinition2));
        System.assert(hudsonmodelStringParameterDefinition2.equals(hudsonmodelStringParameterDefinition1));
        System.assert(hudsonmodelStringParameterDefinition1.equals(hudsonmodelStringParameterDefinition1));
        System.assert(hudsonmodelStringParameterDefinition3.equals(hudsonmodelStringParameterDefinition4));
        System.assert(hudsonmodelStringParameterDefinition4.equals(hudsonmodelStringParameterDefinition3));
        System.assert(hudsonmodelStringParameterDefinition3.equals(hudsonmodelStringParameterDefinition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition1 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition2 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition3 = new SwagHudsonmodelStringParameterDefini();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition4 = new SwagHudsonmodelStringParameterDefini();

        System.assert(hudsonmodelStringParameterDefinition1.equals(hudsonmodelStringParameterDefinition2));
        System.assert(hudsonmodelStringParameterDefinition2.equals(hudsonmodelStringParameterDefinition1));
        System.assert(hudsonmodelStringParameterDefinition3.equals(hudsonmodelStringParameterDefinition4));
        System.assert(hudsonmodelStringParameterDefinition4.equals(hudsonmodelStringParameterDefinition3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition1 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition2 = new SwagHudsonmodelStringParameterDefini();

        System.assertEquals(false, hudsonmodelStringParameterDefinition1.equals(hudsonmodelStringParameterDefinition2));
        System.assertEquals(false, hudsonmodelStringParameterDefinition2.equals(hudsonmodelStringParameterDefinition1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition1 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition2 = new SwagHudsonmodelStringParameterDefini();

        System.assertEquals(false, hudsonmodelStringParameterDefinition1.equals('foo'));
        System.assertEquals(false, hudsonmodelStringParameterDefinition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition1 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition2 = new SwagHudsonmodelStringParameterDefini();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition3;

        System.assertEquals(false, hudsonmodelStringParameterDefinition1.equals(hudsonmodelStringParameterDefinition3));
        System.assertEquals(false, hudsonmodelStringParameterDefinition2.equals(hudsonmodelStringParameterDefinition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition1 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition2 = new SwagHudsonmodelStringParameterDefini();

        System.assertEquals(hudsonmodelStringParameterDefinition1.hashCode(), hudsonmodelStringParameterDefinition1.hashCode());
        System.assertEquals(hudsonmodelStringParameterDefinition2.hashCode(), hudsonmodelStringParameterDefinition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition1 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition2 = SwagHudsonmodelStringParameterDefini.getExample();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition3 = new SwagHudsonmodelStringParameterDefini();
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition4 = new SwagHudsonmodelStringParameterDefini();

        System.assert(hudsonmodelStringParameterDefinition1.equals(hudsonmodelStringParameterDefinition2));
        System.assert(hudsonmodelStringParameterDefinition3.equals(hudsonmodelStringParameterDefinition4));
        System.assertEquals(hudsonmodelStringParameterDefinition1.hashCode(), hudsonmodelStringParameterDefinition2.hashCode());
        System.assertEquals(hudsonmodelStringParameterDefinition3.hashCode(), hudsonmodelStringParameterDefinition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelStringParameterDefini hudsonmodelStringParameterDefinition = new SwagHudsonmodelStringParameterDefini();
        Map<String, String> propertyMappings = hudsonmodelStringParameterDefinition.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('r_type', propertyMappings.get('type'));
    }
}
