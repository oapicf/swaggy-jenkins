package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PipelineBranchesitempullRequestlinksList implements ListWrapper {
        // This declaration below of _PipelineBranchesitempullRequestlinks_obj_class is to force flash compiler to include this class
        private var _pipelineBranchesitempullRequestlinks_obj_class: io.swagger.client.model.PipelineBranchesitempullRequestlinks = null;
        [XmlElements(name="pipelineBranchesitempullRequestlinks", type="io.swagger.client.model.PipelineBranchesitempullRequestlinks")]
        public var pipelineBranchesitempullRequestlinks: Array = new Array();

        public function getList(): Array{
            return pipelineBranchesitempullRequestlinks;
        }

}

}
