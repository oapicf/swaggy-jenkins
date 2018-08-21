package org.openapitools.client.model {

import org.openapitools.client.model.Link;

    [XmlRootNode(name="ExtensionClassContainerImpl1links")]
    public class ExtensionClassContainerImpl1links {
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "ExtensionClassContainerImpl1links: ";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
