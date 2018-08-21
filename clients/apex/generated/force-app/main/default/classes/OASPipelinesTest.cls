@isTest
private class OASPipelinesTest {
    @isTest
    private static void equalsSameInstance() {
        OASPipelines pipelines1 = OASPipelines.getExample();
        OASPipelines pipelines2 = pipelines1;
        OASPipelines pipelines3 = new OASPipelines();
        OASPipelines pipelines4 = pipelines3;

        System.assert(pipelines1.equals(pipelines2));
        System.assert(pipelines2.equals(pipelines1));
        System.assert(pipelines1.equals(pipelines1));
        System.assert(pipelines3.equals(pipelines4));
        System.assert(pipelines4.equals(pipelines3));
        System.assert(pipelines3.equals(pipelines3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPipelines pipelines1 = OASPipelines.getExample();
        OASPipelines pipelines2 = OASPipelines.getExample();
        OASPipelines pipelines3 = new OASPipelines();
        OASPipelines pipelines4 = new OASPipelines();

        System.assert(pipelines1.equals(pipelines2));
        System.assert(pipelines2.equals(pipelines1));
        System.assert(pipelines3.equals(pipelines4));
        System.assert(pipelines4.equals(pipelines3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPipelines pipelines1 = OASPipelines.getExample();
        OASPipelines pipelines2 = new OASPipelines();

        System.assertEquals(false, pipelines1.equals('foo'));
        System.assertEquals(false, pipelines2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPipelines pipelines1 = OASPipelines.getExample();
        OASPipelines pipelines2 = new OASPipelines();
        OASPipelines pipelines3;

        System.assertEquals(false, pipelines1.equals(pipelines3));
        System.assertEquals(false, pipelines2.equals(pipelines3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPipelines pipelines1 = OASPipelines.getExample();
        OASPipelines pipelines2 = new OASPipelines();

        System.assertEquals(pipelines1.hashCode(), pipelines1.hashCode());
        System.assertEquals(pipelines2.hashCode(), pipelines2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPipelines pipelines1 = OASPipelines.getExample();
        OASPipelines pipelines2 = OASPipelines.getExample();
        OASPipelines pipelines3 = new OASPipelines();
        OASPipelines pipelines4 = new OASPipelines();

        System.assert(pipelines1.equals(pipelines2));
        System.assert(pipelines3.equals(pipelines4));
        System.assertEquals(pipelines1.hashCode(), pipelines2.hashCode());
        System.assertEquals(pipelines3.hashCode(), pipelines4.hashCode());
    }
}
