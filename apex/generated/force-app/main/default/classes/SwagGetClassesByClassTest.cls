@isTest
private class SwagGetClassesByClassTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetClassesByClass getClassesByClass1 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass2 = getClassesByClass1;
        SwagGetClassesByClass getClassesByClass3 = new SwagGetClassesByClass();
        SwagGetClassesByClass getClassesByClass4 = getClassesByClass3;

        System.assert(getClassesByClass1.equals(getClassesByClass2));
        System.assert(getClassesByClass2.equals(getClassesByClass1));
        System.assert(getClassesByClass1.equals(getClassesByClass1));
        System.assert(getClassesByClass3.equals(getClassesByClass4));
        System.assert(getClassesByClass4.equals(getClassesByClass3));
        System.assert(getClassesByClass3.equals(getClassesByClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetClassesByClass getClassesByClass1 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass2 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass3 = new SwagGetClassesByClass();
        SwagGetClassesByClass getClassesByClass4 = new SwagGetClassesByClass();

        System.assert(getClassesByClass1.equals(getClassesByClass2));
        System.assert(getClassesByClass2.equals(getClassesByClass1));
        System.assert(getClassesByClass3.equals(getClassesByClass4));
        System.assert(getClassesByClass4.equals(getClassesByClass3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetClassesByClass getClassesByClass1 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass2 = new SwagGetClassesByClass();

        System.assertEquals(false, getClassesByClass1.equals(getClassesByClass2));
        System.assertEquals(false, getClassesByClass2.equals(getClassesByClass1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetClassesByClass getClassesByClass1 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass2 = new SwagGetClassesByClass();

        System.assertEquals(false, getClassesByClass1.equals('foo'));
        System.assertEquals(false, getClassesByClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetClassesByClass getClassesByClass1 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass2 = new SwagGetClassesByClass();
        SwagGetClassesByClass getClassesByClass3;

        System.assertEquals(false, getClassesByClass1.equals(getClassesByClass3));
        System.assertEquals(false, getClassesByClass2.equals(getClassesByClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetClassesByClass getClassesByClass1 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass2 = new SwagGetClassesByClass();

        System.assertEquals(getClassesByClass1.hashCode(), getClassesByClass1.hashCode());
        System.assertEquals(getClassesByClass2.hashCode(), getClassesByClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetClassesByClass getClassesByClass1 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass2 = SwagGetClassesByClass.getExample();
        SwagGetClassesByClass getClassesByClass3 = new SwagGetClassesByClass();
        SwagGetClassesByClass getClassesByClass4 = new SwagGetClassesByClass();

        System.assert(getClassesByClass1.equals(getClassesByClass2));
        System.assert(getClassesByClass3.equals(getClassesByClass4));
        System.assertEquals(getClassesByClass1.hashCode(), getClassesByClass2.hashCode());
        System.assertEquals(getClassesByClass3.hashCode(), getClassesByClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGetClassesByClass getClassesByClass = new SwagGetClassesByClass();
        Map<String, String> propertyMappings = getClassesByClass.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagGetClassesByClass getClassesByClass = new SwagGetClassesByClass();
        System.assertEquals(new List<String>(), getClassesByClass.classes);
        System.assertEquals(null, getClassesByClass.propertyClass);
    }
}
