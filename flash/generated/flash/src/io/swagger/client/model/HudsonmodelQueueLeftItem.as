package io.swagger.client.model {

import io.swagger.client.model.HudsonmodelCauseAction;
import io.swagger.client.model.HudsonmodelFreeStyleBuild;
import io.swagger.client.model.HudsonmodelFreeStyleProject;

    [XmlRootNode(name="HudsonmodelQueueLeftItem")]
    public class HudsonmodelQueueLeftItem {
                [XmlElement(name="_class")]
        public var class: String = null;
                // This declaration below of _actions_obj_class is to force flash compiler to include this class
        private var _actions_obj_class: Array = null;
        [XmlElementWrapper(name="actions")]
        [XmlElements(name="actions", type="Array")]
                public var actions: Array = new Array();
                [XmlElement(name="blocked")]
        public var blocked: Boolean = false;
                [XmlElement(name="buildable")]
        public var buildable: Boolean = false;
                [XmlElement(name="id")]
        public var id: Number = NaN;
                [XmlElement(name="inQueueSince")]
        public var inQueueSince: Number = NaN;
                [XmlElement(name="params")]
        public var params: String = null;
                [XmlElement(name="stuck")]
        public var stuck: Boolean = false;
                [XmlElement(name="task")]
        public var task: HudsonmodelFreeStyleProject = NaN;
                [XmlElement(name="url")]
        public var url: String = null;
                [XmlElement(name="why")]
        public var why: String = null;
                [XmlElement(name="cancelled")]
        public var cancelled: Boolean = false;
                [XmlElement(name="executable")]
        public var executable: HudsonmodelFreeStyleBuild = NaN;

    public function toString(): String {
        var str: String = "HudsonmodelQueueLeftItem: ";
        str += " (class: " + class + ")";
        str += " (actions: " + actions + ")";
        str += " (blocked: " + blocked + ")";
        str += " (buildable: " + buildable + ")";
        str += " (id: " + id + ")";
        str += " (inQueueSince: " + inQueueSince + ")";
        str += " (params: " + params + ")";
        str += " (stuck: " + stuck + ")";
        str += " (task: " + task + ")";
        str += " (url: " + url + ")";
        str += " (why: " + why + ")";
        str += " (cancelled: " + cancelled + ")";
        str += " (executable: " + executable + ")";
        return str;
    }

}

}
