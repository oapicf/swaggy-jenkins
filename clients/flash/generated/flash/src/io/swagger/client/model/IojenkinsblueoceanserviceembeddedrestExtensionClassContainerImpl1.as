package io.swagger.client.model {

import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links;
import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map;

    [XmlRootNode(name="IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1")]
    public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links = NaN;
                [XmlElement(name="map")]
        public var map: IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map = NaN;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (map: " + map + ")";
        return str;
    }

}

}
