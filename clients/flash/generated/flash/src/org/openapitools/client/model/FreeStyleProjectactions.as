package org.openapitools.client.model {


    [XmlRootNode(name="FreeStyleProjectactions")]
    public class FreeStyleProjectactions {
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "FreeStyleProjectactions: ";
        str += " (class: " + class + ")";
        return str;
    }

}

}
