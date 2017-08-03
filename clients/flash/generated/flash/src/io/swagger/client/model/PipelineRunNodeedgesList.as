package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PipelineRunNodeedgesList implements ListWrapper {
        // This declaration below of _PipelineRunNodeedges_obj_class is to force flash compiler to include this class
        private var _pipelineRunNodeedges_obj_class: io.swagger.client.model.PipelineRunNodeedges = null;
        [XmlElements(name="pipelineRunNodeedges", type="io.swagger.client.model.PipelineRunNodeedges")]
        public var pipelineRunNodeedges: Array = new Array();

        public function getList(): Array{
            return pipelineRunNodeedges;
        }

}

}
