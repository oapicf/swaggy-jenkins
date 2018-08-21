@isTest
private class OASListViewTest {
    @isTest
    private static void equalsSameInstance() {
        OASListView listView1 = OASListView.getExample();
        OASListView listView2 = listView1;
        OASListView listView3 = new OASListView();
        OASListView listView4 = listView3;

        System.assert(listView1.equals(listView2));
        System.assert(listView2.equals(listView1));
        System.assert(listView1.equals(listView1));
        System.assert(listView3.equals(listView4));
        System.assert(listView4.equals(listView3));
        System.assert(listView3.equals(listView3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASListView listView1 = OASListView.getExample();
        OASListView listView2 = OASListView.getExample();
        OASListView listView3 = new OASListView();
        OASListView listView4 = new OASListView();

        System.assert(listView1.equals(listView2));
        System.assert(listView2.equals(listView1));
        System.assert(listView3.equals(listView4));
        System.assert(listView4.equals(listView3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASListView listView1 = OASListView.getExample();
        OASListView listView2 = new OASListView();

        System.assertEquals(false, listView1.equals('foo'));
        System.assertEquals(false, listView2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASListView listView1 = OASListView.getExample();
        OASListView listView2 = new OASListView();
        OASListView listView3;

        System.assertEquals(false, listView1.equals(listView3));
        System.assertEquals(false, listView2.equals(listView3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASListView listView1 = OASListView.getExample();
        OASListView listView2 = new OASListView();

        System.assertEquals(listView1.hashCode(), listView1.hashCode());
        System.assertEquals(listView2.hashCode(), listView2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASListView listView1 = OASListView.getExample();
        OASListView listView2 = OASListView.getExample();
        OASListView listView3 = new OASListView();
        OASListView listView4 = new OASListView();

        System.assert(listView1.equals(listView2));
        System.assert(listView3.equals(listView4));
        System.assertEquals(listView1.hashCode(), listView2.hashCode());
        System.assertEquals(listView3.hashCode(), listView4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASListView listView = new OASListView();
        Map<String, String> propertyMappings = listView.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASListView listView = new OASListView();
        System.assertEquals(new List<OASFreeStyleProject>(), listView.jobs);
        System.assertEquals(null, listView.propertyClass);
        System.assertEquals(null, listView.description);
        System.assertEquals(null, listView.name);
        System.assertEquals(null, listView.url);
    }
}
