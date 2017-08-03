package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineRun;

    public class PipelineRunsList implements ListWrapper {
        // This declaration below of _PipelineRuns_obj_class is to force flash compiler to include this class
        private var _pipelineRuns_obj_class: io.swagger.client.model.PipelineRuns = null;
        [XmlElements(name="pipelineRuns", type="io.swagger.client.model.PipelineRuns")]
        public var pipelineRuns: Array = new Array();

        public function getList(): Array{
            return pipelineRuns;
        }

}

}
