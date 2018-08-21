package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineRunNode;

    public class PipelineRunNodesList implements ListWrapper {
        // This declaration below of _PipelineRunNodes_obj_class is to force flash compiler to include this class
        private var _pipelineRunNodes_obj_class: org.openapitools.client.model.PipelineRunNodes = null;
        [XmlElements(name="pipelineRunNodes", type="org.openapitools.client.model.PipelineRunNodes")]
        public var pipelineRunNodes: Array = new Array();

        public function getList(): Array{
            return pipelineRunNodes;
        }

}

}
