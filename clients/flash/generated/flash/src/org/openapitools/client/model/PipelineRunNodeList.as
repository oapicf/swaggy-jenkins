package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineRunNodeedges;

    public class PipelineRunNodeList implements ListWrapper {
        // This declaration below of _PipelineRunNode_obj_class is to force flash compiler to include this class
        private var _pipelineRunNode_obj_class: org.openapitools.client.model.PipelineRunNode = null;
        [XmlElements(name="pipelineRunNode", type="org.openapitools.client.model.PipelineRunNode")]
        public var pipelineRunNode: Array = new Array();

        public function getList(): Array{
            return pipelineRunNode;
        }

}

}
