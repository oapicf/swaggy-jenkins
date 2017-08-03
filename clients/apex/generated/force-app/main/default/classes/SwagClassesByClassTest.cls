@isTest
private class SwagClassesByClassTest {
    @isTest
    private static void equalsSameInstance() {
        SwagClassesByClass classesByClass1 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass2 = classesByClass1;
        SwagClassesByClass classesByClass3 = new SwagClassesByClass();
        SwagClassesByClass classesByClass4 = classesByClass3;

        System.assert(classesByClass1.equals(classesByClass2));
        System.assert(classesByClass2.equals(classesByClass1));
        System.assert(classesByClass1.equals(classesByClass1));
        System.assert(classesByClass3.equals(classesByClass4));
        System.assert(classesByClass4.equals(classesByClass3));
        System.assert(classesByClass3.equals(classesByClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagClassesByClass classesByClass1 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass2 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass3 = new SwagClassesByClass();
        SwagClassesByClass classesByClass4 = new SwagClassesByClass();

        System.assert(classesByClass1.equals(classesByClass2));
        System.assert(classesByClass2.equals(classesByClass1));
        System.assert(classesByClass3.equals(classesByClass4));
        System.assert(classesByClass4.equals(classesByClass3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagClassesByClass classesByClass1 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass2 = new SwagClassesByClass();

        System.assertEquals(false, classesByClass1.equals(classesByClass2));
        System.assertEquals(false, classesByClass2.equals(classesByClass1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagClassesByClass classesByClass1 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass2 = new SwagClassesByClass();

        System.assertEquals(false, classesByClass1.equals('foo'));
        System.assertEquals(false, classesByClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagClassesByClass classesByClass1 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass2 = new SwagClassesByClass();
        SwagClassesByClass classesByClass3;

        System.assertEquals(false, classesByClass1.equals(classesByClass3));
        System.assertEquals(false, classesByClass2.equals(classesByClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagClassesByClass classesByClass1 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass2 = new SwagClassesByClass();

        System.assertEquals(classesByClass1.hashCode(), classesByClass1.hashCode());
        System.assertEquals(classesByClass2.hashCode(), classesByClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagClassesByClass classesByClass1 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass2 = SwagClassesByClass.getExample();
        SwagClassesByClass classesByClass3 = new SwagClassesByClass();
        SwagClassesByClass classesByClass4 = new SwagClassesByClass();

        System.assert(classesByClass1.equals(classesByClass2));
        System.assert(classesByClass3.equals(classesByClass4));
        System.assertEquals(classesByClass1.hashCode(), classesByClass2.hashCode());
        System.assertEquals(classesByClass3.hashCode(), classesByClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagClassesByClass classesByClass = new SwagClassesByClass();
        Map<String, String> propertyMappings = classesByClass.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagClassesByClass classesByClass = new SwagClassesByClass();
        System.assertEquals(new List<String>(), classesByClass.classes);
        System.assertEquals(null, classesByClass.propertyClass);
    }
}
