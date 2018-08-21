package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineRunartifacts;

    public class PipelineRunList implements ListWrapper {
        // This declaration below of _PipelineRun_obj_class is to force flash compiler to include this class
        private var _pipelineRun_obj_class: org.openapitools.client.model.PipelineRun = null;
        [XmlElements(name="pipelineRun", type="org.openapitools.client.model.PipelineRun")]
        public var pipelineRun: Array = new Array();

        public function getList(): Array{
            return pipelineRun;
        }

}

}
