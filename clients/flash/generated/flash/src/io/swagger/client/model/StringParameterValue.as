package io.swagger.client.model {


    [XmlRootNode(name="StringParameterValue")]
    public class StringParameterValue {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="value")]
        public var value: String = null;

    public function toString(): String {
        var str: String = "StringParameterValue: ";
        str += " (class: " + class + ")";
        str += " (name: " + name + ")";
        str += " (value: " + value + ")";
        return str;
    }

}

}
