package io.swagger.client.model {

import io.swagger.client.model.AllView;
import io.swagger.client.model.FreeStyleProject;
import io.swagger.client.model.HudsonassignedLabels;
import io.swagger.client.model.UnlabeledLoadStatistics;

    [XmlRootNode(name="Hudson")]
    public class Hudson {
                [XmlElement(name="_class")]
        public var class: String = null;
                // This declaration below of _assignedLabels_obj_class is to force flash compiler to include this class
        private var _assignedLabels_obj_class: Array = null;
        [XmlElementWrapper(name="assignedLabels")]
        [XmlElements(name="assignedLabels", type="Array")]
                public var assignedLabels: Array = new Array();
                [XmlElement(name="mode")]
        public var mode: String = null;
                [XmlElement(name="nodeDescription")]
        public var nodeDescription: String = null;
                [XmlElement(name="nodeName")]
        public var nodeName: String = null;
                [XmlElement(name="numExecutors")]
        public var numExecutors: Number = NaN;
                [XmlElement(name="description")]
        public var description: String = null;
                // This declaration below of _jobs_obj_class is to force flash compiler to include this class
        private var _jobs_obj_class: Array = null;
        [XmlElementWrapper(name="jobs")]
        [XmlElements(name="jobs", type="Array")]
                public var jobs: Array = new Array();
                [XmlElement(name="primaryView")]
        public var primaryView: AllView = NaN;
                [XmlElement(name="quietingDown")]
        public var quietingDown: Boolean = false;
                [XmlElement(name="slaveAgentPort")]
        public var slaveAgentPort: Number = NaN;
                [XmlElement(name="unlabeledLoad")]
        public var unlabeledLoad: UnlabeledLoadStatistics = NaN;
                [XmlElement(name="useCrumbs")]
        public var useCrumbs: Boolean = false;
                [XmlElement(name="useSecurity")]
        public var useSecurity: Boolean = false;
                // This declaration below of _views_obj_class is to force flash compiler to include this class
        private var _views_obj_class: Array = null;
        [XmlElementWrapper(name="views")]
        [XmlElements(name="views", type="Array")]
                public var views: Array = new Array();

    public function toString(): String {
        var str: String = "Hudson: ";
        str += " (class: " + class + ")";
        str += " (assignedLabels: " + assignedLabels + ")";
        str += " (mode: " + mode + ")";
        str += " (nodeDescription: " + nodeDescription + ")";
        str += " (nodeName: " + nodeName + ")";
        str += " (numExecutors: " + numExecutors + ")";
        str += " (description: " + description + ")";
        str += " (jobs: " + jobs + ")";
        str += " (primaryView: " + primaryView + ")";
        str += " (quietingDown: " + quietingDown + ")";
        str += " (slaveAgentPort: " + slaveAgentPort + ")";
        str += " (unlabeledLoad: " + unlabeledLoad + ")";
        str += " (useCrumbs: " + useCrumbs + ")";
        str += " (useSecurity: " + useSecurity + ")";
        str += " (views: " + views + ")";
        return str;
    }

}

}
