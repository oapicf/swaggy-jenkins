package io.swagger.client.model {


    [XmlRootNode(name="SwaggyjenkinsPipelineLatestRunartifacts")]
    public class SwaggyjenkinsPipelineLatestRunartifacts {
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="size")]
        public var size: Number = NaN;
                [XmlElement(name="url")]
        public var url: String = null;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "SwaggyjenkinsPipelineLatestRunartifacts: ";
        str += " (name: " + name + ")";
        str += " (size: " + size + ")";
        str += " (url: " + url + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
