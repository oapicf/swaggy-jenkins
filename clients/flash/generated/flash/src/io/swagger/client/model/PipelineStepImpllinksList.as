package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class PipelineStepImpllinksList implements ListWrapper {
        // This declaration below of _PipelineStepImpllinks_obj_class is to force flash compiler to include this class
        private var _pipelineStepImpllinks_obj_class: io.swagger.client.model.PipelineStepImpllinks = null;
        [XmlElements(name="pipelineStepImpllinks", type="io.swagger.client.model.PipelineStepImpllinks")]
        public var pipelineStepImpllinks: Array = new Array();

        public function getList(): Array{
            return pipelineStepImpllinks;
        }

}

}
