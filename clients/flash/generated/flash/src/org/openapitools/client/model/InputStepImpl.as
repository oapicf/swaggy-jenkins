package org.openapitools.client.model {

import org.openapitools.client.model.InputStepImpllinks;
import org.openapitools.client.model.StringParameterDefinition;

    [XmlRootNode(name="InputStepImpl")]
    public class InputStepImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: InputStepImpllinks = NaN;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="message")]
        public var message: String = null;
                [XmlElement(name="ok")]
        public var ok: String = null;
                // This declaration below of _parameters_obj_class is to force flash compiler to include this class
        private var _parameters_obj_class: Array = null;
        [XmlElementWrapper(name="parameters")]
        [XmlElements(name="parameters", type="Array")]
                public var parameters: Array = new Array();
                [XmlElement(name="submitter")]
        public var submitter: String = null;

    public function toString(): String {
        var str: String = "InputStepImpl: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (id: " + id + ")";
        str += " (message: " + message + ")";
        str += " (ok: " + ok + ")";
        str += " (parameters: " + parameters + ")";
        str += " (submitter: " + submitter + ")";
        return str;
    }

}

}
