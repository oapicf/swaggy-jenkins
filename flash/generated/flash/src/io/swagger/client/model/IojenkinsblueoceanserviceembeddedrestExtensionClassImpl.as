package io.swagger.client.model {

import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks;

    [XmlRootNode(name="IojenkinsblueoceanserviceembeddedrestExtensionClassImpl")]
    public class IojenkinsblueoceanserviceembeddedrestExtensionClassImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks = NaN;
                // This declaration below of _classes_obj_class is to force flash compiler to include this class
        private var _classes_obj_class: Array = null;
        [XmlElementWrapper(name="classes")]
        [XmlElements(name="classes", type="Array")]
                public var classes: Array = new Array();

    public function toString(): String {
        var str: String = "IojenkinsblueoceanserviceembeddedrestExtensionClassImpl: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (classes: " + classes + ")";
        return str;
    }

}

}
