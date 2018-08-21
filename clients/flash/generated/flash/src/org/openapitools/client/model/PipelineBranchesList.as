package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineBranchesitem;

    public class PipelineBranchesList implements ListWrapper {
        // This declaration below of _PipelineBranches_obj_class is to force flash compiler to include this class
        private var _pipelineBranches_obj_class: org.openapitools.client.model.PipelineBranches = null;
        [XmlElements(name="pipelineBranches", type="org.openapitools.client.model.PipelineBranches")]
        public var pipelineBranches: Array = new Array();

        public function getList(): Array{
            return pipelineBranches;
        }

}

}
