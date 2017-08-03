@isTest
private class SwagEmptyChangeLogSetTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEmptyChangeLogSet emptyChangeLogSet1 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet2 = emptyChangeLogSet1;
        SwagEmptyChangeLogSet emptyChangeLogSet3 = new SwagEmptyChangeLogSet();
        SwagEmptyChangeLogSet emptyChangeLogSet4 = emptyChangeLogSet3;

        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet2));
        System.assert(emptyChangeLogSet2.equals(emptyChangeLogSet1));
        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet1));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet4));
        System.assert(emptyChangeLogSet4.equals(emptyChangeLogSet3));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEmptyChangeLogSet emptyChangeLogSet1 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet2 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet3 = new SwagEmptyChangeLogSet();
        SwagEmptyChangeLogSet emptyChangeLogSet4 = new SwagEmptyChangeLogSet();

        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet2));
        System.assert(emptyChangeLogSet2.equals(emptyChangeLogSet1));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet4));
        System.assert(emptyChangeLogSet4.equals(emptyChangeLogSet3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEmptyChangeLogSet emptyChangeLogSet1 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet2 = new SwagEmptyChangeLogSet();

        System.assertEquals(false, emptyChangeLogSet1.equals(emptyChangeLogSet2));
        System.assertEquals(false, emptyChangeLogSet2.equals(emptyChangeLogSet1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEmptyChangeLogSet emptyChangeLogSet1 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet2 = new SwagEmptyChangeLogSet();

        System.assertEquals(false, emptyChangeLogSet1.equals('foo'));
        System.assertEquals(false, emptyChangeLogSet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEmptyChangeLogSet emptyChangeLogSet1 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet2 = new SwagEmptyChangeLogSet();
        SwagEmptyChangeLogSet emptyChangeLogSet3;

        System.assertEquals(false, emptyChangeLogSet1.equals(emptyChangeLogSet3));
        System.assertEquals(false, emptyChangeLogSet2.equals(emptyChangeLogSet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEmptyChangeLogSet emptyChangeLogSet1 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet2 = new SwagEmptyChangeLogSet();

        System.assertEquals(emptyChangeLogSet1.hashCode(), emptyChangeLogSet1.hashCode());
        System.assertEquals(emptyChangeLogSet2.hashCode(), emptyChangeLogSet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEmptyChangeLogSet emptyChangeLogSet1 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet2 = SwagEmptyChangeLogSet.getExample();
        SwagEmptyChangeLogSet emptyChangeLogSet3 = new SwagEmptyChangeLogSet();
        SwagEmptyChangeLogSet emptyChangeLogSet4 = new SwagEmptyChangeLogSet();

        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet2));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet4));
        System.assertEquals(emptyChangeLogSet1.hashCode(), emptyChangeLogSet2.hashCode());
        System.assertEquals(emptyChangeLogSet3.hashCode(), emptyChangeLogSet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagEmptyChangeLogSet emptyChangeLogSet = new SwagEmptyChangeLogSet();
        Map<String, String> propertyMappings = emptyChangeLogSet.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
