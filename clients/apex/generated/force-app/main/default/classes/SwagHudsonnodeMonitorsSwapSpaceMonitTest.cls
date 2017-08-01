@isTest
private class SwagHudsonnodeMonitorsSwapSpaceMonitTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22 = hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21;
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23 = new SwagHudsonnodeMonitorsSwapSpaceMonit();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24 = hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23;

        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23 = new SwagHudsonnodeMonitorsSwapSpaceMonit();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24 = new SwagHudsonnodeMonitorsSwapSpaceMonit();

        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22 = new SwagHudsonnodeMonitorsSwapSpaceMonit();

        System.assertEquals(false, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22));
        System.assertEquals(false, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22 = new SwagHudsonnodeMonitorsSwapSpaceMonit();

        System.assertEquals(false, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.equals('foo'));
        System.assertEquals(false, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22 = new SwagHudsonnodeMonitorsSwapSpaceMonit();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23;

        System.assertEquals(false, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23));
        System.assertEquals(false, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22 = new SwagHudsonnodeMonitorsSwapSpaceMonit();

        System.assertEquals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.hashCode(), hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.hashCode());
        System.assertEquals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.hashCode(), hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22 = SwagHudsonnodeMonitorsSwapSpaceMonit.getExample();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23 = new SwagHudsonnodeMonitorsSwapSpaceMonit();
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24 = new SwagHudsonnodeMonitorsSwapSpaceMonit();

        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22));
        System.assert(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23.equals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24));
        System.assertEquals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage21.hashCode(), hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage22.hashCode());
        System.assertEquals(hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage23.hashCode(), hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage24.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonnodeMonitorsSwapSpaceMonit hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 = new SwagHudsonnodeMonitorsSwapSpaceMonit();
        Map<String, String> propertyMappings = hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
