package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.InputStepImpl;
import io.swagger.client.model.PipelineStepImpllinks;

    public class PipelineStepImplList implements ListWrapper {
        // This declaration below of _PipelineStepImpl_obj_class is to force flash compiler to include this class
        private var _pipelineStepImpl_obj_class: io.swagger.client.model.PipelineStepImpl = null;
        [XmlElements(name="pipelineStepImpl", type="io.swagger.client.model.PipelineStepImpl")]
        public var pipelineStepImpl: Array = new Array();

        public function getList(): Array{
            return pipelineStepImpl;
        }

}

}
