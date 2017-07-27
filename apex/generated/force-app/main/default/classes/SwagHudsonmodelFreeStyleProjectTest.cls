@isTest
private class SwagHudsonmodelFreeStyleProjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject1 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject2 = hudsonmodelFreeStyleProject1;
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject3 = new SwagHudsonmodelFreeStyleProject();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject4 = hudsonmodelFreeStyleProject3;

        System.assert(hudsonmodelFreeStyleProject1.equals(hudsonmodelFreeStyleProject2));
        System.assert(hudsonmodelFreeStyleProject2.equals(hudsonmodelFreeStyleProject1));
        System.assert(hudsonmodelFreeStyleProject1.equals(hudsonmodelFreeStyleProject1));
        System.assert(hudsonmodelFreeStyleProject3.equals(hudsonmodelFreeStyleProject4));
        System.assert(hudsonmodelFreeStyleProject4.equals(hudsonmodelFreeStyleProject3));
        System.assert(hudsonmodelFreeStyleProject3.equals(hudsonmodelFreeStyleProject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject1 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject2 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject3 = new SwagHudsonmodelFreeStyleProject();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject4 = new SwagHudsonmodelFreeStyleProject();

        System.assert(hudsonmodelFreeStyleProject1.equals(hudsonmodelFreeStyleProject2));
        System.assert(hudsonmodelFreeStyleProject2.equals(hudsonmodelFreeStyleProject1));
        System.assert(hudsonmodelFreeStyleProject3.equals(hudsonmodelFreeStyleProject4));
        System.assert(hudsonmodelFreeStyleProject4.equals(hudsonmodelFreeStyleProject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject1 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject2 = new SwagHudsonmodelFreeStyleProject();

        System.assertEquals(false, hudsonmodelFreeStyleProject1.equals(hudsonmodelFreeStyleProject2));
        System.assertEquals(false, hudsonmodelFreeStyleProject2.equals(hudsonmodelFreeStyleProject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject1 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject2 = new SwagHudsonmodelFreeStyleProject();

        System.assertEquals(false, hudsonmodelFreeStyleProject1.equals('foo'));
        System.assertEquals(false, hudsonmodelFreeStyleProject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject1 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject2 = new SwagHudsonmodelFreeStyleProject();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject3;

        System.assertEquals(false, hudsonmodelFreeStyleProject1.equals(hudsonmodelFreeStyleProject3));
        System.assertEquals(false, hudsonmodelFreeStyleProject2.equals(hudsonmodelFreeStyleProject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject1 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject2 = new SwagHudsonmodelFreeStyleProject();

        System.assertEquals(hudsonmodelFreeStyleProject1.hashCode(), hudsonmodelFreeStyleProject1.hashCode());
        System.assertEquals(hudsonmodelFreeStyleProject2.hashCode(), hudsonmodelFreeStyleProject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject1 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject2 = SwagHudsonmodelFreeStyleProject.getExample();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject3 = new SwagHudsonmodelFreeStyleProject();
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject4 = new SwagHudsonmodelFreeStyleProject();

        System.assert(hudsonmodelFreeStyleProject1.equals(hudsonmodelFreeStyleProject2));
        System.assert(hudsonmodelFreeStyleProject3.equals(hudsonmodelFreeStyleProject4));
        System.assertEquals(hudsonmodelFreeStyleProject1.hashCode(), hudsonmodelFreeStyleProject2.hashCode());
        System.assertEquals(hudsonmodelFreeStyleProject3.hashCode(), hudsonmodelFreeStyleProject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject = new SwagHudsonmodelFreeStyleProject();
        Map<String, String> propertyMappings = hudsonmodelFreeStyleProject.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagHudsonmodelFreeStyleProject hudsonmodelFreeStyleProject = new SwagHudsonmodelFreeStyleProject();
        System.assertEquals(new List<SwagHudsonmodelFreeStyleProjectactio>(), hudsonmodelFreeStyleProject.actions);
        System.assertEquals(new List<SwagHudsonmodelFreeStyleBuild>(), hudsonmodelFreeStyleProject.builds);
        System.assertEquals(new List<SwagHudsonmodelFreeStyleProjecthealt>(), hudsonmodelFreeStyleProject.healthReport);
        System.assertEquals(null, hudsonmodelFreeStyleProject.propertyClass);
        System.assertEquals(null, hudsonmodelFreeStyleProject.name);
        System.assertEquals(null, hudsonmodelFreeStyleProject.url);
        System.assertEquals(null, hudsonmodelFreeStyleProject.color);
        System.assertEquals(null, hudsonmodelFreeStyleProject.description);
        System.assertEquals(null, hudsonmodelFreeStyleProject.displayName);
        System.assertEquals(null, hudsonmodelFreeStyleProject.displayNameOrNull);
        System.assertEquals(null, hudsonmodelFreeStyleProject.fullDisplayName);
        System.assertEquals(null, hudsonmodelFreeStyleProject.fullName);
        System.assertEquals(null, hudsonmodelFreeStyleProject.buildable);
        System.assertEquals(null, hudsonmodelFreeStyleProject.firstBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.inQueue);
        System.assertEquals(null, hudsonmodelFreeStyleProject.keepDependencies);
        System.assertEquals(null, hudsonmodelFreeStyleProject.lastBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.lastCompletedBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.lastFailedBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.lastStableBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.lastSuccessfulBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.lastUnstableBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.lastUnsuccessfulBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.nextBuildNumber);
        System.assertEquals(null, hudsonmodelFreeStyleProject.queueItem);
        System.assertEquals(null, hudsonmodelFreeStyleProject.concurrentBuild);
        System.assertEquals(null, hudsonmodelFreeStyleProject.scm);
    }
}
