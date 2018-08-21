@isTest
private class OASFreeStyleProjecthealthReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = freeStyleProjecthealthReport1;
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport3 = new OASFreeStyleProjecthealthReport();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport4 = freeStyleProjecthealthReport3;

        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport2));
        System.assert(freeStyleProjecthealthReport2.equals(freeStyleProjecthealthReport1));
        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport1));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport4));
        System.assert(freeStyleProjecthealthReport4.equals(freeStyleProjecthealthReport3));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport3 = new OASFreeStyleProjecthealthReport();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport4 = new OASFreeStyleProjecthealthReport();

        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport2));
        System.assert(freeStyleProjecthealthReport2.equals(freeStyleProjecthealthReport1));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport4));
        System.assert(freeStyleProjecthealthReport4.equals(freeStyleProjecthealthReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = new OASFreeStyleProjecthealthReport();

        System.assertEquals(false, freeStyleProjecthealthReport1.equals('foo'));
        System.assertEquals(false, freeStyleProjecthealthReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = new OASFreeStyleProjecthealthReport();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport3;

        System.assertEquals(false, freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport3));
        System.assertEquals(false, freeStyleProjecthealthReport2.equals(freeStyleProjecthealthReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = new OASFreeStyleProjecthealthReport();

        System.assertEquals(freeStyleProjecthealthReport1.hashCode(), freeStyleProjecthealthReport1.hashCode());
        System.assertEquals(freeStyleProjecthealthReport2.hashCode(), freeStyleProjecthealthReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport1 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport2 = OASFreeStyleProjecthealthReport.getExample();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport3 = new OASFreeStyleProjecthealthReport();
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport4 = new OASFreeStyleProjecthealthReport();

        System.assert(freeStyleProjecthealthReport1.equals(freeStyleProjecthealthReport2));
        System.assert(freeStyleProjecthealthReport3.equals(freeStyleProjecthealthReport4));
        System.assertEquals(freeStyleProjecthealthReport1.hashCode(), freeStyleProjecthealthReport2.hashCode());
        System.assertEquals(freeStyleProjecthealthReport3.hashCode(), freeStyleProjecthealthReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFreeStyleProjecthealthReport freeStyleProjecthealthReport = new OASFreeStyleProjecthealthReport();
        Map<String, String> propertyMappings = freeStyleProjecthealthReport.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
