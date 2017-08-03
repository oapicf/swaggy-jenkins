@isTest
private class SwagClockDifferenceTest {
    @isTest
    private static void equalsSameInstance() {
        SwagClockDifference clockDifference1 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference2 = clockDifference1;
        SwagClockDifference clockDifference3 = new SwagClockDifference();
        SwagClockDifference clockDifference4 = clockDifference3;

        System.assert(clockDifference1.equals(clockDifference2));
        System.assert(clockDifference2.equals(clockDifference1));
        System.assert(clockDifference1.equals(clockDifference1));
        System.assert(clockDifference3.equals(clockDifference4));
        System.assert(clockDifference4.equals(clockDifference3));
        System.assert(clockDifference3.equals(clockDifference3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagClockDifference clockDifference1 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference2 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference3 = new SwagClockDifference();
        SwagClockDifference clockDifference4 = new SwagClockDifference();

        System.assert(clockDifference1.equals(clockDifference2));
        System.assert(clockDifference2.equals(clockDifference1));
        System.assert(clockDifference3.equals(clockDifference4));
        System.assert(clockDifference4.equals(clockDifference3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagClockDifference clockDifference1 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference2 = new SwagClockDifference();

        System.assertEquals(false, clockDifference1.equals(clockDifference2));
        System.assertEquals(false, clockDifference2.equals(clockDifference1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagClockDifference clockDifference1 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference2 = new SwagClockDifference();

        System.assertEquals(false, clockDifference1.equals('foo'));
        System.assertEquals(false, clockDifference2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagClockDifference clockDifference1 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference2 = new SwagClockDifference();
        SwagClockDifference clockDifference3;

        System.assertEquals(false, clockDifference1.equals(clockDifference3));
        System.assertEquals(false, clockDifference2.equals(clockDifference3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagClockDifference clockDifference1 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference2 = new SwagClockDifference();

        System.assertEquals(clockDifference1.hashCode(), clockDifference1.hashCode());
        System.assertEquals(clockDifference2.hashCode(), clockDifference2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagClockDifference clockDifference1 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference2 = SwagClockDifference.getExample();
        SwagClockDifference clockDifference3 = new SwagClockDifference();
        SwagClockDifference clockDifference4 = new SwagClockDifference();

        System.assert(clockDifference1.equals(clockDifference2));
        System.assert(clockDifference3.equals(clockDifference4));
        System.assertEquals(clockDifference1.hashCode(), clockDifference2.hashCode());
        System.assertEquals(clockDifference3.hashCode(), clockDifference4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagClockDifference clockDifference = new SwagClockDifference();
        Map<String, String> propertyMappings = clockDifference.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
