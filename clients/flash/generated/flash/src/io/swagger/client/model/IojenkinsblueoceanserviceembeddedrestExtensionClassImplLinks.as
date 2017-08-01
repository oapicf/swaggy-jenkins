package io.swagger.client.model {

import io.swagger.client.model.IojenkinsblueoceanresthalLink;

    [XmlRootNode(name="IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks")]
    public class IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks {
                [XmlElement(name="self")]
        public var self: IojenkinsblueoceanresthalLink = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks: ";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
