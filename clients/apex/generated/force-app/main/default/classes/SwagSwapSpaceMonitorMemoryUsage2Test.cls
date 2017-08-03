@isTest
private class SwagSwapSpaceMonitorMemoryUsage2Test {
    @isTest
    private static void equalsSameInstance() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = swapSpaceMonitorMemoryUsage21;
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23 = new SwagSwapSpaceMonitorMemoryUsage2();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage24 = swapSpaceMonitorMemoryUsage23;

        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage22));
        System.assert(swapSpaceMonitorMemoryUsage22.equals(swapSpaceMonitorMemoryUsage21));
        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage21));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage24));
        System.assert(swapSpaceMonitorMemoryUsage24.equals(swapSpaceMonitorMemoryUsage23));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23 = new SwagSwapSpaceMonitorMemoryUsage2();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage24 = new SwagSwapSpaceMonitorMemoryUsage2();

        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage22));
        System.assert(swapSpaceMonitorMemoryUsage22.equals(swapSpaceMonitorMemoryUsage21));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage24));
        System.assert(swapSpaceMonitorMemoryUsage24.equals(swapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = new SwagSwapSpaceMonitorMemoryUsage2();

        System.assertEquals(false, swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage22));
        System.assertEquals(false, swapSpaceMonitorMemoryUsage22.equals(swapSpaceMonitorMemoryUsage21));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = new SwagSwapSpaceMonitorMemoryUsage2();

        System.assertEquals(false, swapSpaceMonitorMemoryUsage21.equals('foo'));
        System.assertEquals(false, swapSpaceMonitorMemoryUsage22.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = new SwagSwapSpaceMonitorMemoryUsage2();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23;

        System.assertEquals(false, swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage23));
        System.assertEquals(false, swapSpaceMonitorMemoryUsage22.equals(swapSpaceMonitorMemoryUsage23));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = new SwagSwapSpaceMonitorMemoryUsage2();

        System.assertEquals(swapSpaceMonitorMemoryUsage21.hashCode(), swapSpaceMonitorMemoryUsage21.hashCode());
        System.assertEquals(swapSpaceMonitorMemoryUsage22.hashCode(), swapSpaceMonitorMemoryUsage22.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage21 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage22 = SwagSwapSpaceMonitorMemoryUsage2.getExample();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage23 = new SwagSwapSpaceMonitorMemoryUsage2();
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage24 = new SwagSwapSpaceMonitorMemoryUsage2();

        System.assert(swapSpaceMonitorMemoryUsage21.equals(swapSpaceMonitorMemoryUsage22));
        System.assert(swapSpaceMonitorMemoryUsage23.equals(swapSpaceMonitorMemoryUsage24));
        System.assertEquals(swapSpaceMonitorMemoryUsage21.hashCode(), swapSpaceMonitorMemoryUsage22.hashCode());
        System.assertEquals(swapSpaceMonitorMemoryUsage23.hashCode(), swapSpaceMonitorMemoryUsage24.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagSwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage2 = new SwagSwapSpaceMonitorMemoryUsage2();
        Map<String, String> propertyMappings = swapSpaceMonitorMemoryUsage2.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
