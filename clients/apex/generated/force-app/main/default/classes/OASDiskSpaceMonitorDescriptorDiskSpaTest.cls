@isTest
private class OASDiskSpaceMonitorDescriptorDiskSpaTest {
    @isTest
    private static void equalsSameInstance() {
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace1 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace2 = diskSpaceMonitorDescriptorDiskSpace1;
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace3 = new OASDiskSpaceMonitorDescriptorDiskSpa();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace4 = diskSpaceMonitorDescriptorDiskSpace3;

        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace2));
        System.assert(diskSpaceMonitorDescriptorDiskSpace2.equals(diskSpaceMonitorDescriptorDiskSpace1));
        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace1));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace4));
        System.assert(diskSpaceMonitorDescriptorDiskSpace4.equals(diskSpaceMonitorDescriptorDiskSpace3));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace1 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace2 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace3 = new OASDiskSpaceMonitorDescriptorDiskSpa();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace4 = new OASDiskSpaceMonitorDescriptorDiskSpa();

        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace2));
        System.assert(diskSpaceMonitorDescriptorDiskSpace2.equals(diskSpaceMonitorDescriptorDiskSpace1));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace4));
        System.assert(diskSpaceMonitorDescriptorDiskSpace4.equals(diskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace1 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace2 = new OASDiskSpaceMonitorDescriptorDiskSpa();

        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace1.equals('foo'));
        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace1 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace2 = new OASDiskSpaceMonitorDescriptorDiskSpa();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace3;

        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace3));
        System.assertEquals(false, diskSpaceMonitorDescriptorDiskSpace2.equals(diskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace1 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace2 = new OASDiskSpaceMonitorDescriptorDiskSpa();

        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace1.hashCode(), diskSpaceMonitorDescriptorDiskSpace1.hashCode());
        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace2.hashCode(), diskSpaceMonitorDescriptorDiskSpace2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace1 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace2 = OASDiskSpaceMonitorDescriptorDiskSpa.getExample();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace3 = new OASDiskSpaceMonitorDescriptorDiskSpa();
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace4 = new OASDiskSpaceMonitorDescriptorDiskSpa();

        System.assert(diskSpaceMonitorDescriptorDiskSpace1.equals(diskSpaceMonitorDescriptorDiskSpace2));
        System.assert(diskSpaceMonitorDescriptorDiskSpace3.equals(diskSpaceMonitorDescriptorDiskSpace4));
        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace1.hashCode(), diskSpaceMonitorDescriptorDiskSpace2.hashCode());
        System.assertEquals(diskSpaceMonitorDescriptorDiskSpace3.hashCode(), diskSpaceMonitorDescriptorDiskSpace4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDiskSpaceMonitorDescriptorDiskSpa diskSpaceMonitorDescriptorDiskSpace = new OASDiskSpaceMonitorDescriptorDiskSpa();
        Map<String, String> propertyMappings = diskSpaceMonitorDescriptorDiskSpace.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
