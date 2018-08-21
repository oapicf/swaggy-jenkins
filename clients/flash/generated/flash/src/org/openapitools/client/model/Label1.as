package org.openapitools.client.model {


    [XmlRootNode(name="Label1")]
    public class Label1 {
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "Label1: ";
        str += " (class: " + class + ")";
        return str;
    }

}

}
