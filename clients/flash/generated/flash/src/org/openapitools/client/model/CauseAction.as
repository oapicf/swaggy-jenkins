package org.openapitools.client.model {

import org.openapitools.client.model.CauseUserIdCause;

    [XmlRootNode(name="CauseAction")]
    public class CauseAction {
                [XmlElement(name="_class")]
        public var class: String = null;
                // This declaration below of _causes_obj_class is to force flash compiler to include this class
        private var _causes_obj_class: Array = null;
        [XmlElementWrapper(name="causes")]
        [XmlElements(name="causes", type="Array")]
                public var causes: Array = new Array();

    public function toString(): String {
        var str: String = "CauseAction: ";
        str += " (class: " + class + ")";
        str += " (causes: " + causes + ")";
        return str;
    }

}

}
