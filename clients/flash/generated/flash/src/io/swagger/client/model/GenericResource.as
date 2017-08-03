package io.swagger.client.model {


    [XmlRootNode(name="GenericResource")]
    public class GenericResource {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="durationInMillis")]
        public var durationInMillis: Number = NaN;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="result")]
        public var result: String = null;
                [XmlElement(name="startTime")]
        public var startTime: String = null;

    public function toString(): String {
        var str: String = "GenericResource: ";
        str += " (class: " + class + ")";
        str += " (displayName: " + displayName + ")";
        str += " (durationInMillis: " + durationInMillis + ")";
        str += " (id: " + id + ")";
        str += " (result: " + result + ")";
        str += " (startTime: " + startTime + ")";
        return str;
    }

}

}
