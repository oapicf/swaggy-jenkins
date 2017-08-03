@isTest
private class SwagListViewTest {
    @isTest
    private static void equalsSameInstance() {
        SwagListView listView1 = SwagListView.getExample();
        SwagListView listView2 = listView1;
        SwagListView listView3 = new SwagListView();
        SwagListView listView4 = listView3;

        System.assert(listView1.equals(listView2));
        System.assert(listView2.equals(listView1));
        System.assert(listView1.equals(listView1));
        System.assert(listView3.equals(listView4));
        System.assert(listView4.equals(listView3));
        System.assert(listView3.equals(listView3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagListView listView1 = SwagListView.getExample();
        SwagListView listView2 = SwagListView.getExample();
        SwagListView listView3 = new SwagListView();
        SwagListView listView4 = new SwagListView();

        System.assert(listView1.equals(listView2));
        System.assert(listView2.equals(listView1));
        System.assert(listView3.equals(listView4));
        System.assert(listView4.equals(listView3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagListView listView1 = SwagListView.getExample();
        SwagListView listView2 = new SwagListView();

        System.assertEquals(false, listView1.equals(listView2));
        System.assertEquals(false, listView2.equals(listView1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagListView listView1 = SwagListView.getExample();
        SwagListView listView2 = new SwagListView();

        System.assertEquals(false, listView1.equals('foo'));
        System.assertEquals(false, listView2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagListView listView1 = SwagListView.getExample();
        SwagListView listView2 = new SwagListView();
        SwagListView listView3;

        System.assertEquals(false, listView1.equals(listView3));
        System.assertEquals(false, listView2.equals(listView3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagListView listView1 = SwagListView.getExample();
        SwagListView listView2 = new SwagListView();

        System.assertEquals(listView1.hashCode(), listView1.hashCode());
        System.assertEquals(listView2.hashCode(), listView2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagListView listView1 = SwagListView.getExample();
        SwagListView listView2 = SwagListView.getExample();
        SwagListView listView3 = new SwagListView();
        SwagListView listView4 = new SwagListView();

        System.assert(listView1.equals(listView2));
        System.assert(listView3.equals(listView4));
        System.assertEquals(listView1.hashCode(), listView2.hashCode());
        System.assertEquals(listView3.hashCode(), listView4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagListView listView = new SwagListView();
        Map<String, String> propertyMappings = listView.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagListView listView = new SwagListView();
        System.assertEquals(new List<SwagFreeStyleProject>(), listView.jobs);
        System.assertEquals(null, listView.propertyClass);
        System.assertEquals(null, listView.description);
        System.assertEquals(null, listView.name);
        System.assertEquals(null, listView.url);
    }
}
