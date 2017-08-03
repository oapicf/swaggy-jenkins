package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineActivityartifacts;

    public class PipelineActivityList implements ListWrapper {
        // This declaration below of _PipelineActivity_obj_class is to force flash compiler to include this class
        private var _pipelineActivity_obj_class: io.swagger.client.model.PipelineActivity = null;
        [XmlElements(name="pipelineActivity", type="io.swagger.client.model.PipelineActivity")]
        public var pipelineActivity: Array = new Array();

        public function getList(): Array{
            return pipelineActivity;
        }

}

}
