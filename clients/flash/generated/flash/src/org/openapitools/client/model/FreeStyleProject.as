package org.openapitools.client.model {

import org.openapitools.client.model.FreeStyleBuild;
import org.openapitools.client.model.FreeStyleProjectactions;
import org.openapitools.client.model.FreeStyleProjecthealthReport;
import org.openapitools.client.model.NullSCM;

    [XmlRootNode(name="FreeStyleProject")]
    public class FreeStyleProject {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="url")]
        public var url: String = null;
                [XmlElement(name="color")]
        public var color: String = null;
                // This declaration below of _actions_obj_class is to force flash compiler to include this class
        private var _actions_obj_class: Array = null;
        [XmlElementWrapper(name="actions")]
        [XmlElements(name="actions", type="Array")]
                public var actions: Array = new Array();
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="displayNameOrNull")]
        public var displayNameOrNull: String = null;
                [XmlElement(name="fullDisplayName")]
        public var fullDisplayName: String = null;
                [XmlElement(name="fullName")]
        public var fullName: String = null;
                [XmlElement(name="buildable")]
        public var buildable: Boolean = false;
                // This declaration below of _builds_obj_class is to force flash compiler to include this class
        private var _builds_obj_class: Array = null;
        [XmlElementWrapper(name="builds")]
        [XmlElements(name="builds", type="Array")]
                public var builds: Array = new Array();
                [XmlElement(name="firstBuild")]
        public var firstBuild: FreeStyleBuild = NaN;
                // This declaration below of _healthReport_obj_class is to force flash compiler to include this class
        private var _healthReport_obj_class: Array = null;
        [XmlElementWrapper(name="healthReport")]
        [XmlElements(name="healthReport", type="Array")]
                public var healthReport: Array = new Array();
                [XmlElement(name="inQueue")]
        public var inQueue: Boolean = false;
                [XmlElement(name="keepDependencies")]
        public var keepDependencies: Boolean = false;
                [XmlElement(name="lastBuild")]
        public var lastBuild: FreeStyleBuild = NaN;
                [XmlElement(name="lastCompletedBuild")]
        public var lastCompletedBuild: FreeStyleBuild = NaN;
                [XmlElement(name="lastFailedBuild")]
        public var lastFailedBuild: String = null;
                [XmlElement(name="lastStableBuild")]
        public var lastStableBuild: FreeStyleBuild = NaN;
                [XmlElement(name="lastSuccessfulBuild")]
        public var lastSuccessfulBuild: FreeStyleBuild = NaN;
                [XmlElement(name="lastUnstableBuild")]
        public var lastUnstableBuild: String = null;
                [XmlElement(name="lastUnsuccessfulBuild")]
        public var lastUnsuccessfulBuild: String = null;
                [XmlElement(name="nextBuildNumber")]
        public var nextBuildNumber: Number = 0;
                [XmlElement(name="queueItem")]
        public var queueItem: String = null;
                [XmlElement(name="concurrentBuild")]
        public var concurrentBuild: Boolean = false;
                [XmlElement(name="scm")]
        public var scm: NullSCM = NaN;

    public function toString(): String {
        var str: String = "FreeStyleProject: ";
        str += " (class: " + class + ")";
        str += " (name: " + name + ")";
        str += " (url: " + url + ")";
        str += " (color: " + color + ")";
        str += " (actions: " + actions + ")";
        str += " (description: " + description + ")";
        str += " (displayName: " + displayName + ")";
        str += " (displayNameOrNull: " + displayNameOrNull + ")";
        str += " (fullDisplayName: " + fullDisplayName + ")";
        str += " (fullName: " + fullName + ")";
        str += " (buildable: " + buildable + ")";
        str += " (builds: " + builds + ")";
        str += " (firstBuild: " + firstBuild + ")";
        str += " (healthReport: " + healthReport + ")";
        str += " (inQueue: " + inQueue + ")";
        str += " (keepDependencies: " + keepDependencies + ")";
        str += " (lastBuild: " + lastBuild + ")";
        str += " (lastCompletedBuild: " + lastCompletedBuild + ")";
        str += " (lastFailedBuild: " + lastFailedBuild + ")";
        str += " (lastStableBuild: " + lastStableBuild + ")";
        str += " (lastSuccessfulBuild: " + lastSuccessfulBuild + ")";
        str += " (lastUnstableBuild: " + lastUnstableBuild + ")";
        str += " (lastUnsuccessfulBuild: " + lastUnsuccessfulBuild + ")";
        str += " (nextBuildNumber: " + nextBuildNumber + ")";
        str += " (queueItem: " + queueItem + ")";
        str += " (concurrentBuild: " + concurrentBuild + ")";
        str += " (scm: " + scm + ")";
        return str;
    }

}

}
