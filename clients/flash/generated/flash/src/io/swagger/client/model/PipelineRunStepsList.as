package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GenericResource;

    public class PipelineRunStepsList implements ListWrapper {
        // This declaration below of _PipelineRunSteps_obj_class is to force flash compiler to include this class
        private var _pipelineRunSteps_obj_class: io.swagger.client.model.PipelineRunSteps = null;
        [XmlElements(name="pipelineRunSteps", type="io.swagger.client.model.PipelineRunSteps")]
        public var pipelineRunSteps: Array = new Array();

        public function getList(): Array{
            return pipelineRunSteps;
        }

}

}
