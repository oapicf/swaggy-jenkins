package io.swagger.client.model {


    [XmlRootNode(name="DefaultCrumbIssuer")]
    public class DefaultCrumbIssuer {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="crumb")]
        public var crumb: String = null;
                [XmlElement(name="crumbRequestField")]
        public var crumbRequestField: String = null;

    public function toString(): String {
        var str: String = "DefaultCrumbIssuer: ";
        str += " (class: " + class + ")";
        str += " (crumb: " + crumb + ")";
        str += " (crumbRequestField: " + crumbRequestField + ")";
        return str;
    }

}

}
