package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineBranchesitempullRequestlinks;

    public class PipelineBranchesitempullRequestList implements ListWrapper {
        // This declaration below of _PipelineBranchesitempullRequest_obj_class is to force flash compiler to include this class
        private var _pipelineBranchesitempullRequest_obj_class: io.swagger.client.model.PipelineBranchesitempullRequest = null;
        [XmlElements(name="pipelineBranchesitempullRequest", type="io.swagger.client.model.PipelineBranchesitempullRequest")]
        public var pipelineBranchesitempullRequest: Array = new Array();

        public function getList(): Array{
            return pipelineBranchesitempullRequest;
        }

}

}
