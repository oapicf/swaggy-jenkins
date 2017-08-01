@isTest
private class SwagHudsonnodeMonitorsDiskSpaceMonitTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2 = hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1;
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3 = new SwagHudsonnodeMonitorsDiskSpaceMonit();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4 = hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3;

        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3 = new SwagHudsonnodeMonitorsDiskSpaceMonit();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4 = new SwagHudsonnodeMonitorsDiskSpaceMonit();

        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2 = new SwagHudsonnodeMonitorsDiskSpaceMonit();

        System.assertEquals(false, hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2));
        System.assertEquals(false, hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2 = new SwagHudsonnodeMonitorsDiskSpaceMonit();

        System.assertEquals(false, hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.equals('foo'));
        System.assertEquals(false, hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2 = new SwagHudsonnodeMonitorsDiskSpaceMonit();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3;

        System.assertEquals(false, hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3));
        System.assertEquals(false, hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2 = new SwagHudsonnodeMonitorsDiskSpaceMonit();

        System.assertEquals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.hashCode(), hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.hashCode());
        System.assertEquals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.hashCode(), hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2 = SwagHudsonnodeMonitorsDiskSpaceMonit.getExample();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3 = new SwagHudsonnodeMonitorsDiskSpaceMonit();
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4 = new SwagHudsonnodeMonitorsDiskSpaceMonit();

        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2));
        System.assert(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3.equals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4));
        System.assertEquals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace1.hashCode(), hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace2.hashCode());
        System.assertEquals(hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace3.hashCode(), hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonnodeMonitorsDiskSpaceMonit hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace = new SwagHudsonnodeMonitorsDiskSpaceMonit();
        Map<String, String> propertyMappings = hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
