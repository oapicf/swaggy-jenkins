@isTest
private class OASClockDifferenceTest {
    @isTest
    private static void equalsSameInstance() {
        OASClockDifference clockDifference1 = OASClockDifference.getExample();
        OASClockDifference clockDifference2 = clockDifference1;
        OASClockDifference clockDifference3 = new OASClockDifference();
        OASClockDifference clockDifference4 = clockDifference3;

        System.assert(clockDifference1.equals(clockDifference2));
        System.assert(clockDifference2.equals(clockDifference1));
        System.assert(clockDifference1.equals(clockDifference1));
        System.assert(clockDifference3.equals(clockDifference4));
        System.assert(clockDifference4.equals(clockDifference3));
        System.assert(clockDifference3.equals(clockDifference3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClockDifference clockDifference1 = OASClockDifference.getExample();
        OASClockDifference clockDifference2 = OASClockDifference.getExample();
        OASClockDifference clockDifference3 = new OASClockDifference();
        OASClockDifference clockDifference4 = new OASClockDifference();

        System.assert(clockDifference1.equals(clockDifference2));
        System.assert(clockDifference2.equals(clockDifference1));
        System.assert(clockDifference3.equals(clockDifference4));
        System.assert(clockDifference4.equals(clockDifference3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClockDifference clockDifference1 = OASClockDifference.getExample();
        OASClockDifference clockDifference2 = new OASClockDifference();

        System.assertEquals(false, clockDifference1.equals('foo'));
        System.assertEquals(false, clockDifference2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClockDifference clockDifference1 = OASClockDifference.getExample();
        OASClockDifference clockDifference2 = new OASClockDifference();
        OASClockDifference clockDifference3;

        System.assertEquals(false, clockDifference1.equals(clockDifference3));
        System.assertEquals(false, clockDifference2.equals(clockDifference3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClockDifference clockDifference1 = OASClockDifference.getExample();
        OASClockDifference clockDifference2 = new OASClockDifference();

        System.assertEquals(clockDifference1.hashCode(), clockDifference1.hashCode());
        System.assertEquals(clockDifference2.hashCode(), clockDifference2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClockDifference clockDifference1 = OASClockDifference.getExample();
        OASClockDifference clockDifference2 = OASClockDifference.getExample();
        OASClockDifference clockDifference3 = new OASClockDifference();
        OASClockDifference clockDifference4 = new OASClockDifference();

        System.assert(clockDifference1.equals(clockDifference2));
        System.assert(clockDifference3.equals(clockDifference4));
        System.assertEquals(clockDifference1.hashCode(), clockDifference2.hashCode());
        System.assertEquals(clockDifference3.hashCode(), clockDifference4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClockDifference clockDifference = new OASClockDifference();
        Map<String, String> propertyMappings = clockDifference.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
