@isTest
private class SwagHudsonMasterComputermonitorDataTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = hudsonMasterComputermonitorData1;
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData3 = new SwagHudsonMasterComputermonitorData();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData4 = hudsonMasterComputermonitorData3;

        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData2));
        System.assert(hudsonMasterComputermonitorData2.equals(hudsonMasterComputermonitorData1));
        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData1));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData4));
        System.assert(hudsonMasterComputermonitorData4.equals(hudsonMasterComputermonitorData3));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData3 = new SwagHudsonMasterComputermonitorData();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData4 = new SwagHudsonMasterComputermonitorData();

        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData2));
        System.assert(hudsonMasterComputermonitorData2.equals(hudsonMasterComputermonitorData1));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData4));
        System.assert(hudsonMasterComputermonitorData4.equals(hudsonMasterComputermonitorData3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = new SwagHudsonMasterComputermonitorData();

        System.assertEquals(false, hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData2));
        System.assertEquals(false, hudsonMasterComputermonitorData2.equals(hudsonMasterComputermonitorData1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = new SwagHudsonMasterComputermonitorData();

        System.assertEquals(false, hudsonMasterComputermonitorData1.equals('foo'));
        System.assertEquals(false, hudsonMasterComputermonitorData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = new SwagHudsonMasterComputermonitorData();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData3;

        System.assertEquals(false, hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData3));
        System.assertEquals(false, hudsonMasterComputermonitorData2.equals(hudsonMasterComputermonitorData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = new SwagHudsonMasterComputermonitorData();

        System.assertEquals(hudsonMasterComputermonitorData1.hashCode(), hudsonMasterComputermonitorData1.hashCode());
        System.assertEquals(hudsonMasterComputermonitorData2.hashCode(), hudsonMasterComputermonitorData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = SwagHudsonMasterComputermonitorData.getExample();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData3 = new SwagHudsonMasterComputermonitorData();
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData4 = new SwagHudsonMasterComputermonitorData();

        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData2));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData4));
        System.assertEquals(hudsonMasterComputermonitorData1.hashCode(), hudsonMasterComputermonitorData2.hashCode());
        System.assertEquals(hudsonMasterComputermonitorData3.hashCode(), hudsonMasterComputermonitorData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonMasterComputermonitorData hudsonMasterComputermonitorData = new SwagHudsonMasterComputermonitorData();
        Map<String, String> propertyMappings = hudsonMasterComputermonitorData.getPropertyMappings();
        System.assertEquals('hudsonNodeMonitorsSwapSpaceMonitor', propertyMappings.get('hudson.node_monitors.SwapSpaceMonitor'));
        System.assertEquals('hudsonNodeMonitorsTemporarySpaceMonitor', propertyMappings.get('hudson.node_monitors.TemporarySpaceMonitor'));
        System.assertEquals('hudsonNodeMonitorsDiskSpaceMonitor', propertyMappings.get('hudson.node_monitors.DiskSpaceMonitor'));
        System.assertEquals('hudsonNodeMonitorsArchitectureMonitor', propertyMappings.get('hudson.node_monitors.ArchitectureMonitor'));
        System.assertEquals('hudsonNodeMonitorsResponseTimeMonitor', propertyMappings.get('hudson.node_monitors.ResponseTimeMonitor'));
        System.assertEquals('hudsonNodeMonitorsClockMonitor', propertyMappings.get('hudson.node_monitors.ClockMonitor'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
