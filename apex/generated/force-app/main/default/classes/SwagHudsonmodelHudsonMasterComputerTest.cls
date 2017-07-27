@isTest
private class SwagHudsonmodelHudsonMasterComputerTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer1 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer2 = hudsonmodelHudsonMasterComputer1;
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer3 = new SwagHudsonmodelHudsonMasterComputer();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer4 = hudsonmodelHudsonMasterComputer3;

        System.assert(hudsonmodelHudsonMasterComputer1.equals(hudsonmodelHudsonMasterComputer2));
        System.assert(hudsonmodelHudsonMasterComputer2.equals(hudsonmodelHudsonMasterComputer1));
        System.assert(hudsonmodelHudsonMasterComputer1.equals(hudsonmodelHudsonMasterComputer1));
        System.assert(hudsonmodelHudsonMasterComputer3.equals(hudsonmodelHudsonMasterComputer4));
        System.assert(hudsonmodelHudsonMasterComputer4.equals(hudsonmodelHudsonMasterComputer3));
        System.assert(hudsonmodelHudsonMasterComputer3.equals(hudsonmodelHudsonMasterComputer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer1 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer2 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer3 = new SwagHudsonmodelHudsonMasterComputer();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer4 = new SwagHudsonmodelHudsonMasterComputer();

        System.assert(hudsonmodelHudsonMasterComputer1.equals(hudsonmodelHudsonMasterComputer2));
        System.assert(hudsonmodelHudsonMasterComputer2.equals(hudsonmodelHudsonMasterComputer1));
        System.assert(hudsonmodelHudsonMasterComputer3.equals(hudsonmodelHudsonMasterComputer4));
        System.assert(hudsonmodelHudsonMasterComputer4.equals(hudsonmodelHudsonMasterComputer3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer1 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer2 = new SwagHudsonmodelHudsonMasterComputer();

        System.assertEquals(false, hudsonmodelHudsonMasterComputer1.equals(hudsonmodelHudsonMasterComputer2));
        System.assertEquals(false, hudsonmodelHudsonMasterComputer2.equals(hudsonmodelHudsonMasterComputer1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer1 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer2 = new SwagHudsonmodelHudsonMasterComputer();

        System.assertEquals(false, hudsonmodelHudsonMasterComputer1.equals('foo'));
        System.assertEquals(false, hudsonmodelHudsonMasterComputer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer1 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer2 = new SwagHudsonmodelHudsonMasterComputer();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer3;

        System.assertEquals(false, hudsonmodelHudsonMasterComputer1.equals(hudsonmodelHudsonMasterComputer3));
        System.assertEquals(false, hudsonmodelHudsonMasterComputer2.equals(hudsonmodelHudsonMasterComputer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer1 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer2 = new SwagHudsonmodelHudsonMasterComputer();

        System.assertEquals(hudsonmodelHudsonMasterComputer1.hashCode(), hudsonmodelHudsonMasterComputer1.hashCode());
        System.assertEquals(hudsonmodelHudsonMasterComputer2.hashCode(), hudsonmodelHudsonMasterComputer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer1 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer2 = SwagHudsonmodelHudsonMasterComputer.getExample();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer3 = new SwagHudsonmodelHudsonMasterComputer();
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer4 = new SwagHudsonmodelHudsonMasterComputer();

        System.assert(hudsonmodelHudsonMasterComputer1.equals(hudsonmodelHudsonMasterComputer2));
        System.assert(hudsonmodelHudsonMasterComputer3.equals(hudsonmodelHudsonMasterComputer4));
        System.assertEquals(hudsonmodelHudsonMasterComputer1.hashCode(), hudsonmodelHudsonMasterComputer2.hashCode());
        System.assertEquals(hudsonmodelHudsonMasterComputer3.hashCode(), hudsonmodelHudsonMasterComputer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer = new SwagHudsonmodelHudsonMasterComputer();
        Map<String, String> propertyMappings = hudsonmodelHudsonMasterComputer.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelHudsonMasterComputer hudsonmodelHudsonMasterComputer = new SwagHudsonmodelHudsonMasterComputer();
        System.assertEquals(new List<SwagHudsonmodelHudsonMasterComputere>(), hudsonmodelHudsonMasterComputer.executors);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.propertyClass);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.displayName);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.icon);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.iconClassName);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.idle);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.jnlpAgent);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.launchSupported);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.loadStatistics);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.manualLaunchAllowed);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.monitorData);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.numExecutors);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.offline);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.offlineCause);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.offlineCauseReason);
        System.assertEquals(null, hudsonmodelHudsonMasterComputer.temporarilyOffline);
    }
}
