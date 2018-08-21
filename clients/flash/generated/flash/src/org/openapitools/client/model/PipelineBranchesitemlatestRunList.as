package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class PipelineBranchesitemlatestRunList implements ListWrapper {
        // This declaration below of _PipelineBranchesitemlatestRun_obj_class is to force flash compiler to include this class
        private var _pipelineBranchesitemlatestRun_obj_class: org.openapitools.client.model.PipelineBranchesitemlatestRun = null;
        [XmlElements(name="pipelineBranchesitemlatestRun", type="org.openapitools.client.model.PipelineBranchesitemlatestRun")]
        public var pipelineBranchesitemlatestRun: Array = new Array();

        public function getList(): Array{
            return pipelineBranchesitemlatestRun;
        }

}

}
