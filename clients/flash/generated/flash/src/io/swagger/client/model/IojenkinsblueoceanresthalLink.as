package io.swagger.client.model {


    [XmlRootNode(name="IojenkinsblueoceanresthalLink")]
    public class IojenkinsblueoceanresthalLink {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="href")]
        public var href: String = null;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanresthalLink: ";
        str += " (class: " + class + ")";
        str += " (href: " + href + ")";
        return str;
    }

}

}
