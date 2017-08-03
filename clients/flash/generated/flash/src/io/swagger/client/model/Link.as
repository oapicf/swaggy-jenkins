package io.swagger.client.model {


    [XmlRootNode(name="Link")]
    public class Link {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="href")]
        public var href: String = null;

    public function toString(): String {
        var str: String = "Link: ";
        str += " (class: " + class + ")";
        str += " (href: " + href + ")";
        return str;
    }

}

}
