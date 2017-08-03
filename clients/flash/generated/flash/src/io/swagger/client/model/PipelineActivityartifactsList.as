package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PipelineActivityartifactsList implements ListWrapper {
        // This declaration below of _PipelineActivityartifacts_obj_class is to force flash compiler to include this class
        private var _pipelineActivityartifacts_obj_class: io.swagger.client.model.PipelineActivityartifacts = null;
        [XmlElements(name="pipelineActivityartifacts", type="io.swagger.client.model.PipelineActivityartifacts")]
        public var pipelineActivityartifacts: Array = new Array();

        public function getList(): Array{
            return pipelineActivityartifacts;
        }

}

}
