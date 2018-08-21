@isTest
private class OASStringParameterDefinitionTest {
    @isTest
    private static void equalsSameInstance() {
        OASStringParameterDefinition stringParameterDefinition1 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition2 = stringParameterDefinition1;
        OASStringParameterDefinition stringParameterDefinition3 = new OASStringParameterDefinition();
        OASStringParameterDefinition stringParameterDefinition4 = stringParameterDefinition3;

        System.assert(stringParameterDefinition1.equals(stringParameterDefinition2));
        System.assert(stringParameterDefinition2.equals(stringParameterDefinition1));
        System.assert(stringParameterDefinition1.equals(stringParameterDefinition1));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition4));
        System.assert(stringParameterDefinition4.equals(stringParameterDefinition3));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStringParameterDefinition stringParameterDefinition1 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition2 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition3 = new OASStringParameterDefinition();
        OASStringParameterDefinition stringParameterDefinition4 = new OASStringParameterDefinition();

        System.assert(stringParameterDefinition1.equals(stringParameterDefinition2));
        System.assert(stringParameterDefinition2.equals(stringParameterDefinition1));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition4));
        System.assert(stringParameterDefinition4.equals(stringParameterDefinition3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStringParameterDefinition stringParameterDefinition1 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition2 = new OASStringParameterDefinition();

        System.assertEquals(false, stringParameterDefinition1.equals('foo'));
        System.assertEquals(false, stringParameterDefinition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStringParameterDefinition stringParameterDefinition1 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition2 = new OASStringParameterDefinition();
        OASStringParameterDefinition stringParameterDefinition3;

        System.assertEquals(false, stringParameterDefinition1.equals(stringParameterDefinition3));
        System.assertEquals(false, stringParameterDefinition2.equals(stringParameterDefinition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStringParameterDefinition stringParameterDefinition1 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition2 = new OASStringParameterDefinition();

        System.assertEquals(stringParameterDefinition1.hashCode(), stringParameterDefinition1.hashCode());
        System.assertEquals(stringParameterDefinition2.hashCode(), stringParameterDefinition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStringParameterDefinition stringParameterDefinition1 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition2 = OASStringParameterDefinition.getExample();
        OASStringParameterDefinition stringParameterDefinition3 = new OASStringParameterDefinition();
        OASStringParameterDefinition stringParameterDefinition4 = new OASStringParameterDefinition();

        System.assert(stringParameterDefinition1.equals(stringParameterDefinition2));
        System.assert(stringParameterDefinition3.equals(stringParameterDefinition4));
        System.assertEquals(stringParameterDefinition1.hashCode(), stringParameterDefinition2.hashCode());
        System.assertEquals(stringParameterDefinition3.hashCode(), stringParameterDefinition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASStringParameterDefinition stringParameterDefinition = new OASStringParameterDefinition();
        Map<String, String> propertyMappings = stringParameterDefinition.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
        System.assertEquals('r_type', propertyMappings.get('type'));
    }
}
