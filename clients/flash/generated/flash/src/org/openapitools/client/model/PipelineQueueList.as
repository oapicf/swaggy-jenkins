package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.QueueItemImpl;

    public class PipelineQueueList implements ListWrapper {
        // This declaration below of _PipelineQueue_obj_class is to force flash compiler to include this class
        private var _pipelineQueue_obj_class: org.openapitools.client.model.PipelineQueue = null;
        [XmlElements(name="pipelineQueue", type="org.openapitools.client.model.PipelineQueue")]
        public var pipelineQueue: Array = new Array();

        public function getList(): Array{
            return pipelineQueue;
        }

}

}
