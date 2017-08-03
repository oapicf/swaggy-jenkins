package io.swagger.client.model {


    [XmlRootNode(name="HudsonassignedLabels")]
    public class HudsonassignedLabels {
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "HudsonassignedLabels: ";
        str += " (class: " + class + ")";
        return str;
    }

}

}
