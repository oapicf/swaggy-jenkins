package org.openapitools.client.model {


    [XmlRootNode(name="UnlabeledLoadStatistics")]
    public class UnlabeledLoadStatistics {
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "UnlabeledLoadStatistics: ";
        str += " (class: " + class + ")";
        return str;
    }

}

}
