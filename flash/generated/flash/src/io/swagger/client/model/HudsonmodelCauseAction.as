package io.swagger.client.model {

import io.swagger.client.model.HudsonmodelCauseUserIdCause;

    [XmlRootNode(name="HudsonmodelCauseAction")]
    public class HudsonmodelCauseAction {
                [XmlElement(name="_class")]
        public var class: String = null;
                // This declaration below of _causes_obj_class is to force flash compiler to include this class
        private var _causes_obj_class: Array = null;
        [XmlElementWrapper(name="causes")]
        [XmlElements(name="causes", type="Array")]
                public var causes: Array = new Array();

    public function toString(): String {
        var str: String = "HudsonmodelCauseAction: ";
        str += " (class: " + class + ")";
        str += " (causes: " + causes + ")";
        return str;
    }

}

}
