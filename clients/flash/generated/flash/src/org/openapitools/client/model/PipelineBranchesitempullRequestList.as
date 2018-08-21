package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineBranchesitempullRequestlinks;

    public class PipelineBranchesitempullRequestList implements ListWrapper {
        // This declaration below of _PipelineBranchesitempullRequest_obj_class is to force flash compiler to include this class
        private var _pipelineBranchesitempullRequest_obj_class: org.openapitools.client.model.PipelineBranchesitempullRequest = null;
        [XmlElements(name="pipelineBranchesitempullRequest", type="org.openapitools.client.model.PipelineBranchesitempullRequest")]
        public var pipelineBranchesitempullRequest: Array = new Array();

        public function getList(): Array{
            return pipelineBranchesitempullRequest;
        }

}

}
