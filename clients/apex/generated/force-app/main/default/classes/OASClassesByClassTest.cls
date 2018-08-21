@isTest
private class OASClassesByClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASClassesByClass classesByClass1 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass2 = classesByClass1;
        OASClassesByClass classesByClass3 = new OASClassesByClass();
        OASClassesByClass classesByClass4 = classesByClass3;

        System.assert(classesByClass1.equals(classesByClass2));
        System.assert(classesByClass2.equals(classesByClass1));
        System.assert(classesByClass1.equals(classesByClass1));
        System.assert(classesByClass3.equals(classesByClass4));
        System.assert(classesByClass4.equals(classesByClass3));
        System.assert(classesByClass3.equals(classesByClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClassesByClass classesByClass1 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass2 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass3 = new OASClassesByClass();
        OASClassesByClass classesByClass4 = new OASClassesByClass();

        System.assert(classesByClass1.equals(classesByClass2));
        System.assert(classesByClass2.equals(classesByClass1));
        System.assert(classesByClass3.equals(classesByClass4));
        System.assert(classesByClass4.equals(classesByClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClassesByClass classesByClass1 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass2 = new OASClassesByClass();

        System.assertEquals(false, classesByClass1.equals('foo'));
        System.assertEquals(false, classesByClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClassesByClass classesByClass1 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass2 = new OASClassesByClass();
        OASClassesByClass classesByClass3;

        System.assertEquals(false, classesByClass1.equals(classesByClass3));
        System.assertEquals(false, classesByClass2.equals(classesByClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClassesByClass classesByClass1 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass2 = new OASClassesByClass();

        System.assertEquals(classesByClass1.hashCode(), classesByClass1.hashCode());
        System.assertEquals(classesByClass2.hashCode(), classesByClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClassesByClass classesByClass1 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass2 = OASClassesByClass.getExample();
        OASClassesByClass classesByClass3 = new OASClassesByClass();
        OASClassesByClass classesByClass4 = new OASClassesByClass();

        System.assert(classesByClass1.equals(classesByClass2));
        System.assert(classesByClass3.equals(classesByClass4));
        System.assertEquals(classesByClass1.hashCode(), classesByClass2.hashCode());
        System.assertEquals(classesByClass3.hashCode(), classesByClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClassesByClass classesByClass = new OASClassesByClass();
        Map<String, String> propertyMappings = classesByClass.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASClassesByClass classesByClass = new OASClassesByClass();
        System.assertEquals(new List<String>(), classesByClass.classes);
        System.assertEquals(null, classesByClass.propertyClass);
    }
}
