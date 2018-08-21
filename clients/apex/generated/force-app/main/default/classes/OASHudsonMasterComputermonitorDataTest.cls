@isTest
private class OASHudsonMasterComputermonitorDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = hudsonMasterComputermonitorData1;
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData3 = new OASHudsonMasterComputermonitorData();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData4 = hudsonMasterComputermonitorData3;

        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData2));
        System.assert(hudsonMasterComputermonitorData2.equals(hudsonMasterComputermonitorData1));
        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData1));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData4));
        System.assert(hudsonMasterComputermonitorData4.equals(hudsonMasterComputermonitorData3));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData3 = new OASHudsonMasterComputermonitorData();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData4 = new OASHudsonMasterComputermonitorData();

        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData2));
        System.assert(hudsonMasterComputermonitorData2.equals(hudsonMasterComputermonitorData1));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData4));
        System.assert(hudsonMasterComputermonitorData4.equals(hudsonMasterComputermonitorData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = new OASHudsonMasterComputermonitorData();

        System.assertEquals(false, hudsonMasterComputermonitorData1.equals('foo'));
        System.assertEquals(false, hudsonMasterComputermonitorData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = new OASHudsonMasterComputermonitorData();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData3;

        System.assertEquals(false, hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData3));
        System.assertEquals(false, hudsonMasterComputermonitorData2.equals(hudsonMasterComputermonitorData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = new OASHudsonMasterComputermonitorData();

        System.assertEquals(hudsonMasterComputermonitorData1.hashCode(), hudsonMasterComputermonitorData1.hashCode());
        System.assertEquals(hudsonMasterComputermonitorData2.hashCode(), hudsonMasterComputermonitorData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData1 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData2 = OASHudsonMasterComputermonitorData.getExample();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData3 = new OASHudsonMasterComputermonitorData();
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData4 = new OASHudsonMasterComputermonitorData();

        System.assert(hudsonMasterComputermonitorData1.equals(hudsonMasterComputermonitorData2));
        System.assert(hudsonMasterComputermonitorData3.equals(hudsonMasterComputermonitorData4));
        System.assertEquals(hudsonMasterComputermonitorData1.hashCode(), hudsonMasterComputermonitorData2.hashCode());
        System.assertEquals(hudsonMasterComputermonitorData3.hashCode(), hudsonMasterComputermonitorData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASHudsonMasterComputermonitorData hudsonMasterComputermonitorData = new OASHudsonMasterComputermonitorData();
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
