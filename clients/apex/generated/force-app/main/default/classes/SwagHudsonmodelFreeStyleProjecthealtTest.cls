@isTest
private class SwagHudsonmodelFreeStyleProjecthealtTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport1 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport2 = hudsonmodelFreeStyleProjecthealthReport1;
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport3 = new SwagHudsonmodelFreeStyleProjecthealt();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport4 = hudsonmodelFreeStyleProjecthealthReport3;

        System.assert(hudsonmodelFreeStyleProjecthealthReport1.equals(hudsonmodelFreeStyleProjecthealthReport2));
        System.assert(hudsonmodelFreeStyleProjecthealthReport2.equals(hudsonmodelFreeStyleProjecthealthReport1));
        System.assert(hudsonmodelFreeStyleProjecthealthReport1.equals(hudsonmodelFreeStyleProjecthealthReport1));
        System.assert(hudsonmodelFreeStyleProjecthealthReport3.equals(hudsonmodelFreeStyleProjecthealthReport4));
        System.assert(hudsonmodelFreeStyleProjecthealthReport4.equals(hudsonmodelFreeStyleProjecthealthReport3));
        System.assert(hudsonmodelFreeStyleProjecthealthReport3.equals(hudsonmodelFreeStyleProjecthealthReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport1 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport2 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport3 = new SwagHudsonmodelFreeStyleProjecthealt();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport4 = new SwagHudsonmodelFreeStyleProjecthealt();

        System.assert(hudsonmodelFreeStyleProjecthealthReport1.equals(hudsonmodelFreeStyleProjecthealthReport2));
        System.assert(hudsonmodelFreeStyleProjecthealthReport2.equals(hudsonmodelFreeStyleProjecthealthReport1));
        System.assert(hudsonmodelFreeStyleProjecthealthReport3.equals(hudsonmodelFreeStyleProjecthealthReport4));
        System.assert(hudsonmodelFreeStyleProjecthealthReport4.equals(hudsonmodelFreeStyleProjecthealthReport3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport1 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport2 = new SwagHudsonmodelFreeStyleProjecthealt();

        System.assertEquals(false, hudsonmodelFreeStyleProjecthealthReport1.equals(hudsonmodelFreeStyleProjecthealthReport2));
        System.assertEquals(false, hudsonmodelFreeStyleProjecthealthReport2.equals(hudsonmodelFreeStyleProjecthealthReport1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport1 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport2 = new SwagHudsonmodelFreeStyleProjecthealt();

        System.assertEquals(false, hudsonmodelFreeStyleProjecthealthReport1.equals('foo'));
        System.assertEquals(false, hudsonmodelFreeStyleProjecthealthReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport1 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport2 = new SwagHudsonmodelFreeStyleProjecthealt();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport3;

        System.assertEquals(false, hudsonmodelFreeStyleProjecthealthReport1.equals(hudsonmodelFreeStyleProjecthealthReport3));
        System.assertEquals(false, hudsonmodelFreeStyleProjecthealthReport2.equals(hudsonmodelFreeStyleProjecthealthReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport1 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport2 = new SwagHudsonmodelFreeStyleProjecthealt();

        System.assertEquals(hudsonmodelFreeStyleProjecthealthReport1.hashCode(), hudsonmodelFreeStyleProjecthealthReport1.hashCode());
        System.assertEquals(hudsonmodelFreeStyleProjecthealthReport2.hashCode(), hudsonmodelFreeStyleProjecthealthReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport1 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport2 = SwagHudsonmodelFreeStyleProjecthealt.getExample();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport3 = new SwagHudsonmodelFreeStyleProjecthealt();
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport4 = new SwagHudsonmodelFreeStyleProjecthealt();

        System.assert(hudsonmodelFreeStyleProjecthealthReport1.equals(hudsonmodelFreeStyleProjecthealthReport2));
        System.assert(hudsonmodelFreeStyleProjecthealthReport3.equals(hudsonmodelFreeStyleProjecthealthReport4));
        System.assertEquals(hudsonmodelFreeStyleProjecthealthReport1.hashCode(), hudsonmodelFreeStyleProjecthealthReport2.hashCode());
        System.assertEquals(hudsonmodelFreeStyleProjecthealthReport3.hashCode(), hudsonmodelFreeStyleProjecthealthReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelFreeStyleProjecthealt hudsonmodelFreeStyleProjecthealthReport = new SwagHudsonmodelFreeStyleProjecthealt();
        Map<String, String> propertyMappings = hudsonmodelFreeStyleProjecthealthReport.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
