@isTest
private class SwagIojenkinsblueoceanresthalLinkTest {
    @isTest
    private static void equalsSameInstance() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink1 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink2 = iojenkinsblueoceanresthalLink1;
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink3 = new SwagIojenkinsblueoceanresthalLink();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink4 = iojenkinsblueoceanresthalLink3;

        System.assert(iojenkinsblueoceanresthalLink1.equals(iojenkinsblueoceanresthalLink2));
        System.assert(iojenkinsblueoceanresthalLink2.equals(iojenkinsblueoceanresthalLink1));
        System.assert(iojenkinsblueoceanresthalLink1.equals(iojenkinsblueoceanresthalLink1));
        System.assert(iojenkinsblueoceanresthalLink3.equals(iojenkinsblueoceanresthalLink4));
        System.assert(iojenkinsblueoceanresthalLink4.equals(iojenkinsblueoceanresthalLink3));
        System.assert(iojenkinsblueoceanresthalLink3.equals(iojenkinsblueoceanresthalLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink1 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink2 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink3 = new SwagIojenkinsblueoceanresthalLink();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink4 = new SwagIojenkinsblueoceanresthalLink();

        System.assert(iojenkinsblueoceanresthalLink1.equals(iojenkinsblueoceanresthalLink2));
        System.assert(iojenkinsblueoceanresthalLink2.equals(iojenkinsblueoceanresthalLink1));
        System.assert(iojenkinsblueoceanresthalLink3.equals(iojenkinsblueoceanresthalLink4));
        System.assert(iojenkinsblueoceanresthalLink4.equals(iojenkinsblueoceanresthalLink3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink1 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink2 = new SwagIojenkinsblueoceanresthalLink();

        System.assertEquals(false, iojenkinsblueoceanresthalLink1.equals(iojenkinsblueoceanresthalLink2));
        System.assertEquals(false, iojenkinsblueoceanresthalLink2.equals(iojenkinsblueoceanresthalLink1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink1 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink2 = new SwagIojenkinsblueoceanresthalLink();

        System.assertEquals(false, iojenkinsblueoceanresthalLink1.equals('foo'));
        System.assertEquals(false, iojenkinsblueoceanresthalLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink1 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink2 = new SwagIojenkinsblueoceanresthalLink();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink3;

        System.assertEquals(false, iojenkinsblueoceanresthalLink1.equals(iojenkinsblueoceanresthalLink3));
        System.assertEquals(false, iojenkinsblueoceanresthalLink2.equals(iojenkinsblueoceanresthalLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink1 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink2 = new SwagIojenkinsblueoceanresthalLink();

        System.assertEquals(iojenkinsblueoceanresthalLink1.hashCode(), iojenkinsblueoceanresthalLink1.hashCode());
        System.assertEquals(iojenkinsblueoceanresthalLink2.hashCode(), iojenkinsblueoceanresthalLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink1 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink2 = SwagIojenkinsblueoceanresthalLink.getExample();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink3 = new SwagIojenkinsblueoceanresthalLink();
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink4 = new SwagIojenkinsblueoceanresthalLink();

        System.assert(iojenkinsblueoceanresthalLink1.equals(iojenkinsblueoceanresthalLink2));
        System.assert(iojenkinsblueoceanresthalLink3.equals(iojenkinsblueoceanresthalLink4));
        System.assertEquals(iojenkinsblueoceanresthalLink1.hashCode(), iojenkinsblueoceanresthalLink2.hashCode());
        System.assertEquals(iojenkinsblueoceanresthalLink3.hashCode(), iojenkinsblueoceanresthalLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagIojenkinsblueoceanresthalLink iojenkinsblueoceanresthalLink = new SwagIojenkinsblueoceanresthalLink();
        Map<String, String> propertyMappings = iojenkinsblueoceanresthalLink.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }
}
