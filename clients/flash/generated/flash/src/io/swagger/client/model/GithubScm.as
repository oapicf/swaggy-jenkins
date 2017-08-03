package io.swagger.client.model {

import io.swagger.client.model.GithubScmlinks;

    [XmlRootNode(name="GithubScm")]
    public class GithubScm {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: GithubScmlinks = NaN;
                [XmlElement(name="credentialId")]
        public var credentialId: String = null;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="uri")]
        public var uri: String = null;

    public function toString(): String {
        var str: String = "GithubScm: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (credentialId: " + credentialId + ")";
        str += " (id: " + id + ")";
        str += " (uri: " + uri + ")";
        return str;
    }

}

}
