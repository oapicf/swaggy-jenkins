package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GetPipelineBranchesitemLatestRun;
import io.swagger.client.model.GetPipelineBranchesitemPullRequest;

    public class GetPipelineBranchesitemList implements ListWrapper {
        // This declaration below of _getPipelineBranchesitem_obj_class is to force flash compiler to include this class
        private var _getPipelineBranchesitem_obj_class: io.swagger.client.model.GetPipelineBranchesitem = null;
        [XmlElements(name="getPipelineBranchesitem", type="io.swagger.client.model.GetPipelineBranchesitem")]
        public var getPipelineBranchesitem: Array = new Array();

        public function getList(): Array{
            return getPipelineBranchesitem;
        }

}

}
