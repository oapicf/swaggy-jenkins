package org.openapitools.client.model {

import org.openapitools.client.model.GithubContent;

    [XmlRootNode(name="GithubFile")]
    public class GithubFile {
                [XmlElement(name="content")]
        public var content: GithubContent = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GithubFile: ";
        str += " (content: " + content + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
