package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineRun;

    public class PipelineRunsList implements ListWrapper {
        // This declaration below of _PipelineRuns_obj_class is to force flash compiler to include this class
        private var _pipelineRuns_obj_class: org.openapitools.client.model.PipelineRuns = null;
        [XmlElements(name="pipelineRuns", type="org.openapitools.client.model.PipelineRuns")]
        public var pipelineRuns: Array = new Array();

        public function getList(): Array{
            return pipelineRuns;
        }

}

}
