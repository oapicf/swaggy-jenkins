@isTest
private class SwagHudsonmodelAllViewTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelAllView hudsonmodelAllView1 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView2 = hudsonmodelAllView1;
        SwagHudsonmodelAllView hudsonmodelAllView3 = new SwagHudsonmodelAllView();
        SwagHudsonmodelAllView hudsonmodelAllView4 = hudsonmodelAllView3;

        System.assert(hudsonmodelAllView1.equals(hudsonmodelAllView2));
        System.assert(hudsonmodelAllView2.equals(hudsonmodelAllView1));
        System.assert(hudsonmodelAllView1.equals(hudsonmodelAllView1));
        System.assert(hudsonmodelAllView3.equals(hudsonmodelAllView4));
        System.assert(hudsonmodelAllView4.equals(hudsonmodelAllView3));
        System.assert(hudsonmodelAllView3.equals(hudsonmodelAllView3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelAllView hudsonmodelAllView1 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView2 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView3 = new SwagHudsonmodelAllView();
        SwagHudsonmodelAllView hudsonmodelAllView4 = new SwagHudsonmodelAllView();

        System.assert(hudsonmodelAllView1.equals(hudsonmodelAllView2));
        System.assert(hudsonmodelAllView2.equals(hudsonmodelAllView1));
        System.assert(hudsonmodelAllView3.equals(hudsonmodelAllView4));
        System.assert(hudsonmodelAllView4.equals(hudsonmodelAllView3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelAllView hudsonmodelAllView1 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView2 = new SwagHudsonmodelAllView();

        System.assertEquals(false, hudsonmodelAllView1.equals(hudsonmodelAllView2));
        System.assertEquals(false, hudsonmodelAllView2.equals(hudsonmodelAllView1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelAllView hudsonmodelAllView1 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView2 = new SwagHudsonmodelAllView();

        System.assertEquals(false, hudsonmodelAllView1.equals('foo'));
        System.assertEquals(false, hudsonmodelAllView2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelAllView hudsonmodelAllView1 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView2 = new SwagHudsonmodelAllView();
        SwagHudsonmodelAllView hudsonmodelAllView3;

        System.assertEquals(false, hudsonmodelAllView1.equals(hudsonmodelAllView3));
        System.assertEquals(false, hudsonmodelAllView2.equals(hudsonmodelAllView3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelAllView hudsonmodelAllView1 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView2 = new SwagHudsonmodelAllView();

        System.assertEquals(hudsonmodelAllView1.hashCode(), hudsonmodelAllView1.hashCode());
        System.assertEquals(hudsonmodelAllView2.hashCode(), hudsonmodelAllView2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelAllView hudsonmodelAllView1 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView2 = SwagHudsonmodelAllView.getExample();
        SwagHudsonmodelAllView hudsonmodelAllView3 = new SwagHudsonmodelAllView();
        SwagHudsonmodelAllView hudsonmodelAllView4 = new SwagHudsonmodelAllView();

        System.assert(hudsonmodelAllView1.equals(hudsonmodelAllView2));
        System.assert(hudsonmodelAllView3.equals(hudsonmodelAllView4));
        System.assertEquals(hudsonmodelAllView1.hashCode(), hudsonmodelAllView2.hashCode());
        System.assertEquals(hudsonmodelAllView3.hashCode(), hudsonmodelAllView4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelAllView hudsonmodelAllView = new SwagHudsonmodelAllView();
        Map<String, String> propertyMappings = hudsonmodelAllView.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
