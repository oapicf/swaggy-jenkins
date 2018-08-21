package org.openapitools.client.model {

import org.openapitools.client.model.Link;

    [XmlRootNode(name="PipelineRunImpllinks")]
    public class PipelineRunImpllinks {
                [XmlElement(name="nodes")]
        public var nodes: Link = NaN;
                [XmlElement(name="log")]
        public var log: Link = NaN;
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="actions")]
        public var actions: Link = NaN;
                [XmlElement(name="steps")]
        public var steps: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "PipelineRunImpllinks: ";
        str += " (nodes: " + nodes + ")";
        str += " (log: " + log + ")";
        str += " (self: " + self + ")";
        str += " (actions: " + actions + ")";
        str += " (steps: " + steps + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
