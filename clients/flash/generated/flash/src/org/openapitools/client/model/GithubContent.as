package org.openapitools.client.model {


    [XmlRootNode(name="GithubContent")]
    public class GithubContent {
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="sha")]
        public var sha: String = null;
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="repo")]
        public var repo: String = null;
                [XmlElement(name="size")]
        public var size: Number = 0;
                [XmlElement(name="owner")]
        public var owner: String = null;
                [XmlElement(name="path")]
        public var path: String = null;
                [XmlElement(name="base64Data")]
        public var base64Data: String = null;

    public function toString(): String {
        var str: String = "GithubContent: ";
        str += " (name: " + name + ")";
        str += " (sha: " + sha + ")";
        str += " (class: " + class + ")";
        str += " (repo: " + repo + ")";
        str += " (size: " + size + ")";
        str += " (owner: " + owner + ")";
        str += " (path: " + path + ")";
        str += " (base64Data: " + base64Data + ")";
        return str;
    }

}

}
