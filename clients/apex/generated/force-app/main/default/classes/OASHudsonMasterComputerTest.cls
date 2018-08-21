@isTest
private class OASHudsonMasterComputerTest {
    @isTest
    private static void equalsSameInstance() {
        OASHudsonMasterComputer hudsonMasterComputer1 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer2 = hudsonMasterComputer1;
        OASHudsonMasterComputer hudsonMasterComputer3 = new OASHudsonMasterComputer();
        OASHudsonMasterComputer hudsonMasterComputer4 = hudsonMasterComputer3;

        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer2));
        System.assert(hudsonMasterComputer2.equals(hudsonMasterComputer1));
        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer1));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer4));
        System.assert(hudsonMasterComputer4.equals(hudsonMasterComputer3));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHudsonMasterComputer hudsonMasterComputer1 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer2 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer3 = new OASHudsonMasterComputer();
        OASHudsonMasterComputer hudsonMasterComputer4 = new OASHudsonMasterComputer();

        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer2));
        System.assert(hudsonMasterComputer2.equals(hudsonMasterComputer1));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer4));
        System.assert(hudsonMasterComputer4.equals(hudsonMasterComputer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHudsonMasterComputer hudsonMasterComputer1 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer2 = new OASHudsonMasterComputer();

        System.assertEquals(false, hudsonMasterComputer1.equals('foo'));
        System.assertEquals(false, hudsonMasterComputer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHudsonMasterComputer hudsonMasterComputer1 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer2 = new OASHudsonMasterComputer();
        OASHudsonMasterComputer hudsonMasterComputer3;

        System.assertEquals(false, hudsonMasterComputer1.equals(hudsonMasterComputer3));
        System.assertEquals(false, hudsonMasterComputer2.equals(hudsonMasterComputer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHudsonMasterComputer hudsonMasterComputer1 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer2 = new OASHudsonMasterComputer();

        System.assertEquals(hudsonMasterComputer1.hashCode(), hudsonMasterComputer1.hashCode());
        System.assertEquals(hudsonMasterComputer2.hashCode(), hudsonMasterComputer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHudsonMasterComputer hudsonMasterComputer1 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer2 = OASHudsonMasterComputer.getExample();
        OASHudsonMasterComputer hudsonMasterComputer3 = new OASHudsonMasterComputer();
        OASHudsonMasterComputer hudsonMasterComputer4 = new OASHudsonMasterComputer();

        System.assert(hudsonMasterComputer1.equals(hudsonMasterComputer2));
        System.assert(hudsonMasterComputer3.equals(hudsonMasterComputer4));
        System.assertEquals(hudsonMasterComputer1.hashCode(), hudsonMasterComputer2.hashCode());
        System.assertEquals(hudsonMasterComputer3.hashCode(), hudsonMasterComputer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASHudsonMasterComputer hudsonMasterComputer = new OASHudsonMasterComputer();
        Map<String, String> propertyMappings = hudsonMasterComputer.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASHudsonMasterComputer hudsonMasterComputer = new OASHudsonMasterComputer();
        System.assertEquals(new List<OASHudsonMasterComputerexecutors>(), hudsonMasterComputer.executors);
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
