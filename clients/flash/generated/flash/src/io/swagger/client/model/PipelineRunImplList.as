package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineRunImpllinks;

    public class PipelineRunImplList implements ListWrapper {
        // This declaration below of _PipelineRunImpl_obj_class is to force flash compiler to include this class
        private var _pipelineRunImpl_obj_class: io.swagger.client.model.PipelineRunImpl = null;
        [XmlElements(name="pipelineRunImpl", type="io.swagger.client.model.PipelineRunImpl")]
        public var pipelineRunImpl: Array = new Array();

        public function getList(): Array{
            return pipelineRunImpl;
        }

}

}
