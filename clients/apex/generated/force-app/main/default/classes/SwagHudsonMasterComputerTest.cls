@isTest
private class SwagHudsonMasterComputerTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonMasterComputer hudsonMasterComputer1 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer2 = hudsonMasterComputer1;
        SwagHudsonMasterComputer hudsonMasterComputer3 = new SwagHudsonMasterComputer();
        SwagHudsonMasterComputer hudsonMasterComputer4 = hudsonMasterComputer3;

        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer2));
        System.assert(hudsonMasterComputer2.equals(hudsonMasterComputer1));
        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer1));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer4));
        System.assert(hudsonMasterComputer4.equals(hudsonMasterComputer3));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonMasterComputer hudsonMasterComputer1 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer2 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer3 = new SwagHudsonMasterComputer();
        SwagHudsonMasterComputer hudsonMasterComputer4 = new SwagHudsonMasterComputer();

        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer2));
        System.assert(hudsonMasterComputer2.equals(hudsonMasterComputer1));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer4));
        System.assert(hudsonMasterComputer4.equals(hudsonMasterComputer3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonMasterComputer hudsonMasterComputer1 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer2 = new SwagHudsonMasterComputer();

        System.assertEquals(false, hudsonMasterComputer1.equals(hudsonMasterComputer2));
        System.assertEquals(false, hudsonMasterComputer2.equals(hudsonMasterComputer1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonMasterComputer hudsonMasterComputer1 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer2 = new SwagHudsonMasterComputer();

        System.assertEquals(false, hudsonMasterComputer1.equals('foo'));
        System.assertEquals(false, hudsonMasterComputer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonMasterComputer hudsonMasterComputer1 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer2 = new SwagHudsonMasterComputer();
        SwagHudsonMasterComputer hudsonMasterComputer3;

        System.assertEquals(false, hudsonMasterComputer1.equals(hudsonMasterComputer3));
        System.assertEquals(false, hudsonMasterComputer2.equals(hudsonMasterComputer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonMasterComputer hudsonMasterComputer1 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer2 = new SwagHudsonMasterComputer();

        System.assertEquals(hudsonMasterComputer1.hashCode(), hudsonMasterComputer1.hashCode());
        System.assertEquals(hudsonMasterComputer2.hashCode(), hudsonMasterComputer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonMasterComputer hudsonMasterComputer1 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer2 = SwagHudsonMasterComputer.getExample();
        SwagHudsonMasterComputer hudsonMasterComputer3 = new SwagHudsonMasterComputer();
        SwagHudsonMasterComputer hudsonMasterComputer4 = new SwagHudsonMasterComputer();

        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer2));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer4));
        System.assertEquals(hudsonMasterComputer1.hashCode(), hudsonMasterComputer2.hashCode());
        System.assertEquals(hudsonMasterComputer3.hashCode(), hudsonMasterComputer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonMasterComputer hudsonMasterComputer = new SwagHudsonMasterComputer();
        Map<String, String> propertyMappings = hudsonMasterComputer.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonMasterComputer hudsonMasterComputer = new SwagHudsonMasterComputer();
        System.assertEquals(new List<SwagHudsonMasterComputerexecutors>(), hudsonMasterComputer.executors);
        System.assertEquals(null, hudsonMasterComputer.propertyClass);
        System.assertEquals(null, hudsonMasterComputer.displayName);
        System.assertEquals(null, hudsonMasterComputer.icon);
        System.assertEquals(null, hudsonMasterComputer.iconClassName);
        System.assertEquals(null, hudsonMasterComputer.idle);
        System.assertEquals(null, hudsonMasterComputer.jnlpAgent);
        System.assertEquals(null, hudsonMasterComputer.launchSupported);
        System.assertEquals(null, hudsonMasterComputer.loadStatistics);
        System.assertEquals(null, hudsonMasterComputer.manualLaunchAllowed);
        System.assertEquals(null, hudsonMasterComputer.monitorData);
        System.assertEquals(null, hudsonMasterComputer.numExecutors);
        System.assertEquals(null, hudsonMasterComputer.offline);
        System.assertEquals(null, hudsonMasterComputer.offlineCause);
        System.assertEquals(null, hudsonMasterComputer.offlineCauseReason);
        System.assertEquals(null, hudsonMasterComputer.temporarilyOffline);
    }
}
