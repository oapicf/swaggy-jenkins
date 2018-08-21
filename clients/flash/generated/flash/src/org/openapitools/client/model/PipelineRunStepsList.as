package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GenericResource;

    public class PipelineRunStepsList implements ListWrapper {
        // This declaration below of _PipelineRunSteps_obj_class is to force flash compiler to include this class
        private var _pipelineRunSteps_obj_class: org.openapitools.client.model.PipelineRunSteps = null;
        [XmlElements(name="pipelineRunSteps", type="org.openapitools.client.model.PipelineRunSteps")]
        public var pipelineRunSteps: Array = new Array();

        public function getList(): Array{
            return pipelineRunSteps;
        }

}

}
