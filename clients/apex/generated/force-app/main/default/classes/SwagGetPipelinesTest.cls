@isTest
private class SwagGetPipelinesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGetPipelines getPipelines1 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines2 = getPipelines1;
        SwagGetPipelines getPipelines3 = new SwagGetPipelines();
        SwagGetPipelines getPipelines4 = getPipelines3;

        System.assert(getPipelines1.equals(getPipelines2));
        System.assert(getPipelines2.equals(getPipelines1));
        System.assert(getPipelines1.equals(getPipelines1));
        System.assert(getPipelines3.equals(getPipelines4));
        System.assert(getPipelines4.equals(getPipelines3));
        System.assert(getPipelines3.equals(getPipelines3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGetPipelines getPipelines1 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines2 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines3 = new SwagGetPipelines();
        SwagGetPipelines getPipelines4 = new SwagGetPipelines();

        System.assert(getPipelines1.equals(getPipelines2));
        System.assert(getPipelines2.equals(getPipelines1));
        System.assert(getPipelines3.equals(getPipelines4));
        System.assert(getPipelines4.equals(getPipelines3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGetPipelines getPipelines1 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines2 = new SwagGetPipelines();

        System.assertEquals(false, getPipelines1.equals(getPipelines2));
        System.assertEquals(false, getPipelines2.equals(getPipelines1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGetPipelines getPipelines1 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines2 = new SwagGetPipelines();

        System.assertEquals(false, getPipelines1.equals('foo'));
        System.assertEquals(false, getPipelines2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGetPipelines getPipelines1 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines2 = new SwagGetPipelines();
        SwagGetPipelines getPipelines3;

        System.assertEquals(false, getPipelines1.equals(getPipelines3));
        System.assertEquals(false, getPipelines2.equals(getPipelines3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGetPipelines getPipelines1 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines2 = new SwagGetPipelines();

        System.assertEquals(getPipelines1.hashCode(), getPipelines1.hashCode());
        System.assertEquals(getPipelines2.hashCode(), getPipelines2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGetPipelines getPipelines1 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines2 = SwagGetPipelines.getExample();
        SwagGetPipelines getPipelines3 = new SwagGetPipelines();
        SwagGetPipelines getPipelines4 = new SwagGetPipelines();

        System.assert(getPipelines1.equals(getPipelines2));
        System.assert(getPipelines3.equals(getPipelines4));
        System.assertEquals(getPipelines1.hashCode(), getPipelines2.hashCode());
        System.assertEquals(getPipelines3.hashCode(), getPipelines4.hashCode());
    }
}
