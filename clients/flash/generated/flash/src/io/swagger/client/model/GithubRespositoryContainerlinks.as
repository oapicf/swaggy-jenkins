package io.swagger.client.model {

import io.swagger.client.model.Link;

    [XmlRootNode(name="GithubRespositoryContainerlinks")]
    public class GithubRespositoryContainerlinks {
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GithubRespositoryContainerlinks: ";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
