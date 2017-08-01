package io.swagger.client.model {


    [XmlRootNode(name="HudsonsecuritycsrfDefaultCrumbIssuer")]
    public class HudsonsecuritycsrfDefaultCrumbIssuer {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="crumb")]
        public var crumb: String = null;
                [XmlElement(name="crumbRequestField")]
        public var crumbRequestField: String = null;

    public function toString(): String {
        var str: String = "HudsonsecuritycsrfDefaultCrumbIssuer: ";
        str += " (class: " + class + ")";
        str += " (crumb: " + crumb + ")";
        str += " (crumbRequestField: " + crumbRequestField + ")";
        return str;
    }

}

}
