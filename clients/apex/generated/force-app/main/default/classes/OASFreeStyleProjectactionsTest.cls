@isTest
private class OASFreeStyleProjectactionsTest {
    @isTest
    private static void equalsSameInstance() {
        OASFreeStyleProjectactions freeStyleProjectactions1 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions2 = freeStyleProjectactions1;
        OASFreeStyleProjectactions freeStyleProjectactions3 = new OASFreeStyleProjectactions();
        OASFreeStyleProjectactions freeStyleProjectactions4 = freeStyleProjectactions3;

        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions2));
        System.assert(freeStyleProjectactions2.equals(freeStyleProjectactions1));
        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions1));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions4));
        System.assert(freeStyleProjectactions4.equals(freeStyleProjectactions3));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFreeStyleProjectactions freeStyleProjectactions1 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions2 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions3 = new OASFreeStyleProjectactions();
        OASFreeStyleProjectactions freeStyleProjectactions4 = new OASFreeStyleProjectactions();

        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions2));
        System.assert(freeStyleProjectactions2.equals(freeStyleProjectactions1));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions4));
        System.assert(freeStyleProjectactions4.equals(freeStyleProjectactions3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFreeStyleProjectactions freeStyleProjectactions1 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions2 = new OASFreeStyleProjectactions();

        System.assertEquals(false, freeStyleProjectactions1.equals('foo'));
        System.assertEquals(false, freeStyleProjectactions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFreeStyleProjectactions freeStyleProjectactions1 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions2 = new OASFreeStyleProjectactions();
        OASFreeStyleProjectactions freeStyleProjectactions3;

        System.assertEquals(false, freeStyleProjectactions1.equals(freeStyleProjectactions3));
        System.assertEquals(false, freeStyleProjectactions2.equals(freeStyleProjectactions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFreeStyleProjectactions freeStyleProjectactions1 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions2 = new OASFreeStyleProjectactions();

        System.assertEquals(freeStyleProjectactions1.hashCode(), freeStyleProjectactions1.hashCode());
        System.assertEquals(freeStyleProjectactions2.hashCode(), freeStyleProjectactions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFreeStyleProjectactions freeStyleProjectactions1 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions2 = OASFreeStyleProjectactions.getExample();
        OASFreeStyleProjectactions freeStyleProjectactions3 = new OASFreeStyleProjectactions();
        OASFreeStyleProjectactions freeStyleProjectactions4 = new OASFreeStyleProjectactions();

        System.assert(freeStyleProjectactions1.equals(freeStyleProjectactions2));
        System.assert(freeStyleProjectactions3.equals(freeStyleProjectactions4));
        System.assertEquals(freeStyleProjectactions1.hashCode(), freeStyleProjectactions2.hashCode());
        System.assertEquals(freeStyleProjectactions3.hashCode(), freeStyleProjectactions4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFreeStyleProjectactions freeStyleProjectactions = new OASFreeStyleProjectactions();
        Map<String, String> propertyMappings = freeStyleProjectactions.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
