@isTest
private class SwagResponseTimeMonitorDataTest {
    @isTest
    private static void equalsSameInstance() {
        SwagResponseTimeMonitorData responseTimeMonitorData1 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData2 = responseTimeMonitorData1;
        SwagResponseTimeMonitorData responseTimeMonitorData3 = new SwagResponseTimeMonitorData();
        SwagResponseTimeMonitorData responseTimeMonitorData4 = responseTimeMonitorData3;

        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData2));
        System.assert(responseTimeMonitorData2.equals(responseTimeMonitorData1));
        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData1));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData4));
        System.assert(responseTimeMonitorData4.equals(responseTimeMonitorData3));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagResponseTimeMonitorData responseTimeMonitorData1 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData2 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData3 = new SwagResponseTimeMonitorData();
        SwagResponseTimeMonitorData responseTimeMonitorData4 = new SwagResponseTimeMonitorData();

        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData2));
        System.assert(responseTimeMonitorData2.equals(responseTimeMonitorData1));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData4));
        System.assert(responseTimeMonitorData4.equals(responseTimeMonitorData3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagResponseTimeMonitorData responseTimeMonitorData1 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData2 = new SwagResponseTimeMonitorData();

        System.assertEquals(false, responseTimeMonitorData1.equals(responseTimeMonitorData2));
        System.assertEquals(false, responseTimeMonitorData2.equals(responseTimeMonitorData1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagResponseTimeMonitorData responseTimeMonitorData1 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData2 = new SwagResponseTimeMonitorData();

        System.assertEquals(false, responseTimeMonitorData1.equals('foo'));
        System.assertEquals(false, responseTimeMonitorData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagResponseTimeMonitorData responseTimeMonitorData1 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData2 = new SwagResponseTimeMonitorData();
        SwagResponseTimeMonitorData responseTimeMonitorData3;

        System.assertEquals(false, responseTimeMonitorData1.equals(responseTimeMonitorData3));
        System.assertEquals(false, responseTimeMonitorData2.equals(responseTimeMonitorData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagResponseTimeMonitorData responseTimeMonitorData1 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData2 = new SwagResponseTimeMonitorData();

        System.assertEquals(responseTimeMonitorData1.hashCode(), responseTimeMonitorData1.hashCode());
        System.assertEquals(responseTimeMonitorData2.hashCode(), responseTimeMonitorData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagResponseTimeMonitorData responseTimeMonitorData1 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData2 = SwagResponseTimeMonitorData.getExample();
        SwagResponseTimeMonitorData responseTimeMonitorData3 = new SwagResponseTimeMonitorData();
        SwagResponseTimeMonitorData responseTimeMonitorData4 = new SwagResponseTimeMonitorData();

        System.assert(responseTimeMonitorData1.equals(responseTimeMonitorData2));
        System.assert(responseTimeMonitorData3.equals(responseTimeMonitorData4));
        System.assertEquals(responseTimeMonitorData1.hashCode(), responseTimeMonitorData2.hashCode());
        System.assertEquals(responseTimeMonitorData3.hashCode(), responseTimeMonitorData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagResponseTimeMonitorData responseTimeMonitorData = new SwagResponseTimeMonitorData();
        Map<String, String> propertyMappings = responseTimeMonitorData.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
