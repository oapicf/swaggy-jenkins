@isTest
private class OASSwapSpaceMonitorMemoryUsage2Test {
    @isTest
    private static void equalsSameInstance() {
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = swapSpaceMonitorMemoryUsage21;
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23 = new OASSwapSpaceMonitorMemoryUsage2();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage24 = swapSpaceMonitorMemoryUsage23;

        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage22));
        System.assert(swapSpaceMonitorMemoryUsage22.equals(swapSpaceMonitorMemoryUsage21));
        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage21));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage24));
        System.assert(swapSpaceMonitorMemoryUsage24.equals(swapSpaceMonitorMemoryUsage23));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23 = new OASSwapSpaceMonitorMemoryUsage2();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage24 = new OASSwapSpaceMonitorMemoryUsage2();

        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage22));
        System.assert(swapSpaceMonitorMemoryUsage22.equals(swapSpaceMonitorMemoryUsage21));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage24));
        System.assert(swapSpaceMonitorMemoryUsage24.equals(swapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = new OASSwapSpaceMonitorMemoryUsage2();

        System.assertEquals(false, swapSpaceMonitorMemoryUsage21.equals('foo'));
        System.assertEquals(false, swapSpaceMonitorMemoryUsage22.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = new OASSwapSpaceMonitorMemoryUsage2();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23;

        System.assertEquals(false, swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage23));
        System.assertEquals(false, swapSpaceMonitorMemoryUsage22.equals(swapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = new OASSwapSpaceMonitorMemoryUsage2();

        System.assertEquals(swapSpaceMonitorMemoryUsage21.hashCode(), swapSpaceMonitorMemoryUsage21.hashCode());
        System.assertEquals(swapSpaceMonitorMemoryUsage22.hashCode(), swapSpaceMonitorMemoryUsage22.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = OASSwapSpaceMonitorMemoryUsage2.getExample();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23 = new OASSwapSpaceMonitorMemoryUsage2();
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage24 = new OASSwapSpaceMonitorMemoryUsage2();

        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage22));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage24));
        System.assertEquals(swapSpaceMonitorMemoryUsage21.hashCode(), swapSpaceMonitorMemoryUsage22.hashCode());
        System.assertEquals(swapSpaceMonitorMemoryUsage23.hashCode(), swapSpaceMonitorMemoryUsage24.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage2 = new OASSwapSpaceMonitorMemoryUsage2();
        Map<String, String> propertyMappings = swapSpaceMonitorMemoryUsage2.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
