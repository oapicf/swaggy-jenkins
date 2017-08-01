@isTest
private class SwagHudsonmodelLabel1Test {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelLabel1 hudsonmodelLabel11 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel12 = hudsonmodelLabel11;
        SwagHudsonmodelLabel1 hudsonmodelLabel13 = new SwagHudsonmodelLabel1();
        SwagHudsonmodelLabel1 hudsonmodelLabel14 = hudsonmodelLabel13;

        System.assert(hudsonmodelLabel11.equals(hudsonmodelLabel12));
        System.assert(hudsonmodelLabel12.equals(hudsonmodelLabel11));
        System.assert(hudsonmodelLabel11.equals(hudsonmodelLabel11));
        System.assert(hudsonmodelLabel13.equals(hudsonmodelLabel14));
        System.assert(hudsonmodelLabel14.equals(hudsonmodelLabel13));
        System.assert(hudsonmodelLabel13.equals(hudsonmodelLabel13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelLabel1 hudsonmodelLabel11 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel12 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel13 = new SwagHudsonmodelLabel1();
        SwagHudsonmodelLabel1 hudsonmodelLabel14 = new SwagHudsonmodelLabel1();

        System.assert(hudsonmodelLabel11.equals(hudsonmodelLabel12));
        System.assert(hudsonmodelLabel12.equals(hudsonmodelLabel11));
        System.assert(hudsonmodelLabel13.equals(hudsonmodelLabel14));
        System.assert(hudsonmodelLabel14.equals(hudsonmodelLabel13));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelLabel1 hudsonmodelLabel11 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel12 = new SwagHudsonmodelLabel1();

        System.assertEquals(false, hudsonmodelLabel11.equals(hudsonmodelLabel12));
        System.assertEquals(false, hudsonmodelLabel12.equals(hudsonmodelLabel11));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelLabel1 hudsonmodelLabel11 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel12 = new SwagHudsonmodelLabel1();

        System.assertEquals(false, hudsonmodelLabel11.equals('foo'));
        System.assertEquals(false, hudsonmodelLabel12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelLabel1 hudsonmodelLabel11 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel12 = new SwagHudsonmodelLabel1();
        SwagHudsonmodelLabel1 hudsonmodelLabel13;

        System.assertEquals(false, hudsonmodelLabel11.equals(hudsonmodelLabel13));
        System.assertEquals(false, hudsonmodelLabel12.equals(hudsonmodelLabel13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelLabel1 hudsonmodelLabel11 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel12 = new SwagHudsonmodelLabel1();

        System.assertEquals(hudsonmodelLabel11.hashCode(), hudsonmodelLabel11.hashCode());
        System.assertEquals(hudsonmodelLabel12.hashCode(), hudsonmodelLabel12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelLabel1 hudsonmodelLabel11 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel12 = SwagHudsonmodelLabel1.getExample();
        SwagHudsonmodelLabel1 hudsonmodelLabel13 = new SwagHudsonmodelLabel1();
        SwagHudsonmodelLabel1 hudsonmodelLabel14 = new SwagHudsonmodelLabel1();

        System.assert(hudsonmodelLabel11.equals(hudsonmodelLabel12));
        System.assert(hudsonmodelLabel13.equals(hudsonmodelLabel14));
        System.assertEquals(hudsonmodelLabel11.hashCode(), hudsonmodelLabel12.hashCode());
        System.assertEquals(hudsonmodelLabel13.hashCode(), hudsonmodelLabel14.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelLabel1 hudsonmodelLabel1 = new SwagHudsonmodelLabel1();
        Map<String, String> propertyMappings = hudsonmodelLabel1.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
