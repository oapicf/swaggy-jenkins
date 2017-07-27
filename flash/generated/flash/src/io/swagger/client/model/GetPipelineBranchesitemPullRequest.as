package io.swagger.client.model {

import io.swagger.client.model.GetPipelineBranchesitemPullRequestLinks;

    [XmlRootNode(name="GetPipelineBranchesitemPullRequest")]
    public class GetPipelineBranchesitemPullRequest {
                [XmlElement(name="_links")]
        public var links: GetPipelineBranchesitemPullRequestLinks = NaN;
                [XmlElement(name="author")]
        public var author: String = null;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="title")]
        public var title: String = null;
                [XmlElement(name="url")]
        public var url: String = null;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GetPipelineBranchesitemPullRequest: ";
        str += " (links: " + links + ")";
        str += " (author: " + author + ")";
        str += " (id: " + id + ")";
        str += " (title: " + title + ")";
        str += " (url: " + url + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
