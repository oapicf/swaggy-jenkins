package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class PipelineRunImpllinksList implements ListWrapper {
        // This declaration below of _PipelineRunImpllinks_obj_class is to force flash compiler to include this class
        private var _pipelineRunImpllinks_obj_class: io.swagger.client.model.PipelineRunImpllinks = null;
        [XmlElements(name="pipelineRunImpllinks", type="io.swagger.client.model.PipelineRunImpllinks")]
        public var pipelineRunImpllinks: Array = new Array();

        public function getList(): Array{
            return pipelineRunImpllinks;
        }

}

}
