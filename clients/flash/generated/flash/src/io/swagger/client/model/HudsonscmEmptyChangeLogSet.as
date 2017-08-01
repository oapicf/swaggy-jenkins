package io.swagger.client.model {


    [XmlRootNode(name="HudsonscmEmptyChangeLogSet")]
    public class HudsonscmEmptyChangeLogSet {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="kind")]
        public var kind: String = null;

    public function toString(): String {
        var str: String = "HudsonscmEmptyChangeLogSet: ";
        str += " (class: " + class + ")";
        str += " (kind: " + kind + ")";
        return str;
    }

}

}
