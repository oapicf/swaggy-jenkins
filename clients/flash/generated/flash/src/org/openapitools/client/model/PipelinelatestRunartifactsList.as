package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class PipelinelatestRunartifactsList implements ListWrapper {
        // This declaration below of _PipelinelatestRunartifacts_obj_class is to force flash compiler to include this class
        private var _pipelinelatestRunartifacts_obj_class: org.openapitools.client.model.PipelinelatestRunartifacts = null;
        [XmlElements(name="pipelinelatestRunartifacts", type="org.openapitools.client.model.PipelinelatestRunartifacts")]
        public var pipelinelatestRunartifacts: Array = new Array();

        public function getList(): Array{
            return pipelinelatestRunartifacts;
        }

}

}
