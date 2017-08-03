package io.swagger.client.model {

import io.swagger.client.model.Link;

    [XmlRootNode(name="InputStepImpllinks")]
    public class InputStepImpllinks {
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "InputStepImpllinks: ";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
