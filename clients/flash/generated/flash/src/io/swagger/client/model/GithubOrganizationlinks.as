package io.swagger.client.model {

import io.swagger.client.model.Link;

    [XmlRootNode(name="GithubOrganizationlinks")]
    public class GithubOrganizationlinks {
                [XmlElement(name="repositories")]
        public var repositories: Link = NaN;
                [XmlElement(name="self")]
        public var self: Link = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GithubOrganizationlinks: ";
        str += " (repositories: " + repositories + ")";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
