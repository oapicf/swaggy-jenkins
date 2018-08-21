package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class PipelineRunartifactsList implements ListWrapper {
        // This declaration below of _PipelineRunartifacts_obj_class is to force flash compiler to include this class
        private var _pipelineRunartifacts_obj_class: org.openapitools.client.model.PipelineRunartifacts = null;
        [XmlElements(name="pipelineRunartifacts", type="org.openapitools.client.model.PipelineRunartifacts")]
        public var pipelineRunartifacts: Array = new Array();

        public function getList(): Array{
            return pipelineRunartifacts;
        }

}

}
