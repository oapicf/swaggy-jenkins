@isTest
private class OASAllViewTest {
    @isTest
    private static void equalsSameInstance() {
        OASAllView allView1 = OASAllView.getExample();
        OASAllView allView2 = allView1;
        OASAllView allView3 = new OASAllView();
        OASAllView allView4 = allView3;

        System.assert(allView1.equals(allView2));
        System.assert(allView2.equals(allView1));
        System.assert(allView1.equals(allView1));
        System.assert(allView3.equals(allView4));
        System.assert(allView4.equals(allView3));
        System.assert(allView3.equals(allView3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAllView allView1 = OASAllView.getExample();
        OASAllView allView2 = OASAllView.getExample();
        OASAllView allView3 = new OASAllView();
        OASAllView allView4 = new OASAllView();

        System.assert(allView1.equals(allView2));
        System.assert(allView2.equals(allView1));
        System.assert(allView3.equals(allView4));
        System.assert(allView4.equals(allView3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAllView allView1 = OASAllView.getExample();
        OASAllView allView2 = new OASAllView();

        System.assertEquals(false, allView1.equals('foo'));
        System.assertEquals(false, allView2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAllView allView1 = OASAllView.getExample();
        OASAllView allView2 = new OASAllView();
        OASAllView allView3;

        System.assertEquals(false, allView1.equals(allView3));
        System.assertEquals(false, allView2.equals(allView3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAllView allView1 = OASAllView.getExample();
        OASAllView allView2 = new OASAllView();

        System.assertEquals(allView1.hashCode(), allView1.hashCode());
        System.assertEquals(allView2.hashCode(), allView2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAllView allView1 = OASAllView.getExample();
        OASAllView allView2 = OASAllView.getExample();
        OASAllView allView3 = new OASAllView();
        OASAllView allView4 = new OASAllView();

        System.assert(allView1.equals(allView2));
        System.assert(allView3.equals(allView4));
        System.assertEquals(allView1.hashCode(), allView2.hashCode());
        System.assertEquals(allView3.hashCode(), allView4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAllView allView = new OASAllView();
        Map<String, String> propertyMappings = allView.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
