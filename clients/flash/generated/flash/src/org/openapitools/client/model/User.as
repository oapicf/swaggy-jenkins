package org.openapitools.client.model {


    [XmlRootNode(name="User")]
    public class User {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="fullName")]
        public var fullName: String = null;
                [XmlElement(name="email")]
        public var email: String = null;
                [XmlElement(name="name")]
        public var name: String = null;

    public function toString(): String {
        var str: String = "User: ";
        str += " (class: " + class + ")";
        str += " (id: " + id + ")";
        str += " (fullName: " + fullName + ")";
        str += " (email: " + email + ")";
        str += " (name: " + name + ")";
        return str;
    }

}

}
