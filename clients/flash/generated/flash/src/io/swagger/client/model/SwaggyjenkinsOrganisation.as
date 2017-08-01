package io.swagger.client.model {


    [XmlRootNode(name="SwaggyjenkinsOrganisation")]
    public class SwaggyjenkinsOrganisation {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="name")]
        public var name: String = null;

    public function toString(): String {
        var str: String = "SwaggyjenkinsOrganisation: ";
        str += " (class: " + class + ")";
        str += " (name: " + name + ")";
        return str;
    }

}

}
