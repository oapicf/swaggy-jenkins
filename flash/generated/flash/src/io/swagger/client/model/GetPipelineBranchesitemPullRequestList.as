package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GetPipelineBranchesitemPullRequestLinks;

    public class GetPipelineBranchesitemPullRequestList implements ListWrapper {
        // This declaration below of _getPipelineBranchesitem_pullRequest_obj_class is to force flash compiler to include this class
        private var _getPipelineBranchesitemPullRequest_obj_class: io.swagger.client.model.GetPipelineBranchesitemPullRequest = null;
        [XmlElements(name="getPipelineBranchesitemPullRequest", type="io.swagger.client.model.GetPipelineBranchesitemPullRequest")]
        public var getPipelineBranchesitemPullRequest: Array = new Array();

        public function getList(): Array{
            return getPipelineBranchesitemPullRequest;
        }

}

}
