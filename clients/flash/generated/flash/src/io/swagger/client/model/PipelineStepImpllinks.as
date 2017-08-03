package io.swagger.client.model {

import io.swagger.client.model.Link;

    [XmlRootNode(name="PipelineStepImpllinks")]
    public class PipelineStepImpllinks {
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="actions")]
        public var actions: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "PipelineStepImpllinks: ";
        str += " (self: " + self + ")";
        str += " (actions: " + actions + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
