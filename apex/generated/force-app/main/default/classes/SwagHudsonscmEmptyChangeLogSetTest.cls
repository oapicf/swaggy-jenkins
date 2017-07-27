@isTest
private class SwagHudsonscmEmptyChangeLogSetTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet1 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet2 = hudsonscmEmptyChangeLogSet1;
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet3 = new SwagHudsonscmEmptyChangeLogSet();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet4 = hudsonscmEmptyChangeLogSet3;

        System.assert(hudsonscmEmptyChangeLogSet1.equals(hudsonscmEmptyChangeLogSet2));
        System.assert(hudsonscmEmptyChangeLogSet2.equals(hudsonscmEmptyChangeLogSet1));
        System.assert(hudsonscmEmptyChangeLogSet1.equals(hudsonscmEmptyChangeLogSet1));
        System.assert(hudsonscmEmptyChangeLogSet3.equals(hudsonscmEmptyChangeLogSet4));
        System.assert(hudsonscmEmptyChangeLogSet4.equals(hudsonscmEmptyChangeLogSet3));
        System.assert(hudsonscmEmptyChangeLogSet3.equals(hudsonscmEmptyChangeLogSet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet1 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet2 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet3 = new SwagHudsonscmEmptyChangeLogSet();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet4 = new SwagHudsonscmEmptyChangeLogSet();

        System.assert(hudsonscmEmptyChangeLogSet1.equals(hudsonscmEmptyChangeLogSet2));
        System.assert(hudsonscmEmptyChangeLogSet2.equals(hudsonscmEmptyChangeLogSet1));
        System.assert(hudsonscmEmptyChangeLogSet3.equals(hudsonscmEmptyChangeLogSet4));
        System.assert(hudsonscmEmptyChangeLogSet4.equals(hudsonscmEmptyChangeLogSet3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet1 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet2 = new SwagHudsonscmEmptyChangeLogSet();

        System.assertEquals(false, hudsonscmEmptyChangeLogSet1.equals(hudsonscmEmptyChangeLogSet2));
        System.assertEquals(false, hudsonscmEmptyChangeLogSet2.equals(hudsonscmEmptyChangeLogSet1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet1 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet2 = new SwagHudsonscmEmptyChangeLogSet();

        System.assertEquals(false, hudsonscmEmptyChangeLogSet1.equals('foo'));
        System.assertEquals(false, hudsonscmEmptyChangeLogSet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet1 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet2 = new SwagHudsonscmEmptyChangeLogSet();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet3;

        System.assertEquals(false, hudsonscmEmptyChangeLogSet1.equals(hudsonscmEmptyChangeLogSet3));
        System.assertEquals(false, hudsonscmEmptyChangeLogSet2.equals(hudsonscmEmptyChangeLogSet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet1 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet2 = new SwagHudsonscmEmptyChangeLogSet();

        System.assertEquals(hudsonscmEmptyChangeLogSet1.hashCode(), hudsonscmEmptyChangeLogSet1.hashCode());
        System.assertEquals(hudsonscmEmptyChangeLogSet2.hashCode(), hudsonscmEmptyChangeLogSet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet1 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet2 = SwagHudsonscmEmptyChangeLogSet.getExample();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet3 = new SwagHudsonscmEmptyChangeLogSet();
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet4 = new SwagHudsonscmEmptyChangeLogSet();

        System.assert(hudsonscmEmptyChangeLogSet1.equals(hudsonscmEmptyChangeLogSet2));
        System.assert(hudsonscmEmptyChangeLogSet3.equals(hudsonscmEmptyChangeLogSet4));
        System.assertEquals(hudsonscmEmptyChangeLogSet1.hashCode(), hudsonscmEmptyChangeLogSet2.hashCode());
        System.assertEquals(hudsonscmEmptyChangeLogSet3.hashCode(), hudsonscmEmptyChangeLogSet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonscmEmptyChangeLogSet hudsonscmEmptyChangeLogSet = new SwagHudsonscmEmptyChangeLogSet();
        Map<String, String> propertyMappings = hudsonscmEmptyChangeLogSet.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
