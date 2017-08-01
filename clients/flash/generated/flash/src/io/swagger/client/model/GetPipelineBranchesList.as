package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GetPipelineBranchesitem;

    public class GetPipelineBranchesList implements ListWrapper {
        // This declaration below of _getPipelineBranches_obj_class is to force flash compiler to include this class
        private var _getPipelineBranches_obj_class: io.swagger.client.model.GetPipelineBranches = null;
        [XmlElements(name="getPipelineBranches", type="io.swagger.client.model.GetPipelineBranches")]
        public var getPipelineBranches: Array = new Array();

        public function getList(): Array{
            return getPipelineBranches;
        }

}

}
