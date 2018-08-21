package org.openapitools.client.model {

import org.openapitools.client.model.Link;

    [XmlRootNode(name="BranchImpllinks")]
    public class BranchImpllinks {
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="actions")]
        public var actions: Link = NaN;
                [XmlElement(name="runs")]
        public var runs: Link = NaN;
                [XmlElement(name="queue")]
        public var queue: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "BranchImpllinks: ";
        str += " (self: " + self + ")";
        str += " (actions: " + actions + ")";
        str += " (runs: " + runs + ")";
        str += " (queue: " + queue + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
