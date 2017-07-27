package io.swagger.client.model {

import io.swagger.client.model.GetPipelineBranchesitemLatestRun;
import io.swagger.client.model.GetPipelineBranchesitemPullRequest;

    [XmlRootNode(name="GetPipelineBranchesitem")]
    public class GetPipelineBranchesitem {
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="estimatedDurationInMillis")]
        public var estimatedDurationInMillis: Number = NaN;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="weatherScore")]
        public var weatherScore: Number = NaN;
                [XmlElement(name="latestRun")]
        public var latestRun: GetPipelineBranchesitemLatestRun = NaN;
                [XmlElement(name="organization")]
        public var organization: String = null;
                [XmlElement(name="pullRequest")]
        public var pullRequest: GetPipelineBranchesitemPullRequest = NaN;
                [XmlElement(name="totalNumberOfPullRequests")]
        public var totalNumberOfPullRequests: Number = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GetPipelineBranchesitem: ";
        str += " (displayName: " + displayName + ")";
        str += " (estimatedDurationInMillis: " + estimatedDurationInMillis + ")";
        str += " (name: " + name + ")";
        str += " (weatherScore: " + weatherScore + ")";
        str += " (latestRun: " + latestRun + ")";
        str += " (organization: " + organization + ")";
        str += " (pullRequest: " + pullRequest + ")";
        str += " (totalNumberOfPullRequests: " + totalNumberOfPullRequests + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
