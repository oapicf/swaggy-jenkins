package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PipelinelatestRunartifactsList implements ListWrapper {
        // This declaration below of _PipelinelatestRunartifacts_obj_class is to force flash compiler to include this class
        private var _pipelinelatestRunartifacts_obj_class: io.swagger.client.model.PipelinelatestRunartifacts = null;
        [XmlElements(name="pipelinelatestRunartifacts", type="io.swagger.client.model.PipelinelatestRunartifacts")]
        public var pipelinelatestRunartifacts: Array = new Array();

        public function getList(): Array{
            return pipelinelatestRunartifacts;
        }

}

}
