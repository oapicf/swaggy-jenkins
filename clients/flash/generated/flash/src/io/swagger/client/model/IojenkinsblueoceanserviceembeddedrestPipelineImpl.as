package io.swagger.client.model {


    [XmlRootNode(name="IojenkinsblueoceanserviceembeddedrestPipelineImpl")]
    public class IojenkinsblueoceanserviceembeddedrestPipelineImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="estimatedDurationInMillis")]
        public var estimatedDurationInMillis: Number = NaN;
                [XmlElement(name="fullName")]
        public var fullName: String = null;
                [XmlElement(name="latestRun")]
        public var latestRun: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="organization")]
        public var organization: String = null;
                [XmlElement(name="weatherScore")]
        public var weatherScore: Number = NaN;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanserviceembeddedrestPipelineImpl: ";
        str += " (class: " + class + ")";
        str += " (displayName: " + displayName + ")";
        str += " (estimatedDurationInMillis: " + estimatedDurationInMillis + ")";
        str += " (fullName: " + fullName + ")";
        str += " (latestRun: " + latestRun + ")";
        str += " (name: " + name + ")";
        str += " (organization: " + organization + ")";
        str += " (weatherScore: " + weatherScore + ")";
        return str;
    }

}

}
