package org.openapitools.client.model {


    [XmlRootNode(name="PipelineBranchesitempullRequestlinks")]
    public class PipelineBranchesitempullRequestlinks {
                [XmlElement(name="self")]
        public var self: String = null;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "PipelineBranchesitempullRequestlinks: ";
        str += " (self: " + self + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
