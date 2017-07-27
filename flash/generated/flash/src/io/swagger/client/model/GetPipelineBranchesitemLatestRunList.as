package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GetPipelineBranchesitemLatestRunList implements ListWrapper {
        // This declaration below of _getPipelineBranchesitem_latestRun_obj_class is to force flash compiler to include this class
        private var _getPipelineBranchesitemLatestRun_obj_class: io.swagger.client.model.GetPipelineBranchesitemLatestRun = null;
        [XmlElements(name="getPipelineBranchesitemLatestRun", type="io.swagger.client.model.GetPipelineBranchesitemLatestRun")]
        public var getPipelineBranchesitemLatestRun: Array = new Array();

        public function getList(): Array{
            return getPipelineBranchesitemLatestRun;
        }

}

}
