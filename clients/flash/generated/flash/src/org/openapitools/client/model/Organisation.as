package org.openapitools.client.model {


    [XmlRootNode(name="Organisation")]
    public class Organisation {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="name")]
        public var name: String = null;

    public function toString(): String {
        var str: String = "Organisation: ";
        str += " (class: " + class + ")";
        str += " (name: " + name + ")";
        return str;
    }

}

}
