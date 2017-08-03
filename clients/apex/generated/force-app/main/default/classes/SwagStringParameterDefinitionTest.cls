@isTest
private class SwagStringParameterDefinitionTest {
    @isTest
    private static void equalsSameInstance() {
        SwagStringParameterDefinition stringParameterDefinition1 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition2 = stringParameterDefinition1;
        SwagStringParameterDefinition stringParameterDefinition3 = new SwagStringParameterDefinition();
        SwagStringParameterDefinition stringParameterDefinition4 = stringParameterDefinition3;

        System.assert(stringParameterDefinition1.equals(stringParameterDefinition2));
        System.assert(stringParameterDefinition2.equals(stringParameterDefinition1));
        System.assert(stringParameterDefinition1.equals(stringParameterDefinition1));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition4));
        System.assert(stringParameterDefinition4.equals(stringParameterDefinition3));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagStringParameterDefinition stringParameterDefinition1 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition2 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition3 = new SwagStringParameterDefinition();
        SwagStringParameterDefinition stringParameterDefinition4 = new SwagStringParameterDefinition();

        System.assert(stringParameterDefinition1.equals(stringParameterDefinition2));
        System.assert(stringParameterDefinition2.equals(stringParameterDefinition1));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition4));
        System.assert(stringParameterDefinition4.equals(stringParameterDefinition3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagStringParameterDefinition stringParameterDefinition1 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition2 = new SwagStringParameterDefinition();

        System.assertEquals(false, stringParameterDefinition1.equals(stringParameterDefinition2));
        System.assertEquals(false, stringParameterDefinition2.equals(stringParameterDefinition1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagStringParameterDefinition stringParameterDefinition1 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition2 = new SwagStringParameterDefinition();

        System.assertEquals(false, stringParameterDefinition1.equals('foo'));
        System.assertEquals(false, stringParameterDefinition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagStringParameterDefinition stringParameterDefinition1 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition2 = new SwagStringParameterDefinition();
        SwagStringParameterDefinition stringParameterDefinition3;

        System.assertEquals(false, stringParameterDefinition1.equals(stringParameterDefinition3));
        System.assertEquals(false, stringParameterDefinition2.equals(stringParameterDefinition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagStringParameterDefinition stringParameterDefinition1 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition2 = new SwagStringParameterDefinition();

        System.assertEquals(stringParameterDefinition1.hashCode(), stringParameterDefinition1.hashCode());
        System.assertEquals(stringParameterDefinition2.hashCode(), stringParameterDefinition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagStringParameterDefinition stringParameterDefinition1 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition2 = SwagStringParameterDefinition.getExample();
        SwagStringParameterDefinition stringParameterDefinition3 = new SwagStringParameterDefinition();
        SwagStringParameterDefinition stringParameterDefinition4 = new SwagStringParameterDefinition();

        System.assert(stringParameterDefinition1.equals(stringParameterDefinition2));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition4));
        System.assertEquals(stringParameterDefinition1.hashCode(), stringParameterDefinition2.hashCode());
        System.assertEquals(stringParameterDefinition3.hashCode(), stringParameterDefinition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagStringParameterDefinition stringParameterDefinition = new SwagStringParameterDefinition();
        Map<String, String> propertyMappings = stringParameterDefinition.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('r_type', propertyMappings.get('type'));
    }
}
