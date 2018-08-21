package org.openapitools.client.model {

import org.openapitools.client.model.GithubOrganizationlinks;

    [XmlRootNode(name="GithubOrganization")]
    public class GithubOrganization {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: GithubOrganizationlinks = NaN;
                [XmlElement(name="jenkinsOrganizationPipeline")]
        public var jenkinsOrganizationPipeline: Boolean = false;
                [XmlElement(name="name")]
        public var name: String = null;

    public function toString(): String {
        var str: String = "GithubOrganization: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (jenkinsOrganizationPipeline: " + jenkinsOrganizationPipeline + ")";
        str += " (name: " + name + ")";
        return str;
    }

}

}
