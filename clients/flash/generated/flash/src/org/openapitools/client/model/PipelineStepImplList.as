package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.InputStepImpl;
import org.openapitools.client.model.PipelineStepImpllinks;

    public class PipelineStepImplList implements ListWrapper {
        // This declaration below of _PipelineStepImpl_obj_class is to force flash compiler to include this class
        private var _pipelineStepImpl_obj_class: org.openapitools.client.model.PipelineStepImpl = null;
        [XmlElements(name="pipelineStepImpl", type="org.openapitools.client.model.PipelineStepImpl")]
        public var pipelineStepImpl: Array = new Array();

        public function getList(): Array{
            return pipelineStepImpl;
        }

}

}
