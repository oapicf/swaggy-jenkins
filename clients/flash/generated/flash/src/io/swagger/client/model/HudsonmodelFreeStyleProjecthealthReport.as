package io.swagger.client.model {


    [XmlRootNode(name="HudsonmodelFreeStyleProjecthealthReport")]
    public class HudsonmodelFreeStyleProjecthealthReport {
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="iconClassName")]
        public var iconClassName: String = null;
                [XmlElement(name="iconUrl")]
        public var iconUrl: String = null;
                [XmlElement(name="score")]
        public var score: Number = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "HudsonmodelFreeStyleProjecthealthReport: ";
        str += " (description: " + description + ")";
        str += " (iconClassName: " + iconClassName + ")";
        str += " (iconUrl: " + iconUrl + ")";
        str += " (score: " + score + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
