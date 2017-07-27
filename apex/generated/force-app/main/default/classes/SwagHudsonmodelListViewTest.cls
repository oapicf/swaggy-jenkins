@isTest
private class SwagHudsonmodelListViewTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelListView hudsonmodelListView1 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView2 = hudsonmodelListView1;
        SwagHudsonmodelListView hudsonmodelListView3 = new SwagHudsonmodelListView();
        SwagHudsonmodelListView hudsonmodelListView4 = hudsonmodelListView3;

        System.assert(hudsonmodelListView1.equals(hudsonmodelListView2));
        System.assert(hudsonmodelListView2.equals(hudsonmodelListView1));
        System.assert(hudsonmodelListView1.equals(hudsonmodelListView1));
        System.assert(hudsonmodelListView3.equals(hudsonmodelListView4));
        System.assert(hudsonmodelListView4.equals(hudsonmodelListView3));
        System.assert(hudsonmodelListView3.equals(hudsonmodelListView3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelListView hudsonmodelListView1 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView2 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView3 = new SwagHudsonmodelListView();
        SwagHudsonmodelListView hudsonmodelListView4 = new SwagHudsonmodelListView();

        System.assert(hudsonmodelListView1.equals(hudsonmodelListView2));
        System.assert(hudsonmodelListView2.equals(hudsonmodelListView1));
        System.assert(hudsonmodelListView3.equals(hudsonmodelListView4));
        System.assert(hudsonmodelListView4.equals(hudsonmodelListView3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelListView hudsonmodelListView1 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView2 = new SwagHudsonmodelListView();

        System.assertEquals(false, hudsonmodelListView1.equals(hudsonmodelListView2));
        System.assertEquals(false, hudsonmodelListView2.equals(hudsonmodelListView1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelListView hudsonmodelListView1 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView2 = new SwagHudsonmodelListView();

        System.assertEquals(false, hudsonmodelListView1.equals('foo'));
        System.assertEquals(false, hudsonmodelListView2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelListView hudsonmodelListView1 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView2 = new SwagHudsonmodelListView();
        SwagHudsonmodelListView hudsonmodelListView3;

        System.assertEquals(false, hudsonmodelListView1.equals(hudsonmodelListView3));
        System.assertEquals(false, hudsonmodelListView2.equals(hudsonmodelListView3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelListView hudsonmodelListView1 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView2 = new SwagHudsonmodelListView();

        System.assertEquals(hudsonmodelListView1.hashCode(), hudsonmodelListView1.hashCode());
        System.assertEquals(hudsonmodelListView2.hashCode(), hudsonmodelListView2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelListView hudsonmodelListView1 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView2 = SwagHudsonmodelListView.getExample();
        SwagHudsonmodelListView hudsonmodelListView3 = new SwagHudsonmodelListView();
        SwagHudsonmodelListView hudsonmodelListView4 = new SwagHudsonmodelListView();

        System.assert(hudsonmodelListView1.equals(hudsonmodelListView2));
        System.assert(hudsonmodelListView3.equals(hudsonmodelListView4));
        System.assertEquals(hudsonmodelListView1.hashCode(), hudsonmodelListView2.hashCode());
        System.assertEquals(hudsonmodelListView3.hashCode(), hudsonmodelListView4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelListView hudsonmodelListView = new SwagHudsonmodelListView();
        Map<String, String> propertyMappings = hudsonmodelListView.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelListView hudsonmodelListView = new SwagHudsonmodelListView();
        System.assertEquals(new List<SwagHudsonmodelFreeStyleProject>(), hudsonmodelListView.jobs);
        System.assertEquals(null, hudsonmodelListView.propertyClass);
        System.assertEquals(null, hudsonmodelListView.description);
        System.assertEquals(null, hudsonmodelListView.name);
        System.assertEquals(null, hudsonmodelListView.url);
    }
}
