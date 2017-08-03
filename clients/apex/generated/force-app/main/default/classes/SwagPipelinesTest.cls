@isTest
private class SwagPipelinesTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPipelines pipelines1 = SwagPipelines.getExample();
        SwagPipelines pipelines2 = pipelines1;
        SwagPipelines pipelines3 = new SwagPipelines();
        SwagPipelines pipelines4 = pipelines3;

        System.assert(pipelines1.equals(pipelines2));
        System.assert(pipelines2.equals(pipelines1));
        System.assert(pipelines1.equals(pipelines1));
        System.assert(pipelines3.equals(pipelines4));
        System.assert(pipelines4.equals(pipelines3));
        System.assert(pipelines3.equals(pipelines3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPipelines pipelines1 = SwagPipelines.getExample();
        SwagPipelines pipelines2 = SwagPipelines.getExample();
        SwagPipelines pipelines3 = new SwagPipelines();
        SwagPipelines pipelines4 = new SwagPipelines();

        System.assert(pipelines1.equals(pipelines2));
        System.assert(pipelines2.equals(pipelines1));
        System.assert(pipelines3.equals(pipelines4));
        System.assert(pipelines4.equals(pipelines3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPipelines pipelines1 = SwagPipelines.getExample();
        SwagPipelines pipelines2 = new SwagPipelines();

        System.assertEquals(false, pipelines1.equals(pipelines2));
        System.assertEquals(false, pipelines2.equals(pipelines1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPipelines pipelines1 = SwagPipelines.getExample();
        SwagPipelines pipelines2 = new SwagPipelines();

        System.assertEquals(false, pipelines1.equals('foo'));
        System.assertEquals(false, pipelines2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPipelines pipelines1 = SwagPipelines.getExample();
        SwagPipelines pipelines2 = new SwagPipelines();
        SwagPipelines pipelines3;

        System.assertEquals(false, pipelines1.equals(pipelines3));
        System.assertEquals(false, pipelines2.equals(pipelines3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPipelines pipelines1 = SwagPipelines.getExample();
        SwagPipelines pipelines2 = new SwagPipelines();

        System.assertEquals(pipelines1.hashCode(), pipelines1.hashCode());
        System.assertEquals(pipelines2.hashCode(), pipelines2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPipelines pipelines1 = SwagPipelines.getExample();
        SwagPipelines pipelines2 = SwagPipelines.getExample();
        SwagPipelines pipelines3 = new SwagPipelines();
        SwagPipelines pipelines4 = new SwagPipelines();

        System.assert(pipelines1.equals(pipelines2));
        System.assert(pipelines3.equals(pipelines4));
        System.assertEquals(pipelines1.hashCode(), pipelines2.hashCode());
        System.assertEquals(pipelines3.hashCode(), pipelines4.hashCode());
    }
}
