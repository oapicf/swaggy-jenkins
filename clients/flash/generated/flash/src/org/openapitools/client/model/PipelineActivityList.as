package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineActivityartifacts;

    public class PipelineActivityList implements ListWrapper {
        // This declaration below of _PipelineActivity_obj_class is to force flash compiler to include this class
        private var _pipelineActivity_obj_class: org.openapitools.client.model.PipelineActivity = null;
        [XmlElements(name="pipelineActivity", type="org.openapitools.client.model.PipelineActivity")]
        public var pipelineActivity: Array = new Array();

        public function getList(): Array{
            return pipelineActivity;
        }

}

}
