package io.swagger.client.model {


    [XmlRootNode(name="PipelineFolderImpl")]
    public class PipelineFolderImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="fullName")]
        public var fullName: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="organization")]
        public var organization: String = null;
                [XmlElement(name="numberOfFolders")]
        public var numberOfFolders: Number = NaN;
                [XmlElement(name="numberOfPipelines")]
        public var numberOfPipelines: Number = NaN;

    public function toString(): String {
        var str: String = "PipelineFolderImpl: ";
        str += " (class: " + class + ")";
        str += " (displayName: " + displayName + ")";
        str += " (fullName: " + fullName + ")";
        str += " (name: " + name + ")";
        str += " (organization: " + organization + ")";
        str += " (numberOfFolders: " + numberOfFolders + ")";
        str += " (numberOfPipelines: " + numberOfPipelines + ")";
        return str;
    }

}

}
