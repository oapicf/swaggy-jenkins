@isTest
private class SwagFreeStyleProjecthealthReportTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = freeStyleProjecthealthReport1;
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport3 = new SwagFreeStyleProjecthealthReport();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport4 = freeStyleProjecthealthReport3;

        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport2));
        System.assert(freeStyleProjecthealthReport2.equals(freeStyleProjecthealthReport1));
        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport1));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport4));
        System.assert(freeStyleProjecthealthReport4.equals(freeStyleProjecthealthReport3));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport3 = new SwagFreeStyleProjecthealthReport();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport4 = new SwagFreeStyleProjecthealthReport();

        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport2));
        System.assert(freeStyleProjecthealthReport2.equals(freeStyleProjecthealthReport1));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport4));
        System.assert(freeStyleProjecthealthReport4.equals(freeStyleProjecthealthReport3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = new SwagFreeStyleProjecthealthReport();

        System.assertEquals(false, freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport2));
        System.assertEquals(false, freeStyleProjecthealthReport2.equals(freeStyleProjecthealthReport1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = new SwagFreeStyleProjecthealthReport();

        System.assertEquals(false, freeStyleProjecthealthReport1.equals('foo'));
        System.assertEquals(false, freeStyleProjecthealthReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = new SwagFreeStyleProjecthealthReport();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport3;

        System.assertEquals(false, freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport3));
        System.assertEquals(false, freeStyleProjecthealthReport2.equals(freeStyleProjecthealthReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = new SwagFreeStyleProjecthealthReport();

        System.assertEquals(freeStyleProjecthealthReport1.hashCode(), freeStyleProjecthealthReport1.hashCode());
        System.assertEquals(freeStyleProjecthealthReport2.hashCode(), freeStyleProjecthealthReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = SwagFreeStyleProjecthealthReport.getExample();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport3 = new SwagFreeStyleProjecthealthReport();
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport4 = new SwagFreeStyleProjecthealthReport();

        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport2));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport4));
        System.assertEquals(freeStyleProjecthealthReport1.hashCode(), freeStyleProjecthealthReport2.hashCode());
        System.assertEquals(freeStyleProjecthealthReport3.hashCode(), freeStyleProjecthealthReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFreeStyleProjecthealthReport freeStyleProjecthealthReport = new SwagFreeStyleProjecthealthReport();
        Map<String, String> propertyMappings = freeStyleProjecthealthReport.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
