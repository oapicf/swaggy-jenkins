package org.openapitools.client.model {


    [XmlRootNode(name="Body")]
    public class Body {
                [XmlElement(name="favorite")]
        public var favorite: Boolean = false;

    public function toString(): String {
        var str: String = "Body: ";
        str += " (favorite: " + favorite + ")";
        return str;
    }

}

}
