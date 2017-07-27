package io.swagger.client.model {


    [XmlRootNode(name="IojenkinsblueoceanrestimplpipelineBranchImplPermissions")]
    public class IojenkinsblueoceanrestimplpipelineBranchImplPermissions {
                [XmlElement(name="create")]
        public var create: Boolean = false;
                [XmlElement(name="read")]
        public var read: Boolean = false;
                [XmlElement(name="start")]
        public var start: Boolean = false;
                [XmlElement(name="stop")]
        public var stop: Boolean = false;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanrestimplpipelineBranchImplPermissions: ";
        str += " (create: " + create + ")";
        str += " (read: " + read + ")";
        str += " (start: " + start + ")";
        str += " (stop: " + stop + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
