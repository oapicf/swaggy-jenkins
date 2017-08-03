package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class PipelineImpllinksList implements ListWrapper {
        // This declaration below of _PipelineImpllinks_obj_class is to force flash compiler to include this class
        private var _pipelineImpllinks_obj_class: io.swagger.client.model.PipelineImpllinks = null;
        [XmlElements(name="pipelineImpllinks", type="io.swagger.client.model.PipelineImpllinks")]
        public var pipelineImpllinks: Array = new Array();

        public function getList(): Array{
            return pipelineImpllinks;
        }

}

}
