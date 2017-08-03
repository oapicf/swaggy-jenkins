@isTest
private class SwagLabel1Test {
    @isTest
    private static void equalsSameInstance() {
        SwagLabel1 label11 = SwagLabel1.getExample();
        SwagLabel1 label12 = label11;
        SwagLabel1 label13 = new SwagLabel1();
        SwagLabel1 label14 = label13;

        System.assert(label11.equals(label12));
        System.assert(label12.equals(label11));
        System.assert(label11.equals(label11));
        System.assert(label13.equals(label14));
        System.assert(label14.equals(label13));
        System.assert(label13.equals(label13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagLabel1 label11 = SwagLabel1.getExample();
        SwagLabel1 label12 = SwagLabel1.getExample();
        SwagLabel1 label13 = new SwagLabel1();
        SwagLabel1 label14 = new SwagLabel1();

        System.assert(label11.equals(label12));
        System.assert(label12.equals(label11));
        System.assert(label13.equals(label14));
        System.assert(label14.equals(label13));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagLabel1 label11 = SwagLabel1.getExample();
        SwagLabel1 label12 = new SwagLabel1();

        System.assertEquals(false, label11.equals(label12));
        System.assertEquals(false, label12.equals(label11));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagLabel1 label11 = SwagLabel1.getExample();
        SwagLabel1 label12 = new SwagLabel1();

        System.assertEquals(false, label11.equals('foo'));
        System.assertEquals(false, label12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagLabel1 label11 = SwagLabel1.getExample();
        SwagLabel1 label12 = new SwagLabel1();
        SwagLabel1 label13;

        System.assertEquals(false, label11.equals(label13));
        System.assertEquals(false, label12.equals(label13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagLabel1 label11 = SwagLabel1.getExample();
        SwagLabel1 label12 = new SwagLabel1();

        System.assertEquals(label11.hashCode(), label11.hashCode());
        System.assertEquals(label12.hashCode(), label12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagLabel1 label11 = SwagLabel1.getExample();
        SwagLabel1 label12 = SwagLabel1.getExample();
        SwagLabel1 label13 = new SwagLabel1();
        SwagLabel1 label14 = new SwagLabel1();

        System.assert(label11.equals(label12));
        System.assert(label13.equals(label14));
        System.assertEquals(label11.hashCode(), label12.hashCode());
        System.assertEquals(label13.hashCode(), label14.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagLabel1 label1 = new SwagLabel1();
        Map<String, String> propertyMappings = label1.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
