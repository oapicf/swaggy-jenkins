package org.openapitools.client.model {

import org.openapitools.client.model.GithubRepositorylinks;
import org.openapitools.client.model.GithubRepositorypermissions;

    [XmlRootNode(name="GithubRepository")]
    public class GithubRepository {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: GithubRepositorylinks = NaN;
                [XmlElement(name="defaultBranch")]
        public var defaultBranch: String = null;
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="permissions")]
        public var permissions: GithubRepositorypermissions = NaN;
                [XmlElement(name="private")]
        public var private: Boolean = false;
                [XmlElement(name="fullName")]
        public var fullName: String = null;

    public function toString(): String {
        var str: String = "GithubRepository: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (defaultBranch: " + defaultBranch + ")";
        str += " (description: " + description + ")";
        str += " (name: " + name + ")";
        str += " (permissions: " + permissions + ")";
        str += " (private: " + private + ")";
        str += " (fullName: " + fullName + ")";
        return str;
    }

}

}
