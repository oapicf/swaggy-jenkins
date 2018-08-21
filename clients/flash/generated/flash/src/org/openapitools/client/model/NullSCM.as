package org.openapitools.client.model {


    [XmlRootNode(name="NullSCM")]
    public class NullSCM {
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "NullSCM: ";
        str += " (class: " + class + ")";
        return str;
    }

}

}
