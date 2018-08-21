package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineStepImpl;

    public class PipelineRunNodeStepsList implements ListWrapper {
        // This declaration below of _PipelineRunNodeSteps_obj_class is to force flash compiler to include this class
        private var _pipelineRunNodeSteps_obj_class: org.openapitools.client.model.PipelineRunNodeSteps = null;
        [XmlElements(name="pipelineRunNodeSteps", type="org.openapitools.client.model.PipelineRunNodeSteps")]
        public var pipelineRunNodeSteps: Array = new Array();

        public function getList(): Array{
            return pipelineRunNodeSteps;
        }

}

}
