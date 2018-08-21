@isTest
private class OASResponseTimeMonitorDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMonitorData responseTimeMonitorData1 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData2 = responseTimeMonitorData1;
        OASResponseTimeMonitorData responseTimeMonitorData3 = new OASResponseTimeMonitorData();
        OASResponseTimeMonitorData responseTimeMonitorData4 = responseTimeMonitorData3;

        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData2));
        System.assert(responseTimeMonitorData2.equals(responseTimeMonitorData1));
        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData1));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData4));
        System.assert(responseTimeMonitorData4.equals(responseTimeMonitorData3));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMonitorData responseTimeMonitorData1 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData2 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData3 = new OASResponseTimeMonitorData();
        OASResponseTimeMonitorData responseTimeMonitorData4 = new OASResponseTimeMonitorData();

        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData2));
        System.assert(responseTimeMonitorData2.equals(responseTimeMonitorData1));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData4));
        System.assert(responseTimeMonitorData4.equals(responseTimeMonitorData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMonitorData responseTimeMonitorData1 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData2 = new OASResponseTimeMonitorData();

        System.assertEquals(false, responseTimeMonitorData1.equals('foo'));
        System.assertEquals(false, responseTimeMonitorData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMonitorData responseTimeMonitorData1 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData2 = new OASResponseTimeMonitorData();
        OASResponseTimeMonitorData responseTimeMonitorData3;

        System.assertEquals(false, responseTimeMonitorData1.equals(responseTimeMonitorData3));
        System.assertEquals(false, responseTimeMonitorData2.equals(responseTimeMonitorData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMonitorData responseTimeMonitorData1 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData2 = new OASResponseTimeMonitorData();

        System.assertEquals(responseTimeMonitorData1.hashCode(), responseTimeMonitorData1.hashCode());
        System.assertEquals(responseTimeMonitorData2.hashCode(), responseTimeMonitorData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMonitorData responseTimeMonitorData1 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData2 = OASResponseTimeMonitorData.getExample();
        OASResponseTimeMonitorData responseTimeMonitorData3 = new OASResponseTimeMonitorData();
        OASResponseTimeMonitorData responseTimeMonitorData4 = new OASResponseTimeMonitorData();

        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData2));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData4));
        System.assertEquals(responseTimeMonitorData1.hashCode(), responseTimeMonitorData2.hashCode());
        System.assertEquals(responseTimeMonitorData3.hashCode(), responseTimeMonitorData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeMonitorData responseTimeMonitorData = new OASResponseTimeMonitorData();
        Map<String, String> propertyMappings = responseTimeMonitorData.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
