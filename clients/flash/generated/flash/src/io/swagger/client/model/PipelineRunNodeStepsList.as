package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineStepImpl;

    public class PipelineRunNodeStepsList implements ListWrapper {
        // This declaration below of _PipelineRunNodeSteps_obj_class is to force flash compiler to include this class
        private var _pipelineRunNodeSteps_obj_class: io.swagger.client.model.PipelineRunNodeSteps = null;
        [XmlElements(name="pipelineRunNodeSteps", type="io.swagger.client.model.PipelineRunNodeSteps")]
        public var pipelineRunNodeSteps: Array = new Array();

        public function getList(): Array{
            return pipelineRunNodeSteps;
        }

}

}
