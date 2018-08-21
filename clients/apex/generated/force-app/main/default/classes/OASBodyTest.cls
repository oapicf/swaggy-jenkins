@isTest
private class OASBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASBody body1 = OASBody.getExample();
        OASBody body2 = body1;
        OASBody body3 = new OASBody();
        OASBody body4 = body3;

        System.assert(body1.equals(body2));
        System.assert(body2.equals(body1));
        System.assert(body1.equals(body1));
        System.assert(body3.equals(body4));
        System.assert(body4.equals(body3));
        System.assert(body3.equals(body3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBody body1 = OASBody.getExample();
        OASBody body2 = OASBody.getExample();
        OASBody body3 = new OASBody();
        OASBody body4 = new OASBody();

        System.assert(body1.equals(body2));
        System.assert(body2.equals(body1));
        System.assert(body3.equals(body4));
        System.assert(body4.equals(body3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBody body1 = OASBody.getExample();
        OASBody body2 = new OASBody();

        System.assertEquals(false, body1.equals('foo'));
        System.assertEquals(false, body2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBody body1 = OASBody.getExample();
        OASBody body2 = new OASBody();
        OASBody body3;

        System.assertEquals(false, body1.equals(body3));
        System.assertEquals(false, body2.equals(body3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBody body1 = OASBody.getExample();
        OASBody body2 = new OASBody();

        System.assertEquals(body1.hashCode(), body1.hashCode());
        System.assertEquals(body2.hashCode(), body2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBody body1 = OASBody.getExample();
        OASBody body2 = OASBody.getExample();
        OASBody body3 = new OASBody();
        OASBody body4 = new OASBody();

        System.assert(body1.equals(body2));
        System.assert(body3.equals(body4));
        System.assertEquals(body1.hashCode(), body2.hashCode());
        System.assertEquals(body3.hashCode(), body4.hashCode());
    }
}
