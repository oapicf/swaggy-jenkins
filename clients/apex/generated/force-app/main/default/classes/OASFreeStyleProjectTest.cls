@isTest
private class OASFreeStyleProjectTest {
    @isTest
    private static void equalsSameInstance() {
        OASFreeStyleProject freeStyleProject1 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject2 = freeStyleProject1;
        OASFreeStyleProject freeStyleProject3 = new OASFreeStyleProject();
        OASFreeStyleProject freeStyleProject4 = freeStyleProject3;

        System.assert(freeStyleProject1.equals(freeStyleProject2));
        System.assert(freeStyleProject2.equals(freeStyleProject1));
        System.assert(freeStyleProject1.equals(freeStyleProject1));
        System.assert(freeStyleProject3.equals(freeStyleProject4));
        System.assert(freeStyleProject4.equals(freeStyleProject3));
        System.assert(freeStyleProject3.equals(freeStyleProject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFreeStyleProject freeStyleProject1 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject2 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject3 = new OASFreeStyleProject();
        OASFreeStyleProject freeStyleProject4 = new OASFreeStyleProject();

        System.assert(freeStyleProject1.equals(freeStyleProject2));
        System.assert(freeStyleProject2.equals(freeStyleProject1));
        System.assert(freeStyleProject3.equals(freeStyleProject4));
        System.assert(freeStyleProject4.equals(freeStyleProject3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFreeStyleProject freeStyleProject1 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject2 = new OASFreeStyleProject();

        System.assertEquals(false, freeStyleProject1.equals('foo'));
        System.assertEquals(false, freeStyleProject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFreeStyleProject freeStyleProject1 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject2 = new OASFreeStyleProject();
        OASFreeStyleProject freeStyleProject3;

        System.assertEquals(false, freeStyleProject1.equals(freeStyleProject3));
        System.assertEquals(false, freeStyleProject2.equals(freeStyleProject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFreeStyleProject freeStyleProject1 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject2 = new OASFreeStyleProject();

        System.assertEquals(freeStyleProject1.hashCode(), freeStyleProject1.hashCode());
        System.assertEquals(freeStyleProject2.hashCode(), freeStyleProject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFreeStyleProject freeStyleProject1 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject2 = OASFreeStyleProject.getExample();
        OASFreeStyleProject freeStyleProject3 = new OASFreeStyleProject();
        OASFreeStyleProject freeStyleProject4 = new OASFreeStyleProject();

        System.assert(freeStyleProject1.equals(freeStyleProject2));
        System.assert(freeStyleProject3.equals(freeStyleProject4));
        System.assertEquals(freeStyleProject1.hashCode(), freeStyleProject2.hashCode());
        System.assertEquals(freeStyleProject3.hashCode(), freeStyleProject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFreeStyleProject freeStyleProject = new OASFreeStyleProject();
        Map<String, String> x-property-mappings = freeStyleProject.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('_class'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFreeStyleProject freeStyleProject = new OASFreeStyleProject();
        System.assertEquals(new List<OASFreeStyleProjectactions>(), freeStyleProject.actions);
        System.assertEquals(new List<OASFreeStyleBuild>(), freeStyleProject.builds);
        System.assertEquals(new List<OASFreeStyleProjecthealthReport>(), freeStyleProject.healthReport);
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
