package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineBranchesitem;

    public class PipelineBranchesList implements ListWrapper {
        // This declaration below of _PipelineBranches_obj_class is to force flash compiler to include this class
        private var _pipelineBranches_obj_class: io.swagger.client.model.PipelineBranches = null;
        [XmlElements(name="pipelineBranches", type="io.swagger.client.model.PipelineBranches")]
        public var pipelineBranches: Array = new Array();

        public function getList(): Array{
            return pipelineBranches;
        }

}

}
