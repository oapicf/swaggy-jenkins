package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineImpllinks;

    public class PipelineImplList implements ListWrapper {
        // This declaration below of _PipelineImpl_obj_class is to force flash compiler to include this class
        private var _pipelineImpl_obj_class: io.swagger.client.model.PipelineImpl = null;
        [XmlElements(name="pipelineImpl", type="io.swagger.client.model.PipelineImpl")]
        public var pipelineImpl: Array = new Array();

        public function getList(): Array{
            return pipelineImpl;
        }

}

}
