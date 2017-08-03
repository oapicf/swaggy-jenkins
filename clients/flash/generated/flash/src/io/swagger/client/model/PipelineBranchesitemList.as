package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineBranchesitemlatestRun;
import io.swagger.client.model.PipelineBranchesitempullRequest;

    public class PipelineBranchesitemList implements ListWrapper {
        // This declaration below of _PipelineBranchesitem_obj_class is to force flash compiler to include this class
        private var _pipelineBranchesitem_obj_class: io.swagger.client.model.PipelineBranchesitem = null;
        [XmlElements(name="pipelineBranchesitem", type="io.swagger.client.model.PipelineBranchesitem")]
        public var pipelineBranchesitem: Array = new Array();

        public function getList(): Array{
            return pipelineBranchesitem;
        }

}

}
