package org.openapitools.client.model {


    [XmlRootNode(name="FreeStyleProjecthealthReport")]
    public class FreeStyleProjecthealthReport {
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="iconClassName")]
        public var iconClassName: String = null;
                [XmlElement(name="iconUrl")]
        public var iconUrl: String = null;
                [XmlElement(name="score")]
        public var score: Number = 0;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "FreeStyleProjecthealthReport: ";
        str += " (description: " + description + ")";
        str += " (iconClassName: " + iconClassName + ")";
        str += " (iconUrl: " + iconUrl + ")";
        str += " (score: " + score + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
