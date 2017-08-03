package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PipelineRunartifactsList implements ListWrapper {
        // This declaration below of _PipelineRunartifacts_obj_class is to force flash compiler to include this class
        private var _pipelineRunartifacts_obj_class: io.swagger.client.model.PipelineRunartifacts = null;
        [XmlElements(name="pipelineRunartifacts", type="io.swagger.client.model.PipelineRunartifacts")]
        public var pipelineRunartifacts: Array = new Array();

        public function getList(): Array{
            return pipelineRunartifacts;
        }

}

}
