@isTest
private class SwagDiskSpaceMonitorDescriptorDiskSpTest {
    @isTest
    private static void equalsSameInstance() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace1 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace2 = diskSpaceMonitorDescriptorDiskSpace1;
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace3 = new SwagDiskSpaceMonitorDescriptorDiskSp();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace4 = diskSpaceMonitorDescriptorDiskSpace3;

        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace2));
        System.assert(diskSpaceMonitorDescriptorDiskSpace2.equals(diskSpaceMonitorDescriptorDiskSpace1));
        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace1));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace4));
        System.assert(diskSpaceMonitorDescriptorDiskSpace4.equals(diskSpaceMonitorDescriptorDiskSpace3));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace1 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace2 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace3 = new SwagDiskSpaceMonitorDescriptorDiskSp();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace4 = new SwagDiskSpaceMonitorDescriptorDiskSp();

        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace2));
        System.assert(diskSpaceMonitorDescriptorDiskSpace2.equals(diskSpaceMonitorDescriptorDiskSpace1));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace4));
        System.assert(diskSpaceMonitorDescriptorDiskSpace4.equals(diskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace1 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace2 = new SwagDiskSpaceMonitorDescriptorDiskSp();

        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace2));
        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace2.equals(diskSpaceMonitorDescriptorDiskSpace1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace1 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace2 = new SwagDiskSpaceMonitorDescriptorDiskSp();

        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace1.equals('foo'));
        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace1 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace2 = new SwagDiskSpaceMonitorDescriptorDiskSp();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace3;

        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace3));
        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace2.equals(diskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace1 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace2 = new SwagDiskSpaceMonitorDescriptorDiskSp();

        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace1.hashCode(), diskSpaceMonitorDescriptorDiskSpace1.hashCode());
        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace2.hashCode(), diskSpaceMonitorDescriptorDiskSpace2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace1 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace2 = SwagDiskSpaceMonitorDescriptorDiskSp.getExample();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace3 = new SwagDiskSpaceMonitorDescriptorDiskSp();
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace4 = new SwagDiskSpaceMonitorDescriptorDiskSp();

        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace2));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace4));
        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace1.hashCode(), diskSpaceMonitorDescriptorDiskSpace2.hashCode());
        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace3.hashCode(), diskSpaceMonitorDescriptorDiskSpace4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagDiskSpaceMonitorDescriptorDiskSp diskSpaceMonitorDescriptorDiskSpace = new SwagDiskSpaceMonitorDescriptorDiskSp();
        Map<String, String> propertyMappings = diskSpaceMonitorDescriptorDiskSpace.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
