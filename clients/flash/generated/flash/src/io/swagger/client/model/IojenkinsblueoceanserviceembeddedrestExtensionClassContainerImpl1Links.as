package io.swagger.client.model {

import io.swagger.client.model.IojenkinsblueoceanresthalLink;

    [XmlRootNode(name="IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links")]
    public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links {
                [XmlElement(name="self")]
        public var self: IojenkinsblueoceanresthalLink = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links: ";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
