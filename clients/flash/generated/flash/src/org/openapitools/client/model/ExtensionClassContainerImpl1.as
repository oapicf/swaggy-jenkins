package org.openapitools.client.model {

import org.openapitools.client.model.ExtensionClassContainerImpl1links;
import org.openapitools.client.model.ExtensionClassContainerImpl1map;

    [XmlRootNode(name="ExtensionClassContainerImpl1")]
    public class ExtensionClassContainerImpl1 {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: ExtensionClassContainerImpl1links = NaN;
                [XmlElement(name="map")]
        public var map: ExtensionClassContainerImpl1map = NaN;

    public function toString(): String {
        var str: String = "ExtensionClassContainerImpl1: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (map: " + map + ")";
        return str;
    }

}

}
