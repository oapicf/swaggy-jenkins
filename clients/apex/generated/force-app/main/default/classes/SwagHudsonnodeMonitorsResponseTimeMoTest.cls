@isTest
private class SwagHudsonnodeMonitorsResponseTimeMoTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData1 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData2 = hudsonnodeMonitorsResponseTimeMonitorData1;
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData3 = new SwagHudsonnodeMonitorsResponseTimeMo();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData4 = hudsonnodeMonitorsResponseTimeMonitorData3;

        System.assert(hudsonnodeMonitorsResponseTimeMonitorData1.equals(hudsonnodeMonitorsResponseTimeMonitorData2));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData2.equals(hudsonnodeMonitorsResponseTimeMonitorData1));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData1.equals(hudsonnodeMonitorsResponseTimeMonitorData1));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData3.equals(hudsonnodeMonitorsResponseTimeMonitorData4));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData4.equals(hudsonnodeMonitorsResponseTimeMonitorData3));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData3.equals(hudsonnodeMonitorsResponseTimeMonitorData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData1 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData2 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData3 = new SwagHudsonnodeMonitorsResponseTimeMo();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData4 = new SwagHudsonnodeMonitorsResponseTimeMo();

        System.assert(hudsonnodeMonitorsResponseTimeMonitorData1.equals(hudsonnodeMonitorsResponseTimeMonitorData2));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData2.equals(hudsonnodeMonitorsResponseTimeMonitorData1));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData3.equals(hudsonnodeMonitorsResponseTimeMonitorData4));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData4.equals(hudsonnodeMonitorsResponseTimeMonitorData3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData1 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData2 = new SwagHudsonnodeMonitorsResponseTimeMo();

        System.assertEquals(false, hudsonnodeMonitorsResponseTimeMonitorData1.equals(hudsonnodeMonitorsResponseTimeMonitorData2));
        System.assertEquals(false, hudsonnodeMonitorsResponseTimeMonitorData2.equals(hudsonnodeMonitorsResponseTimeMonitorData1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData1 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData2 = new SwagHudsonnodeMonitorsResponseTimeMo();

        System.assertEquals(false, hudsonnodeMonitorsResponseTimeMonitorData1.equals('foo'));
        System.assertEquals(false, hudsonnodeMonitorsResponseTimeMonitorData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData1 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData2 = new SwagHudsonnodeMonitorsResponseTimeMo();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData3;

        System.assertEquals(false, hudsonnodeMonitorsResponseTimeMonitorData1.equals(hudsonnodeMonitorsResponseTimeMonitorData3));
        System.assertEquals(false, hudsonnodeMonitorsResponseTimeMonitorData2.equals(hudsonnodeMonitorsResponseTimeMonitorData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData1 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData2 = new SwagHudsonnodeMonitorsResponseTimeMo();

        System.assertEquals(hudsonnodeMonitorsResponseTimeMonitorData1.hashCode(), hudsonnodeMonitorsResponseTimeMonitorData1.hashCode());
        System.assertEquals(hudsonnodeMonitorsResponseTimeMonitorData2.hashCode(), hudsonnodeMonitorsResponseTimeMonitorData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData1 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData2 = SwagHudsonnodeMonitorsResponseTimeMo.getExample();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData3 = new SwagHudsonnodeMonitorsResponseTimeMo();
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData4 = new SwagHudsonnodeMonitorsResponseTimeMo();

        System.assert(hudsonnodeMonitorsResponseTimeMonitorData1.equals(hudsonnodeMonitorsResponseTimeMonitorData2));
        System.assert(hudsonnodeMonitorsResponseTimeMonitorData3.equals(hudsonnodeMonitorsResponseTimeMonitorData4));
        System.assertEquals(hudsonnodeMonitorsResponseTimeMonitorData1.hashCode(), hudsonnodeMonitorsResponseTimeMonitorData2.hashCode());
        System.assertEquals(hudsonnodeMonitorsResponseTimeMonitorData3.hashCode(), hudsonnodeMonitorsResponseTimeMonitorData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonnodeMonitorsResponseTimeMo hudsonnodeMonitorsResponseTimeMonitorData = new SwagHudsonnodeMonitorsResponseTimeMo();
        Map<String, String> propertyMappings = hudsonnodeMonitorsResponseTimeMonitorData.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
