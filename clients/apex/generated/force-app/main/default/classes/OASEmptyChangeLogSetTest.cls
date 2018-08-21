@isTest
private class OASEmptyChangeLogSetTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmptyChangeLogSet emptyChangeLogSet1 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet2 = emptyChangeLogSet1;
        OASEmptyChangeLogSet emptyChangeLogSet3 = new OASEmptyChangeLogSet();
        OASEmptyChangeLogSet emptyChangeLogSet4 = emptyChangeLogSet3;

        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet2));
        System.assert(emptyChangeLogSet2.equals(emptyChangeLogSet1));
        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet1));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet4));
        System.assert(emptyChangeLogSet4.equals(emptyChangeLogSet3));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmptyChangeLogSet emptyChangeLogSet1 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet2 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet3 = new OASEmptyChangeLogSet();
        OASEmptyChangeLogSet emptyChangeLogSet4 = new OASEmptyChangeLogSet();

        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet2));
        System.assert(emptyChangeLogSet2.equals(emptyChangeLogSet1));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet4));
        System.assert(emptyChangeLogSet4.equals(emptyChangeLogSet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmptyChangeLogSet emptyChangeLogSet1 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet2 = new OASEmptyChangeLogSet();

        System.assertEquals(false, emptyChangeLogSet1.equals('foo'));
        System.assertEquals(false, emptyChangeLogSet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmptyChangeLogSet emptyChangeLogSet1 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet2 = new OASEmptyChangeLogSet();
        OASEmptyChangeLogSet emptyChangeLogSet3;

        System.assertEquals(false, emptyChangeLogSet1.equals(emptyChangeLogSet3));
        System.assertEquals(false, emptyChangeLogSet2.equals(emptyChangeLogSet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmptyChangeLogSet emptyChangeLogSet1 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet2 = new OASEmptyChangeLogSet();

        System.assertEquals(emptyChangeLogSet1.hashCode(), emptyChangeLogSet1.hashCode());
        System.assertEquals(emptyChangeLogSet2.hashCode(), emptyChangeLogSet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmptyChangeLogSet emptyChangeLogSet1 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet2 = OASEmptyChangeLogSet.getExample();
        OASEmptyChangeLogSet emptyChangeLogSet3 = new OASEmptyChangeLogSet();
        OASEmptyChangeLogSet emptyChangeLogSet4 = new OASEmptyChangeLogSet();

        System.assert(emptyChangeLogSet1.equals(emptyChangeLogSet2));
        System.assert(emptyChangeLogSet3.equals(emptyChangeLogSet4));
        System.assertEquals(emptyChangeLogSet1.hashCode(), emptyChangeLogSet2.hashCode());
        System.assertEquals(emptyChangeLogSet3.hashCode(), emptyChangeLogSet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEmptyChangeLogSet emptyChangeLogSet = new OASEmptyChangeLogSet();
        Map<String, String> propertyMappings = emptyChangeLogSet.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
