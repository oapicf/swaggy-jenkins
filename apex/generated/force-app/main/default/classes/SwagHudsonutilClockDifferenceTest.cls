@isTest
private class SwagHudsonutilClockDifferenceTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonutilClockDifference hudsonutilClockDifference1 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference2 = hudsonutilClockDifference1;
        SwagHudsonutilClockDifference hudsonutilClockDifference3 = new SwagHudsonutilClockDifference();
        SwagHudsonutilClockDifference hudsonutilClockDifference4 = hudsonutilClockDifference3;

        System.assert(hudsonutilClockDifference1.equals(hudsonutilClockDifference2));
        System.assert(hudsonutilClockDifference2.equals(hudsonutilClockDifference1));
        System.assert(hudsonutilClockDifference1.equals(hudsonutilClockDifference1));
        System.assert(hudsonutilClockDifference3.equals(hudsonutilClockDifference4));
        System.assert(hudsonutilClockDifference4.equals(hudsonutilClockDifference3));
        System.assert(hudsonutilClockDifference3.equals(hudsonutilClockDifference3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonutilClockDifference hudsonutilClockDifference1 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference2 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference3 = new SwagHudsonutilClockDifference();
        SwagHudsonutilClockDifference hudsonutilClockDifference4 = new SwagHudsonutilClockDifference();

        System.assert(hudsonutilClockDifference1.equals(hudsonutilClockDifference2));
        System.assert(hudsonutilClockDifference2.equals(hudsonutilClockDifference1));
        System.assert(hudsonutilClockDifference3.equals(hudsonutilClockDifference4));
        System.assert(hudsonutilClockDifference4.equals(hudsonutilClockDifference3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonutilClockDifference hudsonutilClockDifference1 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference2 = new SwagHudsonutilClockDifference();

        System.assertEquals(false, hudsonutilClockDifference1.equals(hudsonutilClockDifference2));
        System.assertEquals(false, hudsonutilClockDifference2.equals(hudsonutilClockDifference1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonutilClockDifference hudsonutilClockDifference1 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference2 = new SwagHudsonutilClockDifference();

        System.assertEquals(false, hudsonutilClockDifference1.equals('foo'));
        System.assertEquals(false, hudsonutilClockDifference2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonutilClockDifference hudsonutilClockDifference1 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference2 = new SwagHudsonutilClockDifference();
        SwagHudsonutilClockDifference hudsonutilClockDifference3;

        System.assertEquals(false, hudsonutilClockDifference1.equals(hudsonutilClockDifference3));
        System.assertEquals(false, hudsonutilClockDifference2.equals(hudsonutilClockDifference3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonutilClockDifference hudsonutilClockDifference1 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference2 = new SwagHudsonutilClockDifference();

        System.assertEquals(hudsonutilClockDifference1.hashCode(), hudsonutilClockDifference1.hashCode());
        System.assertEquals(hudsonutilClockDifference2.hashCode(), hudsonutilClockDifference2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonutilClockDifference hudsonutilClockDifference1 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference2 = SwagHudsonutilClockDifference.getExample();
        SwagHudsonutilClockDifference hudsonutilClockDifference3 = new SwagHudsonutilClockDifference();
        SwagHudsonutilClockDifference hudsonutilClockDifference4 = new SwagHudsonutilClockDifference();

        System.assert(hudsonutilClockDifference1.equals(hudsonutilClockDifference2));
        System.assert(hudsonutilClockDifference3.equals(hudsonutilClockDifference4));
        System.assertEquals(hudsonutilClockDifference1.hashCode(), hudsonutilClockDifference2.hashCode());
        System.assertEquals(hudsonutilClockDifference3.hashCode(), hudsonutilClockDifference4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonutilClockDifference hudsonutilClockDifference = new SwagHudsonutilClockDifference();
        Map<String, String> propertyMappings = hudsonutilClockDifference.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
