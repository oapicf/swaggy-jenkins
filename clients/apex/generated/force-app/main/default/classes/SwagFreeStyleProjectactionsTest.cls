@isTest
private class SwagFreeStyleProjectactionsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFreeStyleProjectactions freeStyleProjectactions1 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions2 = freeStyleProjectactions1;
        SwagFreeStyleProjectactions freeStyleProjectactions3 = new SwagFreeStyleProjectactions();
        SwagFreeStyleProjectactions freeStyleProjectactions4 = freeStyleProjectactions3;

        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions2));
        System.assert(freeStyleProjectactions2.equals(freeStyleProjectactions1));
        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions1));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions4));
        System.assert(freeStyleProjectactions4.equals(freeStyleProjectactions3));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFreeStyleProjectactions freeStyleProjectactions1 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions2 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions3 = new SwagFreeStyleProjectactions();
        SwagFreeStyleProjectactions freeStyleProjectactions4 = new SwagFreeStyleProjectactions();

        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions2));
        System.assert(freeStyleProjectactions2.equals(freeStyleProjectactions1));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions4));
        System.assert(freeStyleProjectactions4.equals(freeStyleProjectactions3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFreeStyleProjectactions freeStyleProjectactions1 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions2 = new SwagFreeStyleProjectactions();

        System.assertEquals(false, freeStyleProjectactions1.equals(freeStyleProjectactions2));
        System.assertEquals(false, freeStyleProjectactions2.equals(freeStyleProjectactions1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFreeStyleProjectactions freeStyleProjectactions1 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions2 = new SwagFreeStyleProjectactions();

        System.assertEquals(false, freeStyleProjectactions1.equals('foo'));
        System.assertEquals(false, freeStyleProjectactions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFreeStyleProjectactions freeStyleProjectactions1 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions2 = new SwagFreeStyleProjectactions();
        SwagFreeStyleProjectactions freeStyleProjectactions3;

        System.assertEquals(false, freeStyleProjectactions1.equals(freeStyleProjectactions3));
        System.assertEquals(false, freeStyleProjectactions2.equals(freeStyleProjectactions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFreeStyleProjectactions freeStyleProjectactions1 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions2 = new SwagFreeStyleProjectactions();

        System.assertEquals(freeStyleProjectactions1.hashCode(), freeStyleProjectactions1.hashCode());
        System.assertEquals(freeStyleProjectactions2.hashCode(), freeStyleProjectactions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFreeStyleProjectactions freeStyleProjectactions1 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions2 = SwagFreeStyleProjectactions.getExample();
        SwagFreeStyleProjectactions freeStyleProjectactions3 = new SwagFreeStyleProjectactions();
        SwagFreeStyleProjectactions freeStyleProjectactions4 = new SwagFreeStyleProjectactions();

        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions2));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions4));
        System.assertEquals(freeStyleProjectactions1.hashCode(), freeStyleProjectactions2.hashCode());
        System.assertEquals(freeStyleProjectactions3.hashCode(), freeStyleProjectactions4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFreeStyleProjectactions freeStyleProjectactions = new SwagFreeStyleProjectactions();
        Map<String, String> propertyMappings = freeStyleProjectactions.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
