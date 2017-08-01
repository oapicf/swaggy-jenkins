@isTest
private class SwagHudsonmodelHudsonMasterComputerMTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData1 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData2 = hudsonmodelHudsonMasterComputerMonitorData1;
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData3 = new SwagHudsonmodelHudsonMasterComputerM();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData4 = hudsonmodelHudsonMasterComputerMonitorData3;

        System.assert(hudsonmodelHudsonMasterComputerMonitorData1.equals(hudsonmodelHudsonMasterComputerMonitorData2));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData2.equals(hudsonmodelHudsonMasterComputerMonitorData1));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData1.equals(hudsonmodelHudsonMasterComputerMonitorData1));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData3.equals(hudsonmodelHudsonMasterComputerMonitorData4));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData4.equals(hudsonmodelHudsonMasterComputerMonitorData3));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData3.equals(hudsonmodelHudsonMasterComputerMonitorData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData1 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData2 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData3 = new SwagHudsonmodelHudsonMasterComputerM();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData4 = new SwagHudsonmodelHudsonMasterComputerM();

        System.assert(hudsonmodelHudsonMasterComputerMonitorData1.equals(hudsonmodelHudsonMasterComputerMonitorData2));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData2.equals(hudsonmodelHudsonMasterComputerMonitorData1));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData3.equals(hudsonmodelHudsonMasterComputerMonitorData4));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData4.equals(hudsonmodelHudsonMasterComputerMonitorData3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData1 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData2 = new SwagHudsonmodelHudsonMasterComputerM();

        System.assertEquals(false, hudsonmodelHudsonMasterComputerMonitorData1.equals(hudsonmodelHudsonMasterComputerMonitorData2));
        System.assertEquals(false, hudsonmodelHudsonMasterComputerMonitorData2.equals(hudsonmodelHudsonMasterComputerMonitorData1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData1 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData2 = new SwagHudsonmodelHudsonMasterComputerM();

        System.assertEquals(false, hudsonmodelHudsonMasterComputerMonitorData1.equals('foo'));
        System.assertEquals(false, hudsonmodelHudsonMasterComputerMonitorData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData1 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData2 = new SwagHudsonmodelHudsonMasterComputerM();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData3;

        System.assertEquals(false, hudsonmodelHudsonMasterComputerMonitorData1.equals(hudsonmodelHudsonMasterComputerMonitorData3));
        System.assertEquals(false, hudsonmodelHudsonMasterComputerMonitorData2.equals(hudsonmodelHudsonMasterComputerMonitorData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData1 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData2 = new SwagHudsonmodelHudsonMasterComputerM();

        System.assertEquals(hudsonmodelHudsonMasterComputerMonitorData1.hashCode(), hudsonmodelHudsonMasterComputerMonitorData1.hashCode());
        System.assertEquals(hudsonmodelHudsonMasterComputerMonitorData2.hashCode(), hudsonmodelHudsonMasterComputerMonitorData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData1 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData2 = SwagHudsonmodelHudsonMasterComputerM.getExample();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData3 = new SwagHudsonmodelHudsonMasterComputerM();
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData4 = new SwagHudsonmodelHudsonMasterComputerM();

        System.assert(hudsonmodelHudsonMasterComputerMonitorData1.equals(hudsonmodelHudsonMasterComputerMonitorData2));
        System.assert(hudsonmodelHudsonMasterComputerMonitorData3.equals(hudsonmodelHudsonMasterComputerMonitorData4));
        System.assertEquals(hudsonmodelHudsonMasterComputerMonitorData1.hashCode(), hudsonmodelHudsonMasterComputerMonitorData2.hashCode());
        System.assertEquals(hudsonmodelHudsonMasterComputerMonitorData3.hashCode(), hudsonmodelHudsonMasterComputerMonitorData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelHudsonMasterComputerM hudsonmodelHudsonMasterComputerMonitorData = new SwagHudsonmodelHudsonMasterComputerM();
        Map<String, String> propertyMappings = hudsonmodelHudsonMasterComputerMonitorData.getPropertyMappings();
        System.assertEquals('hudsonNodeMonitorsSwapSpaceMonitor', propertyMappings.get('hudson.node_monitors.SwapSpaceMonitor'));
        System.assertEquals('hudsonNodeMonitorsTemporarySpaceMonitor', propertyMappings.get('hudson.node_monitors.TemporarySpaceMonitor'));
        System.assertEquals('hudsonNodeMonitorsDiskSpaceMonitor', propertyMappings.get('hudson.node_monitors.DiskSpaceMonitor'));
        System.assertEquals('hudsonNodeMonitorsArchitectureMonitor', propertyMappings.get('hudson.node_monitors.ArchitectureMonitor'));
        System.assertEquals('hudsonNodeMonitorsResponseTimeMonitor', propertyMappings.get('hudson.node_monitors.ResponseTimeMonitor'));
        System.assertEquals('hudsonNodeMonitorsClockMonitor', propertyMappings.get('hudson.node_monitors.ClockMonitor'));
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
