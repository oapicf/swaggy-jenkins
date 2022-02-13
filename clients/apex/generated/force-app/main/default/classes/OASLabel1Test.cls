@isTest
private class OASLabel1Test {
    @isTest
    private static void equalsSameInstance() {
        OASLabel1 label11 = OASLabel1.getExample();
        OASLabel1 label12 = label11;
        OASLabel1 label13 = new OASLabel1();
        OASLabel1 label14 = label13;

        System.assert(label11.equals(label12));
        System.assert(label12.equals(label11));
        System.assert(label11.equals(label11));
        System.assert(label13.equals(label14));
        System.assert(label14.equals(label13));
        System.assert(label13.equals(label13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLabel1 label11 = OASLabel1.getExample();
        OASLabel1 label12 = OASLabel1.getExample();
        OASLabel1 label13 = new OASLabel1();
        OASLabel1 label14 = new OASLabel1();

        System.assert(label11.equals(label12));
        System.assert(label12.equals(label11));
        System.assert(label13.equals(label14));
        System.assert(label14.equals(label13));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLabel1 label11 = OASLabel1.getExample();
        OASLabel1 label12 = new OASLabel1();

        System.assertEquals(false, label11.equals('foo'));
        System.assertEquals(false, label12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLabel1 label11 = OASLabel1.getExample();
        OASLabel1 label12 = new OASLabel1();
        OASLabel1 label13;

        System.assertEquals(false, label11.equals(label13));
        System.assertEquals(false, label12.equals(label13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLabel1 label11 = OASLabel1.getExample();
        OASLabel1 label12 = new OASLabel1();

        System.assertEquals(label11.hashCode(), label11.hashCode());
        System.assertEquals(label12.hashCode(), label12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLabel1 label11 = OASLabel1.getExample();
        OASLabel1 label12 = OASLabel1.getExample();
        OASLabel1 label13 = new OASLabel1();
        OASLabel1 label14 = new OASLabel1();

        System.assert(label11.equals(label12));
        System.assert(label13.equals(label14));
        System.assertEquals(label11.hashCode(), label12.hashCode());
        System.assertEquals(label13.hashCode(), label14.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLabel1 label1 = new OASLabel1();
        Map<String, String> x-property-mappings = label1.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }
}
