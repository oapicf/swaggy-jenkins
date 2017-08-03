package io.swagger.client.model {

import io.swagger.client.model.HudsonMasterComputerexecutors;
import io.swagger.client.model.HudsonMasterComputermonitorData;
import io.swagger.client.model.Label1;

    [XmlRootNode(name="HudsonMasterComputer")]
    public class HudsonMasterComputer {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                // This declaration below of _executors_obj_class is to force flash compiler to include this class
        private var _executors_obj_class: Array = null;
        [XmlElementWrapper(name="executors")]
        [XmlElements(name="executors", type="Array")]
                public var executors: Array = new Array();
                [XmlElement(name="icon")]
        public var icon: String = null;
                [XmlElement(name="iconClassName")]
        public var iconClassName: String = null;
                [XmlElement(name="idle")]
        public var idle: Boolean = false;
                [XmlElement(name="jnlpAgent")]
        public var jnlpAgent: Boolean = false;
                [XmlElement(name="launchSupported")]
        public var launchSupported: Boolean = false;
                [XmlElement(name="loadStatistics")]
        public var loadStatistics: Label1 = NaN;
                [XmlElement(name="manualLaunchAllowed")]
        public var manualLaunchAllowed: Boolean = false;
                [XmlElement(name="monitorData")]
        public var monitorData: HudsonMasterComputermonitorData = NaN;
                [XmlElement(name="numExecutors")]
        public var numExecutors: Number = NaN;
                [XmlElement(name="offline")]
        public var offline: Boolean = false;
                [XmlElement(name="offlineCause")]
        public var offlineCause: String = null;
                [XmlElement(name="offlineCauseReason")]
        public var offlineCauseReason: String = null;
                [XmlElement(name="temporarilyOffline")]
        public var temporarilyOffline: Boolean = false;

    public function toString(): String {
        var str: String = "HudsonMasterComputer: ";
        str += " (class: " + class + ")";
        str += " (displayName: " + displayName + ")";
        str += " (executors: " + executors + ")";
        str += " (icon: " + icon + ")";
        str += " (iconClassName: " + iconClassName + ")";
        str += " (idle: " + idle + ")";
        str += " (jnlpAgent: " + jnlpAgent + ")";
        str += " (launchSupported: " + launchSupported + ")";
        str += " (loadStatistics: " + loadStatistics + ")";
        str += " (manualLaunchAllowed: " + manualLaunchAllowed + ")";
        str += " (monitorData: " + monitorData + ")";
        str += " (numExecutors: " + numExecutors + ")";
        str += " (offline: " + offline + ")";
        str += " (offlineCause: " + offlineCause + ")";
        str += " (offlineCauseReason: " + offlineCauseReason + ")";
        str += " (temporarilyOffline: " + temporarilyOffline + ")";
        return str;
    }

}

}
