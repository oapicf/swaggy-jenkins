package io.swagger.client.model {

import io.swagger.client.model.Link;

    [XmlRootNode(name="PipelineImpllinks")]
    public class PipelineImpllinks {
                [XmlElement(name="runs")]
        public var runs: Link = NaN;
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="queue")]
        public var queue: Link = NaN;
                [XmlElement(name="actions")]
        public var actions: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "PipelineImpllinks: ";
        str += " (runs: " + runs + ")";
        str += " (self: " + self + ")";
        str += " (queue: " + queue + ")";
        str += " (actions: " + actions + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
