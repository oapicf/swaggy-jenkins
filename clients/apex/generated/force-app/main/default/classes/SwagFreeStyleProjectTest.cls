@isTest
private class SwagFreeStyleProjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFreeStyleProject freeStyleProject1 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject2 = freeStyleProject1;
        SwagFreeStyleProject freeStyleProject3 = new SwagFreeStyleProject();
        SwagFreeStyleProject freeStyleProject4 = freeStyleProject3;

        System.assert(freeStyleProject1.equals(freeStyleProject2));
        System.assert(freeStyleProject2.equals(freeStyleProject1));
        System.assert(freeStyleProject1.equals(freeStyleProject1));
        System.assert(freeStyleProject3.equals(freeStyleProject4));
        System.assert(freeStyleProject4.equals(freeStyleProject3));
        System.assert(freeStyleProject3.equals(freeStyleProject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFreeStyleProject freeStyleProject1 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject2 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject3 = new SwagFreeStyleProject();
        SwagFreeStyleProject freeStyleProject4 = new SwagFreeStyleProject();

        System.assert(freeStyleProject1.equals(freeStyleProject2));
        System.assert(freeStyleProject2.equals(freeStyleProject1));
        System.assert(freeStyleProject3.equals(freeStyleProject4));
        System.assert(freeStyleProject4.equals(freeStyleProject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFreeStyleProject freeStyleProject1 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject2 = new SwagFreeStyleProject();

        System.assertEquals(false, freeStyleProject1.equals(freeStyleProject2));
        System.assertEquals(false, freeStyleProject2.equals(freeStyleProject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFreeStyleProject freeStyleProject1 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject2 = new SwagFreeStyleProject();

        System.assertEquals(false, freeStyleProject1.equals('foo'));
        System.assertEquals(false, freeStyleProject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFreeStyleProject freeStyleProject1 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject2 = new SwagFreeStyleProject();
        SwagFreeStyleProject freeStyleProject3;

        System.assertEquals(false, freeStyleProject1.equals(freeStyleProject3));
        System.assertEquals(false, freeStyleProject2.equals(freeStyleProject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFreeStyleProject freeStyleProject1 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject2 = new SwagFreeStyleProject();

        System.assertEquals(freeStyleProject1.hashCode(), freeStyleProject1.hashCode());
        System.assertEquals(freeStyleProject2.hashCode(), freeStyleProject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFreeStyleProject freeStyleProject1 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject2 = SwagFreeStyleProject.getExample();
        SwagFreeStyleProject freeStyleProject3 = new SwagFreeStyleProject();
        SwagFreeStyleProject freeStyleProject4 = new SwagFreeStyleProject();

        System.assert(freeStyleProject1.equals(freeStyleProject2));
        System.assert(freeStyleProject3.equals(freeStyleProject4));
        System.assertEquals(freeStyleProject1.hashCode(), freeStyleProject2.hashCode());
        System.assertEquals(freeStyleProject3.hashCode(), freeStyleProject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFreeStyleProject freeStyleProject = new SwagFreeStyleProject();
        Map<String, String> propertyMappings = freeStyleProject.getPropertyMappings();
        System.assertEquals('propertyClass', propertyMappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFreeStyleProject freeStyleProject = new SwagFreeStyleProject();
        System.assertEquals(new List<SwagFreeStyleProjectactions>(), freeStyleProject.actions);
        System.assertEquals(new List<SwagFreeStyleBuild>(), freeStyleProject.builds);
        System.assertEquals(new List<SwagFreeStyleProjecthealthReport>(), freeStyleProject.healthReport);
        System.assertEquals(null, freeStyleProject.propertyClass);
        System.assertEquals(null, freeStyleProject.name);
        System.assertEquals(null, freeStyleProject.url);
        System.assertEquals(null, freeStyleProject.color);
        System.assertEquals(null, freeStyleProject.description);
        System.assertEquals(null, freeStyleProject.displayName);
        System.assertEquals(null, freeStyleProject.displayNameOrNull);
        System.assertEquals(null, freeStyleProject.fullDisplayName);
        System.assertEquals(null, freeStyleProject.fullName);
        System.assertEquals(null, freeStyleProject.buildable);
        System.assertEquals(null, freeStyleProject.firstBuild);
        System.assertEquals(null, freeStyleProject.inQueue);
        System.assertEquals(null, freeStyleProject.keepDependencies);
        System.assertEquals(null, freeStyleProject.lastBuild);
        System.assertEquals(null, freeStyleProject.lastCompletedBuild);
        System.assertEquals(null, freeStyleProject.lastFailedBuild);
        System.assertEquals(null, freeStyleProject.lastStableBuild);
        System.assertEquals(null, freeStyleProject.lastSuccessfulBuild);
        System.assertEquals(null, freeStyleProject.lastUnstableBuild);
        System.assertEquals(null, freeStyleProject.lastUnsuccessfulBuild);
        System.assertEquals(null, freeStyleProject.nextBuildNumber);
        System.assertEquals(null, freeStyleProject.queueItem);
        System.assertEquals(null, freeStyleProject.concurrentBuild);
        System.assertEquals(null, freeStyleProject.scm);
    }
}
