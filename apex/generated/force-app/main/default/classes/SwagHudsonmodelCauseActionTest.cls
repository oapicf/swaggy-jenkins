@isTest
private class SwagHudsonmodelCauseActionTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction1 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction2 = hudsonmodelCauseAction1;
        SwagHudsonmodelCauseAction hudsonmodelCauseAction3 = new SwagHudsonmodelCauseAction();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction4 = hudsonmodelCauseAction3;

        System.assert(hudsonmodelCauseAction1.equals(hudsonmodelCauseAction2));
        System.assert(hudsonmodelCauseAction2.equals(hudsonmodelCauseAction1));
        System.assert(hudsonmodelCauseAction1.equals(hudsonmodelCauseAction1));
        System.assert(hudsonmodelCauseAction3.equals(hudsonmodelCauseAction4));
        System.assert(hudsonmodelCauseAction4.equals(hudsonmodelCauseAction3));
        System.assert(hudsonmodelCauseAction3.equals(hudsonmodelCauseAction3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction1 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction2 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction3 = new SwagHudsonmodelCauseAction();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction4 = new SwagHudsonmodelCauseAction();

        System.assert(hudsonmodelCauseAction1.equals(hudsonmodelCauseAction2));
        System.assert(hudsonmodelCauseAction2.equals(hudsonmodelCauseAction1));
        System.assert(hudsonmodelCauseAction3.equals(hudsonmodelCauseAction4));
        System.assert(hudsonmodelCauseAction4.equals(hudsonmodelCauseAction3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction1 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction2 = new SwagHudsonmodelCauseAction();

        System.assertEquals(false, hudsonmodelCauseAction1.equals(hudsonmodelCauseAction2));
        System.assertEquals(false, hudsonmodelCauseAction2.equals(hudsonmodelCauseAction1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction1 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction2 = new SwagHudsonmodelCauseAction();

        System.assertEquals(false, hudsonmodelCauseAction1.equals('foo'));
        System.assertEquals(false, hudsonmodelCauseAction2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction1 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction2 = new SwagHudsonmodelCauseAction();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction3;

        System.assertEquals(false, hudsonmodelCauseAction1.equals(hudsonmodelCauseAction3));
        System.assertEquals(false, hudsonmodelCauseAction2.equals(hudsonmodelCauseAction3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction1 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction2 = new SwagHudsonmodelCauseAction();

        System.assertEquals(hudsonmodelCauseAction1.hashCode(), hudsonmodelCauseAction1.hashCode());
        System.assertEquals(hudsonmodelCauseAction2.hashCode(), hudsonmodelCauseAction2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction1 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction2 = SwagHudsonmodelCauseAction.getExample();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction3 = new SwagHudsonmodelCauseAction();
        SwagHudsonmodelCauseAction hudsonmodelCauseAction4 = new SwagHudsonmodelCauseAction();

        System.assert(hudsonmodelCauseAction1.equals(hudsonmodelCauseAction2));
        System.assert(hudsonmodelCauseAction3.equals(hudsonmodelCauseAction4));
        System.assertEquals(hudsonmodelCauseAction1.hashCode(), hudsonmodelCauseAction2.hashCode());
        System.assertEquals(hudsonmodelCauseAction3.hashCode(), hudsonmodelCauseAction4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction = new SwagHudsonmodelCauseAction();
        Map<String, String> propertyMappings = hudsonmodelCauseAction.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelCauseAction hudsonmodelCauseAction = new SwagHudsonmodelCauseAction();
        System.assertEquals(new List<SwagHudsonmodelCauseUserIdCause>(), hudsonmodelCauseAction.causes);
        System.assertEquals(null, hudsonmodelCauseAction.propertyClass);
    }
}
