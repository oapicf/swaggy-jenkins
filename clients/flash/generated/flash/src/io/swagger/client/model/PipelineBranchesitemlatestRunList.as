package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PipelineBranchesitemlatestRunList implements ListWrapper {
        // This declaration below of _PipelineBranchesitemlatestRun_obj_class is to force flash compiler to include this class
        private var _pipelineBranchesitemlatestRun_obj_class: io.swagger.client.model.PipelineBranchesitemlatestRun = null;
        [XmlElements(name="pipelineBranchesitemlatestRun", type="io.swagger.client.model.PipelineBranchesitemlatestRun")]
        public var pipelineBranchesitemlatestRun: Array = new Array();

        public function getList(): Array{
            return pipelineBranchesitemlatestRun;
        }

}

}
