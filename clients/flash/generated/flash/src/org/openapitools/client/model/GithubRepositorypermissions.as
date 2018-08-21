package org.openapitools.client.model {


    [XmlRootNode(name="GithubRepositorypermissions")]
    public class GithubRepositorypermissions {
                [XmlElement(name="admin")]
        public var admin: Boolean = false;
                [XmlElement(name="push")]
        public var push: Boolean = false;
                [XmlElement(name="pull")]
        public var pull: Boolean = false;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GithubRepositorypermissions: ";
        str += " (admin: " + admin + ")";
        str += " (push: " + push + ")";
        str += " (pull: " + pull + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
