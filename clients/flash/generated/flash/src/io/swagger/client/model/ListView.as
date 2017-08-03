package io.swagger.client.model {

import io.swagger.client.model.FreeStyleProject;

    [XmlRootNode(name="ListView")]
    public class ListView {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="description")]
        public var description: String = null;
                // This declaration below of _jobs_obj_class is to force flash compiler to include this class
        private var _jobs_obj_class: Array = null;
        [XmlElementWrapper(name="jobs")]
        [XmlElements(name="jobs", type="Array")]
                public var jobs: Array = new Array();
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="url")]
        public var url: String = null;

    public function toString(): String {
        var str: String = "ListView: ";
        str += " (class: " + class + ")";
        str += " (description: " + description + ")";
        str += " (jobs: " + jobs + ")";
        str += " (name: " + name + ")";
        str += " (url: " + url + ")";
        return str;
    }

}

}
