@isTest
private class SwagAllViewTest {
    @isTest
    private static void equalsSameInstance() {
        SwagAllView allView1 = SwagAllView.getExample();
        SwagAllView allView2 = allView1;
        SwagAllView allView3 = new SwagAllView();
        SwagAllView allView4 = allView3;

        System.assert(allView1.equals(allView2));
        System.assert(allView2.equals(allView1));
        System.assert(allView1.equals(allView1));
        System.assert(allView3.equals(allView4));
        System.assert(allView4.equals(allView3));
        System.assert(allView3.equals(allView3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagAllView allView1 = SwagAllView.getExample();
        SwagAllView allView2 = SwagAllView.getExample();
        SwagAllView allView3 = new SwagAllView();
        SwagAllView allView4 = new SwagAllView();

        System.assert(allView1.equals(allView2));
        System.assert(allView2.equals(allView1));
        System.assert(allView3.equals(allView4));
        System.assert(allView4.equals(allView3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagAllView allView1 = SwagAllView.getExample();
        SwagAllView allView2 = new SwagAllView();

        System.assertEquals(false, allView1.equals(allView2));
        System.assertEquals(false, allView2.equals(allView1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagAllView allView1 = SwagAllView.getExample();
        SwagAllView allView2 = new SwagAllView();

        System.assertEquals(false, allView1.equals('foo'));
        System.assertEquals(false, allView2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagAllView allView1 = SwagAllView.getExample();
        SwagAllView allView2 = new SwagAllView();
        SwagAllView allView3;

        System.assertEquals(false, allView1.equals(allView3));
        System.assertEquals(false, allView2.equals(allView3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagAllView allView1 = SwagAllView.getExample();
        SwagAllView allView2 = new SwagAllView();

        System.assertEquals(allView1.hashCode(), allView1.hashCode());
        System.assertEquals(allView2.hashCode(), allView2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagAllView allView1 = SwagAllView.getExample();
        SwagAllView allView2 = SwagAllView.getExample();
        SwagAllView allView3 = new SwagAllView();
        SwagAllView allView4 = new SwagAllView();

        System.assert(allView1.equals(allView2));
        System.assert(allView3.equals(allView4));
        System.assertEquals(allView1.hashCode(), allView2.hashCode());
        System.assertEquals(allView3.hashCode(), allView4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagAllView allView = new SwagAllView();
        Map<String, String> propertyMappings = allView.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
