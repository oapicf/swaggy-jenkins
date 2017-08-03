package io.swagger.client.model {


    [XmlRootNode(name="AllView")]
    public class AllView {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="url")]
        public var url: String = null;

    public function toString(): String {
        var str: String = "AllView: ";
        str += " (class: " + class + ")";
        str += " (name: " + name + ")";
        str += " (url: " + url + ")";
        return str;
    }

}

}
