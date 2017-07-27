package io.swagger.client.model {


    [XmlRootNode(name="GetPipelineBranchesitemPullRequestLinks")]
    public class GetPipelineBranchesitemPullRequestLinks {
                [XmlElement(name="self")]
        public var self: String = null;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GetPipelineBranchesitemPullRequestLinks: ";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
