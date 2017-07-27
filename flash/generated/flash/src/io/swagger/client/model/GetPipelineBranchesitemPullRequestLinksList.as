package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GetPipelineBranchesitemPullRequestLinksList implements ListWrapper {
        // This declaration below of _getPipelineBranchesitem_pullRequest__links_obj_class is to force flash compiler to include this class
        private var _getPipelineBranchesitemPullRequestLinks_obj_class: io.swagger.client.model.GetPipelineBranchesitemPullRequestLinks = null;
        [XmlElements(name="getPipelineBranchesitemPullRequestLinks", type="io.swagger.client.model.GetPipelineBranchesitemPullRequestLinks")]
        public var getPipelineBranchesitemPullRequestLinks: Array = new Array();

        public function getList(): Array{
            return getPipelineBranchesitemPullRequestLinks;
        }

}

}
