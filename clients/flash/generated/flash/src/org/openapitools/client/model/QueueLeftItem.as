package org.openapitools.client.model {

import org.openapitools.client.model.CauseAction;
import org.openapitools.client.model.FreeStyleBuild;
import org.openapitools.client.model.FreeStyleProject;

    [XmlRootNode(name="QueueLeftItem")]
    public class QueueLeftItem {
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
        public var id: Number = 0;
                [XmlElement(name="inQueueSince")]
        public var inQueueSince: Number = 0;
                [XmlElement(name="params")]
        public var params: String = null;
                [XmlElement(name="stuck")]
        public var stuck: Boolean = false;
                [XmlElement(name="task")]
        public var task: FreeStyleProject = NaN;
                [XmlElement(name="url")]
        public var url: String = null;
                [XmlElement(name="why")]
        public var why: String = null;
                [XmlElement(name="cancelled")]
        public var cancelled: Boolean = false;
                [XmlElement(name="executable")]
        public var executable: FreeStyleBuild = NaN;

    public function toString(): String {
        var str: String = "QueueLeftItem: ";
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
