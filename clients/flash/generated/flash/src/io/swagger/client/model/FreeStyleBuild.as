package io.swagger.client.model {

import io.swagger.client.model.CauseAction;
import io.swagger.client.model.EmptyChangeLogSet;

    [XmlRootNode(name="FreeStyleBuild")]
    public class FreeStyleBuild {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="number")]
        public var number: Number = NaN;
                [XmlElement(name="url")]
        public var url: String = null;
                // This declaration below of _actions_obj_class is to force flash compiler to include this class
        private var _actions_obj_class: Array = null;
        [XmlElementWrapper(name="actions")]
        [XmlElements(name="actions", type="Array")]
                public var actions: Array = new Array();
                [XmlElement(name="building")]
        public var building: Boolean = false;
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="duration")]
        public var duration: Number = NaN;
                [XmlElement(name="estimatedDuration")]
        public var estimatedDuration: Number = NaN;
                [XmlElement(name="executor")]
        public var executor: String = null;
                [XmlElement(name="fullDisplayName")]
        public var fullDisplayName: String = null;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="keepLog")]
        public var keepLog: Boolean = false;
                [XmlElement(name="queueId")]
        public var queueId: Number = NaN;
                [XmlElement(name="result")]
        public var result: String = null;
                [XmlElement(name="timestamp")]
        public var timestamp: Number = NaN;
                [XmlElement(name="builtOn")]
        public var builtOn: String = null;
                [XmlElement(name="changeSet")]
        public var changeSet: EmptyChangeLogSet = NaN;

    public function toString(): String {
        var str: String = "FreeStyleBuild: ";
        str += " (class: " + class + ")";
        str += " (number: " + number + ")";
        str += " (url: " + url + ")";
        str += " (actions: " + actions + ")";
        str += " (building: " + building + ")";
        str += " (description: " + description + ")";
        str += " (displayName: " + displayName + ")";
        str += " (duration: " + duration + ")";
        str += " (estimatedDuration: " + estimatedDuration + ")";
        str += " (executor: " + executor + ")";
        str += " (fullDisplayName: " + fullDisplayName + ")";
        str += " (id: " + id + ")";
        str += " (keepLog: " + keepLog + ")";
        str += " (queueId: " + queueId + ")";
        str += " (result: " + result + ")";
        str += " (timestamp: " + timestamp + ")";
        str += " (builtOn: " + builtOn + ")";
        str += " (changeSet: " + changeSet + ")";
        return str;
    }

}

}
