package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineBranchesitemlatestRun;
import org.openapitools.client.model.PipelineBranchesitempullRequest;

    public class PipelineBranchesitemList implements ListWrapper {
        // This declaration below of _PipelineBranchesitem_obj_class is to force flash compiler to include this class
        private var _pipelineBranchesitem_obj_class: org.openapitools.client.model.PipelineBranchesitem = null;
        [XmlElements(name="pipelineBranchesitem", type="org.openapitools.client.model.PipelineBranchesitem")]
        public var pipelineBranchesitem: Array = new Array();

        public function getList(): Array{
            return pipelineBranchesitem;
        }

}

}
