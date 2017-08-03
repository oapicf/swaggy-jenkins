@isTest
private class SwagBodyTest {
    @isTest
    private static void equalsSameInstance() {
        SwagBody body1 = SwagBody.getExample();
        SwagBody body2 = body1;
        SwagBody body3 = new SwagBody();
        SwagBody body4 = body3;

        System.assert(body1.equals(body2));
        System.assert(body2.equals(body1));
        System.assert(body1.equals(body1));
        System.assert(body3.equals(body4));
        System.assert(body4.equals(body3));
        System.assert(body3.equals(body3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagBody body1 = SwagBody.getExample();
        SwagBody body2 = SwagBody.getExample();
        SwagBody body3 = new SwagBody();
        SwagBody body4 = new SwagBody();

        System.assert(body1.equals(body2));
        System.assert(body2.equals(body1));
        System.assert(body3.equals(body4));
        System.assert(body4.equals(body3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagBody body1 = SwagBody.getExample();
        SwagBody body2 = new SwagBody();

        System.assertEquals(false, body1.equals(body2));
        System.assertEquals(false, body2.equals(body1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagBody body1 = SwagBody.getExample();
        SwagBody body2 = new SwagBody();

        System.assertEquals(false, body1.equals('foo'));
        System.assertEquals(false, body2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagBody body1 = SwagBody.getExample();
        SwagBody body2 = new SwagBody();
        SwagBody body3;

        System.assertEquals(false, body1.equals(body3));
        System.assertEquals(false, body2.equals(body3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagBody body1 = SwagBody.getExample();
        SwagBody body2 = new SwagBody();

        System.assertEquals(body1.hashCode(), body1.hashCode());
        System.assertEquals(body2.hashCode(), body2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagBody body1 = SwagBody.getExample();
        SwagBody body2 = SwagBody.getExample();
        SwagBody body3 = new SwagBody();
        SwagBody body4 = new SwagBody();

        System.assert(body1.equals(body2));
        System.assert(body3.equals(body4));
        System.assertEquals(body1.hashCode(), body2.hashCode());
        System.assertEquals(body3.hashCode(), body4.hashCode());
    }
}
