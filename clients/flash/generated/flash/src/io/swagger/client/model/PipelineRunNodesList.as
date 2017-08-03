package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineRunNode;

    public class PipelineRunNodesList implements ListWrapper {
        // This declaration below of _PipelineRunNodes_obj_class is to force flash compiler to include this class
        private var _pipelineRunNodes_obj_class: io.swagger.client.model.PipelineRunNodes = null;
        [XmlElements(name="pipelineRunNodes", type="io.swagger.client.model.PipelineRunNodes")]
        public var pipelineRunNodes: Array = new Array();

        public function getList(): Array{
            return pipelineRunNodes;
        }

}

}
