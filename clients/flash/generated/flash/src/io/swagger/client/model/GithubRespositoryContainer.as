package io.swagger.client.model {

import io.swagger.client.model.GithubRepositories;
import io.swagger.client.model.GithubRespositoryContainerlinks;

    [XmlRootNode(name="GithubRespositoryContainer")]
    public class GithubRespositoryContainer {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: GithubRespositoryContainerlinks = NaN;
                [XmlElement(name="repositories")]
        public var repositories: GithubRepositories = NaN;

    public function toString(): String {
        var str: String = "GithubRespositoryContainer: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (repositories: " + repositories + ")";
        return str;
    }

}

}
