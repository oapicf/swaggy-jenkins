package org.openapitools.client.model {


    [XmlRootNode(name="EmptyChangeLogSet")]
    public class EmptyChangeLogSet {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="kind")]
        public var kind: String = null;

    public function toString(): String {
        var str: String = "EmptyChangeLogSet: ";
        str += " (class: " + class + ")";
        str += " (kind: " + kind + ")";
        return str;
    }

}

}
