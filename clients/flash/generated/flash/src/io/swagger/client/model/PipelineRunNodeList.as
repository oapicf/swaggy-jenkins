package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineRunNodeedges;

    public class PipelineRunNodeList implements ListWrapper {
        // This declaration below of _PipelineRunNode_obj_class is to force flash compiler to include this class
        private var _pipelineRunNode_obj_class: io.swagger.client.model.PipelineRunNode = null;
        [XmlElements(name="pipelineRunNode", type="io.swagger.client.model.PipelineRunNode")]
        public var pipelineRunNode: Array = new Array();

        public function getList(): Array{
            return pipelineRunNode;
        }

}

}
