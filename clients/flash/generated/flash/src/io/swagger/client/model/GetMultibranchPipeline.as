package io.swagger.client.model {


    [XmlRootNode(name="GetMultibranchPipeline")]
    public class GetMultibranchPipeline {
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="estimatedDurationInMillis")]
        public var estimatedDurationInMillis: Number = NaN;
                [XmlElement(name="latestRun")]
        public var latestRun: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="organization")]
        public var organization: String = null;
                [XmlElement(name="weatherScore")]
        public var weatherScore: Number = NaN;
                // This declaration below of _branchNames_obj_class is to force flash compiler to include this class
        private var _branchNames_obj_class: Array = null;
        [XmlElementWrapper(name="branchNames")]
        [XmlElements(name="branchNames", type="Array")]
                public var branchNames: Array = new Array();
                [XmlElement(name="numberOfFailingBranches")]
        public var numberOfFailingBranches: Number = NaN;
                [XmlElement(name="numberOfFailingPullRequests")]
        public var numberOfFailingPullRequests: Number = NaN;
                [XmlElement(name="numberOfSuccessfulBranches")]
        public var numberOfSuccessfulBranches: Number = NaN;
                [XmlElement(name="numberOfSuccessfulPullRequests")]
        public var numberOfSuccessfulPullRequests: Number = NaN;
                [XmlElement(name="totalNumberOfBranches")]
        public var totalNumberOfBranches: Number = NaN;
                [XmlElement(name="totalNumberOfPullRequests")]
        public var totalNumberOfPullRequests: Number = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "GetMultibranchPipeline: ";
        str += " (displayName: " + displayName + ")";
        str += " (estimatedDurationInMillis: " + estimatedDurationInMillis + ")";
        str += " (latestRun: " + latestRun + ")";
        str += " (name: " + name + ")";
        str += " (organization: " + organization + ")";
        str += " (weatherScore: " + weatherScore + ")";
        str += " (branchNames: " + branchNames + ")";
        str += " (numberOfFailingBranches: " + numberOfFailingBranches + ")";
        str += " (numberOfFailingPullRequests: " + numberOfFailingPullRequests + ")";
        str += " (numberOfSuccessfulBranches: " + numberOfSuccessfulBranches + ")";
        str += " (numberOfSuccessfulPullRequests: " + numberOfSuccessfulPullRequests + ")";
        str += " (totalNumberOfBranches: " + totalNumberOfBranches + ")";
        str += " (totalNumberOfPullRequests: " + totalNumberOfPullRequests + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
